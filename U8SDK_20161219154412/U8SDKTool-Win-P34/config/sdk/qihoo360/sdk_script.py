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


def changeApplication(decompileDir):

	manifestFile = decompileDir + "/AndroidManifest.xml"
	manifestFile = file_utils.getFullPath(manifestFile)
	ET.register_namespace('android', androidNS)
	key = '{' + androidNS + '}name'

	tree = ET.parse(manifestFile)
	root = tree.getroot()

	applicationNode = root.find('application')
	if applicationNode is None:
		return 1

	applicationNode.set(key, 'com.u8.sdk.QihooProxyApplication')

	tree.write(manifestFile, 'UTF-8')

	return 0	


def execute(channel, decompileDir, packageName):

	sdkDir = decompileDir + '/../sdk/' + channel['sdk']
	if not os.path.exists(sdkDir):
		file_utils.printF("The sdk temp folder is not exists. path:"+sdkDir)
		return 1

	extraFilesPath = sdkDir + '/extraFiles'
	relatedJar = os.path.join(extraFilesPath, '360SDK.jar')
	WXPayEntryActivity = os.path.join(extraFilesPath, 'WXEntryActivity.java')
	file_utils.modifyFileContent(WXPayEntryActivity, 'com.u8.sdk.qh360.wxapi', packageName+".wxapi")


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

	manifest = decompileDir + '/AndroidManifest.xml'
	ET.register_namespace('android', androidNS)
	name = '{' + androidNS + '}name'
	hostKey = '{'+androidNS+'}host'
	configChanges = '{' + androidNS + '}configChanges'
	exported = '{' + androidNS + '}exported'
	screenOrientation = '{' + androidNS + '}screenOrientation'
	tree = ET.parse(manifest)
	root = tree.getroot()

	appNode = root.find('application')
	if appNode is None:
		return 1

	activityNode = SubElement(appNode, 'activity')
	activityNode.set(name, packageName + '.wxapi.WXEntryActivity')
	activityNode.set(configChanges, 'keyboardHidden|orientation')
	activityNode.set(exported, 'true')
	activityNode.set(screenOrientation, 'portrait')


	#append host
	activityNodeLst = appNode.findall('activity')
	if activityNodeLst is not None and len(activityNodeLst) > 0:
		for activityNode in activityNodeLst:
			activityName = activityNode.get(name)
			if activityName == 'com.qihoo.gamecenter.sdk.activity.ContainerActivity':
				intentNodeLst = activityNode.findall('intent-filter')
				if intentNodeLst is not None:
					for itNode in intentNodeLst:
						dataNode = SubElement(itNode, 'data')
						dataNode.set(hostKey, packageName)
						break


	tree.write(manifest, 'UTF-8')

	return 0

