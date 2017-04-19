import file_utils
import log_utils
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


def handleWXPayActivity(channel, decompileDir, packageName, className, oldPackageName):

	sdkDir = decompileDir + '/../sdk/' + channel['sdk']
	if not os.path.exists(sdkDir):
		file_utils.printF("The sdk temp folder is not exists. path:"+sdkDir)
		return 1

	extraFilesPath = sdkDir + '/extraFiles'
	relatedJar = os.path.join(extraFilesPath, 'vivoUnionSDK.jar')
	relatedJar2 = os.path.join(extraFilesPath, 'libammsdk.jar')
	WXPayEntryActivity = os.path.join(extraFilesPath, className+'.java')
	file_utils.modifyFileContent(WXPayEntryActivity, oldPackageName, packageName+".wxapi")

	splitdot = ';'
	if platform.system() == 'Darwin':
		splitdot = ':'

	cmd = '"%sjavac" -source 1.7 -target 1.7 "%s" -classpath "%s"%s"%s"%s"%s"' % (file_utils.getJavaBinDir(), WXPayEntryActivity, relatedJar,splitdot,relatedJar2, splitdot, file_utils.getFullToolPath('android.jar'))

	ret = file_utils.execFormatCmd(cmd)
	if ret:
		return 1

	packageDir = packageName.replace('.', '/')
	srcDir = sdkDir + '/tempDex'
	classDir = srcDir + '/' + packageDir + '/wxapi'

	if not os.path.exists(classDir):
		os.makedirs(classDir)

	sourceClassFilePath = os.path.join(extraFilesPath, className + '.class')
	targetClassFilePath = classDir + '/' + className + '.class'

	file_utils.copy_file(sourceClassFilePath, targetClassFilePath)

	targetDexPath = os.path.join(sdkDir, className+'.dex')

	dxTool = file_utils.getFullToolPath("/lib/dx.jar")

	cmd = file_utils.getJavaCMD() + ' -jar -Xmx512m -Xms512m "%s" --dex --output="%s" "%s"' % (dxTool, targetDexPath, srcDir)



	ret = file_utils.execFormatCmd(cmd)

	if ret:
		return 1

	ret = apk_utils.dex2smali(targetDexPath, decompileDir+'/smali', "baksmali.jar")

	if ret:
		return 1

	return 0


def execute(channel, decompileDir, packageName):

	handleWXPayActivity(channel, decompileDir, packageName, "WXPayEntryActivity", "com.example.paydemo.wxapi")
	handleWXPayActivity(channel, decompileDir, packageName, "WXSPayEntryActivity", "com.example.paydemo.wxapi")


	manifest = decompileDir + '/AndroidManifest.xml'
	ET.register_namespace('android', androidNS)
	name = '{' + androidNS + '}name'
	configChanges = '{' + androidNS + '}configChanges'
	exported = '{' + androidNS + '}exported'
	launchMode = '{'+androidNS+'}launchMode'
	theme = '{'+androidNS+'}theme'
	windowSoftInputMode='{'+androidNS+'}windowSoftInputMode'
	screenOrientation = '{' + androidNS + '}screenOrientation'
	scheme = '{'+androidNS+'}scheme'
	tree = ET.parse(manifest)
	root = tree.getroot()

	appNode = root.find('application')
	if appNode is None:
		return 1

	activityNode = SubElement(appNode, 'activity')
	activityNode.set(name, packageName + '.wxapi.WXPayEntryActivity')
	activityNode.set(exported, 'true')
	activityNode.set(launchMode, 'singleTop')
	activityNode.set(theme, '@style/pop_view')
	activityNode.set(windowSoftInputMode, 'stateAlwaysHidden')

	activityNode2 = SubElement(appNode, 'activity')
	activityNode2.set(name, packageName + '.wxapi.WXSPayEntryActivity')
	activityNode2.set(exported, 'true')
	activityNode2.set(launchMode, 'singleTop')
	activityNode2.set(theme, '@style/pop_view')
	activityNode2.set(windowSoftInputMode, 'stateAlwaysHidden')	


	activityNodeLst = appNode.findall('activity')
	if activityNodeLst is None:
		return
        
	for activityNode in activityNodeLst:
		activityName = activityNode.get(name)
		if activityName == 'com.bbk.payment.tenpay.VivoQQPayResultActivity':
			intentFilters = activityNode.findall('intent-filter')
			for intentNode in intentFilters:
				dataNode = SubElement(intentNode, 'data')
				dataNode.set(scheme, "qwallet"+packageName)
				break

		elif activityName == 'com.bbkmobile.iqoo.payment.tenpay.VivoQQPayResultActivity':
			intentFilters = activityNode.findall('intent-filter')
			for intentNode in intentFilters:
				dataNode = SubElement(intentNode, 'data')
				dataNode.set(scheme, "qwalletvivospay"+packageName)
				break			

	tree.write(manifest, 'UTF-8')

	return 0

