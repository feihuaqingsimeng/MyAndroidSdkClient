import file_utils
import apk_utils
import os
import os.path
import config_utils
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree
import os
import os.path
import zipfile
import re
import subprocess
import platform
from xml.dom import minidom
import codecs
import sys

androidNS = 'http://schemas.android.com/apk/res/android'


def execute(channel, decompileDir, packageName):

	compileWXEntryActivity(channel, decompileDir, packageName)

	modifyManifest(channel, decompileDir, packageName)

	modifyActivityForSingleTop(channel, decompileDir, packageName)

	generateYSDKConfig(channel, decompileDir, packageName)

	return 0


def generateYSDKConfig(channel, decompileDir, packageName):

	qqAppID = ""
	wxAppID = ""
	offerID = ""
	ysdkUrl = ""

	cfStr = ""

	if 'params' in channel:
		params = channel['params']
		for p in params:
			if p['name'] == 'QQ_APP_ID':
				qqAppID = p['value']
			elif p['name'] == 'WX_APP_ID':
				wxAppID = p['value']
			elif p['name'] == 'OFFER_ID':
				offerID = p['value']
			elif p['name'] == 'YSDK_URL':
				ysdkUrl = p['value']



	cfStr = cfStr + "QQ_APP_ID=" + qqAppID+"\n"
	cfStr = cfStr + "WX_APP_ID=" + wxAppID+"\n"
	cfStr = cfStr + "OFFER_ID=" + offerID+"\n"
	cfStr = cfStr + "YSDK_URL=" + ysdkUrl+"\n"

	filepath = os.path.join(decompileDir, "assets/ysdkconf.ini")
	if os.path.exists(filepath):
		os.remove(filepath)

	f = open(filepath, 'w')
	f.write(cfStr)
	f.close()



def modifyManifest(channel, decompileDir, packageName):
	qqAppID = ""
	wxAppID = ""

	if 'params' in channel:
		params = channel['params']
		for param in params:
			if param['name'] == 'QQ_APP_ID':
				qqAppID = param['value']
			elif param['name'] == 'WX_APP_ID':
				wxAppID = param['value']


	manifest = decompileDir + '/AndroidManifest.xml'
	ET.register_namespace('android', androidNS)
	name = '{' + androidNS + '}name'	
	scheme = '{' + androidNS + '}scheme'
	taskAffinity = '{' + androidNS + '}taskAffinity'
	tree = ET.parse(manifest)
	root = tree.getroot()

	appNode = root.find('application')
	if appNode is None:
		return 1

	activityNodes = appNode.findall('activity')
	if activityNodes != None and len(activityNodes) > 0:
		for activityNode in activityNodes:
			activityName = activityNode.get(name)
			if activityName == 'com.tencent.tauth.AuthActivity':
				intentFilters = activityNode.findall('intent-filter')
				if intentFilters != None and len(intentFilters) > 0:
					for intentNode in intentFilters:
						dataNode = SubElement(intentNode, 'data')
						dataNode.set(scheme, 'tencent'+qqAppID)
						break
			elif activityName == '.wxapi.WXEntryActivity':
				activityNode.set(name, packageName+activityName)
				activityNode.set(taskAffinity, packageName + '.diff')
				intentFilters = activityNode.findall('intent-filter')
				if intentFilters != None and len(intentFilters) > 0:
					for intentNode in intentFilters:
						dataNode = SubElement(intentNode, 'data')
						dataNode.set(scheme, wxAppID)
						break


	tree.write(manifest, 'UTF-8')




def compileWXEntryActivity(channel, decompileDir, packageName):

	sdkDir = decompileDir + '/../sdk/' + channel['sdk']
	if not os.path.exists(sdkDir):
		file_utils.printF("The sdk temp folder is not exists. path:"+sdkDir)
		return 1

	extraFilesPath = sdkDir + '/extraFiles'
	relatedJar = os.path.join(extraFilesPath, 'YSDK.jar')
	WXPayEntryActivity = os.path.join(extraFilesPath, 'WXEntryActivity.java')
	file_utils.modifyFileContent(WXPayEntryActivity, 'com.example.wegame.wxapi', packageName+".wxapi")

	splitdot = ';'
	if platform.system() == 'Darwin':
		splitdot = ':'

	cmd = '"%sjavac" -source 1.7 -target 1.7 "%s" -classpath "%s"%s"%s"' % (file_utils.getJavaBinDir(), WXPayEntryActivity, relatedJar, splitdot, file_utils.getFullToolPath('android.jar'))


	ret = file_utils.execFormatCmd(cmd)
	if ret:
		return 1

	packageDir = packageName.replace('.', '/')
	srcDir = sdkDir + '/tempDex'
	classDir = srcDir + '/' + packageDir + '/wxapi'

	if not os.path.exists(classDir):
		os.makedirs(classDir)

	sourceClassFilePath = os.path.join(extraFilesPath, 'WXEntryActivity.class')
	targetClassFilePath = classDir + '/WXEntryActivity.class'

	file_utils.copy_file(sourceClassFilePath, targetClassFilePath)

	targetDexPath = os.path.join(sdkDir, 'WXEntryActivity.dex')

	dxTool = file_utils.getFullToolPath("/lib/dx.jar")

	cmd = file_utils.getJavaCMD() + ' -jar -Xmx512m -Xms512m "%s" --dex --output="%s" "%s"' % (dxTool, targetDexPath, srcDir)

	ret = file_utils.execFormatCmd(cmd)

	if ret:
		return 1

	ret = apk_utils.dex2smali(targetDexPath, decompileDir+'/smali', "baksmali.jar")

	if ret:
		return 1


def modifyActivityForSingleTop(channel, decompileDir, packageName):
	manifestFile = decompileDir + "/AndroidManifest.xml"
	manifestFile = file_utils.getFullPath(manifestFile)
	ET.register_namespace('android', androidNS)
	key = '{' + androidNS + '}launchMode'
	keyName = '{' + androidNS + '}name'

	tree = ET.parse(manifestFile)
	root = tree.getroot()

	applicationNode = root.find('application')
	if applicationNode is None:
		return 1

	activityNodeLst = applicationNode.findall('activity')
	if activityNodeLst is None:
		return

	activityName = ''

	for activityNode in activityNodeLst:
		bMain = False
		intentNodeLst = activityNode.findall('intent-filter')
		if intentNodeLst is None:
			break

		for intentNode in intentNodeLst:
			bFindAction = False
			bFindCategory = False

			actionNodeLst = intentNode.findall('action')
			if actionNodeLst is None:
				break
			for actionNode in actionNodeLst:
				if actionNode.attrib[keyName] == 'android.intent.action.MAIN':
					bFindAction = True
					break

			categoryNodeLst = intentNode.findall('category')
			if categoryNodeLst is None:
				break
			for categoryNode in categoryNodeLst:
				if categoryNode.attrib[keyName] == 'android.intent.category.LAUNCHER':
					bFindCategory = True
					break

			if bFindAction and bFindCategory:
				bMain = True

				break

		if bMain:
			activityNode.set(key, "singleTop")
			break
	tree.write(manifestFile, 'UTF-8')

	return 0	


	


