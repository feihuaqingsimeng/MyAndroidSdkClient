import file_utils
import os
import os.path
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
	manifestFile = decompileDir + "/AndroidManifest.xml"
	manifestFile = file_utils.getFullPath(manifestFile)
	ET.register_namespace('android', androidNS)
	key = '{' + androidNS + '}name'
	schemeKey = '{'+androidNS+'}scheme'

	tree = ET.parse(manifestFile)
	root = tree.getroot()

	applicationNode = root.find('application')
	if applicationNode is None:
		return 1

	activityNodeLst = applicationNode.findall('activity')
	if activityNodeLst is None:
		return 1

	for activityNode in activityNodeLst:
		name = activityNode.get(key)
		if name == 'com.baidu.platformsdk.pay.channel.qqwallet.QQPayActivity':
			intentNodes = activityNode.findall('intent-filter')
			if intentNodes is not None and len(intentNodes) > 0:
				for intentNode in intentNodes:
					dataNodes = intentNode.findall('data')
					if dataNodes is not None and len(dataNodes) > 0:
						for dataNode in dataNodes:
							scheme = dataNode.get(schemeKey)
							if scheme.startswith('qwallet'):
								intentNode.remove(dataNode)
								break

					dataNode = SubElement(intentNode, 'data')
					dataNode.set(schemeKey, 'qwallet'+packageName)
					break

		elif name == 'com.baidu.platformsdk.pay.channel.ali.AliPayActivity':
			intentNodes = activityNode.findall('intent-filter')
			if intentNodes is not None and len(intentNodes) > 0:
				for intentNode in intentNodes:
					dataNodes = intentNode.findall('data')
					if dataNodes is not None and len(dataNodes) > 0:
						for dataNode in dataNodes:
							scheme = dataNode.get(schemeKey)
							if scheme.startswith('bdpsdk'):
								intentNode.remove(dataNode)
								break

					dataNode = SubElement(intentNode, 'data')
					dataNode.set(schemeKey, 'bdpsdk'+packageName)
					dataNode.set('{'+androidNS+'}host', "alipay.app")
					dataNode.set('{'+androidNS+'}pathPrefix', "/result")
					break					





	activityNodeLst = applicationNode.findall('provider')

	for activityNode in activityNodeLst:
		name = activityNode.get(key)
		if name == 'com.duoku.platform.download.DownloadProvider':
			activityNode.set('{'+androidNS+'}authorities', packageName)
		elif name == 'mobisocial.omlib.service.OmlibContentProvider':
			activityNode.set('{'+androidNS+'}authorities', packageName+".provider")	
		elif name == 'glrecorder.Initializer':
			activityNode.set('{'+androidNS+'}authorities', packageName+".initializer")				

	tree.write(manifestFile, 'UTF-8')

	return 0

