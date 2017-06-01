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

	appid = ""

	if 'params' in channel:
		params = channel['params']
		for param in params:
			if param['name'] == 'lenovo.open.appid':
				appid = param['value']
				break

	modifyStartActivity(decompileDir, appid, packageName)

	return 0


def modifyStartActivity(decompileDir, appid, packageName):
	manifestFile = decompileDir + "/AndroidManifest.xml"
	manifestFile = file_utils.getFullPath(manifestFile)
	ET.register_namespace('android', androidNS)
	key = '{' + androidNS + '}name'
	valKey = '{'+androidNS+'}value'

	tree = ET.parse(manifestFile)
	root = tree.getroot()

	applicationNode = root.find('application')
	if applicationNode is None:
		return

	metaNode = SubElement(applicationNode, 'meta-data')
	metaNode.set(key, 'lenovo:channel')
	metaNode.set(valKey, appid)


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
				if actionNode.attrib[key] == 'android.intent.action.MAIN':
					bFindAction = True
					break

			categoryNodeLst = intentNode.findall('category')
			if categoryNodeLst is None:
				break
			for categoryNode in categoryNodeLst:
				if categoryNode.attrib[key] == 'android.intent.category.LAUNCHER':
					bFindCategory = True
					break

			if bFindAction and bFindCategory:
				bMain = True
				intentNode.remove(actionNode)
				actionNode = SubElement(intentNode, 'action')
				actionNode.set(key, 'lenovoid.MAIN')

				intentNode.remove(categoryNode)
				categoryNode = SubElement(intentNode, 'category')
				categoryNode.set(key, 'android.intent.category.DEFAULT')				

				break

		if bMain:
			activityName = activityNode.attrib[key]
			break

	for activityNode in activityNodeLst:
		name = activityNode.get(key)
		if name == 'com.lenovo.lsf.gamesdk.ui.WelcomeActivity':
			intentNode = SubElement(activityNode, 'intent-filter')
			actionNode = SubElement(intentNode, 'action')
			actionNode.set(key, 'android.intent.action.MAIN')
			categoryNode = SubElement(intentNode, 'category')
			categoryNode.set(key, 'android.intent.category.LAUNCHER')	
	

	receiverNodeLst = applicationNode.findall('receiver')
	if receiverNodeLst != None:
		for receiverNode in receiverNodeLst:
			name = receiverNode.get(key)
			if name == 'com.lenovo.lsf.gamesdk.receiver.GameSdkReceiver':
				intentNodeLst = receiverNode.findall('intent-filter')
				for intentNode in intentNodeLst:
					actionNode = SubElement(intentNode, 'action')
					actionNode.set(key, appid)
					categoryNode = SubElement(intentNode, 'category')
					categoryNode.set(key, packageName)
					break

			elif name == 'com.lenovo.lsf.gamesdk.receiver.GameSdkAndroidLReceiver':
				intentNodeLst = receiverNode.findall('intent-filter')
				for intentNode in intentNodeLst:
					categoryNode = SubElement(intentNode, 'category')
					categoryNode.set(key, packageName)
					break					
        providerNodeLst = applicationNode.findall('provider')
        if providerNodeLst != None:
                for providerNode in providerNodeLst:
                        name = providerNode.get(key)
                        if name == 'android.support.v4.content.FileProvider':
                                providerNode.set('{'+androidNS+'}authorities',packageName+'.fileprovider')
                                break
                                
	tree.write(manifestFile, 'UTF-8')
	return activityName	

