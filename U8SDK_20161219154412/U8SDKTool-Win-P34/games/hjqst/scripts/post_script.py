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

def execute(game,channel, decompileDir, packageName):
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

	serviceNodeLst = applicationNode.findall('service')
	if serviceNodeLst is None:
		return 1

	for node in serviceNodeLst:
		name = node.get(key)
		if name == 'com.tencent.android.tpush.rpc.XGRemoteService':
			intentNodes = node.findall('intent-filter')
			if intentNodes is not None and len(intentNodes) > 0:
				for intentNode in intentNodes:
					actionNodes = intentNode.findall('action')
					if actionNodes is not None and len(actionNodes) > 0:
						for actionNode in actionNodes:
							action = actionNode.get(key)
							if action.startswith('com.dowan.hjqst.shunwang'):
								intentNode.remove(actionNode)
								break

					actionNode = SubElement(intentNode, 'action')
					actionNode.set(key, packageName+'.PUSH_ACTION')
					break
					
	tree.write(manifestFile, 'UTF-8')

	return 0	
