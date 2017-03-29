import file_utils
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

	modifyManifest(decompileDir, packageName)

	return 0

def modifyManifest(decompileDir, packageName):
	manifestFile = decompileDir + "/AndroidManifest.xml"
	manifestFile = file_utils.getFullPath(manifestFile)
	ET.register_namespace('android', androidNS)
	key = '{' + androidNS + '}name'
	authorityKey = '{'+androidNS+'}authorities'

	tree = ET.parse(manifestFile)
	root = tree.getroot()

	applicationNode = root.find('application')
	if applicationNode is None:
		return

	activityNodeLst = applicationNode.findall('provider')
	if activityNodeLst is None:
		return

	activityName = ''

	for activityNode in activityNodeLst:

		name = activityNode.get(key)
		if name == 'android.support.v4.content.FileProvider':
			activityNode.set(authorityKey, packageName+".installnewtype.provider")
			break

	
	tree.write(manifestFile, 'UTF-8')

	return activityName

