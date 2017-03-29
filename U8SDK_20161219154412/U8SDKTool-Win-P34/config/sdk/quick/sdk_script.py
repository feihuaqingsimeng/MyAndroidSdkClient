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

        tree = ET.parse(manifestFile)
        root = tree.getroot()

        applicationNode = root.find('application')
        if applicationNode is None:
                return 1

        activityNodeLst = applicationNode.findall('activity')
        if activityNodeLst is None:
                return 1

        for activityNode in activityNodeLst:
                if activityNode.attrib[key] == 'com.u8.sdk.SplashActivity':
                        continue
                intentNodeList = activityNode.findall('intent-filter')
                if intentNodeList is None:
                        break
                for intentNode in intentNodeList:
                        bFindAction = False
                        bFindCategory = False
			
                        actionNodeList = intentNode.findall('action')
                        if actionNodeList is None:
                                break
                        for actionNode in actionNodeList:
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
                        intentNode.remove(actionNode)
                        intentNode.remove(categoryNode)
                        actionNode = SubElement(intentNode, 'action')
                        actionNode.set(key, 'com.unity.activity.main.start')
                        categoryNode = SubElement(intentNode,'category')
                        categoryNode.set(key,'android.intent.category.DEFAULT')


                        metaNodeList = activityNode.findall('meta-data')
                        if metaNodeList is None:
                                break
                        for metaNode in metaNodeList:
                                if metaNode.attrib[key] == 'unityplayer.ForwardNativeEventsToDalvik':
                                        metaNode.set('{' + androidNS + '}value','true')
                                        break
                        break

        tree.write(manifestFile, 'UTF-8')

        return 0

