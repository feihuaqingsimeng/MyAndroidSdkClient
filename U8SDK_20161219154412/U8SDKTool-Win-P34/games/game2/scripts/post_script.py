#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author xiaohei
# Date 2015-06-18
#
# 如果某个游戏需要统一做一些特殊的工作，那么可以考虑将这些特殊的工作
# 放在这里执行。
# 
# 比如游戏中接入了一个推送插件，推送插件的某个activity的android:name属性
# 需要设置为游戏的包名+Activity名称。插件是接在母包中的
# 
# 而每个渠道SDK的包名又不一样，所以我们需要一个做这个工作的地方
# 
# 虽然每个渠道SDK都需要这个，但是将这个操作放到各个渠道SDK的特殊脚本中执行
# 还是有点不合适。所以，我们定义了这个post_script.py。
# 
# 每个渠道SDK在打包的时候，资源合并完成，渠道SDK自己的特殊化脚本执行完毕之后
# 我们执行post_script.py。来处理该游戏的特殊需求
# 
# 该脚本放在 游戏配置目录下/scripts/post_script.py；比如game1/scripts/post_script.py
#
import file_utils
import apk_utils
import log_utils
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

def execute(game, channel, decompileDir, packageName):

    log_utils.debug("now to execute post_script")

    manifest = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    name = key
    keyVal = '{'+androidNS+'}value'
    pLevel = '{'+androidNS+'}protectionLevel'
    tree = ET.parse(manifest)
    root = tree.getroot()

    appNode = root.find('application')
    if appNode is None:
        return 1


    #设置包名和权限
    log_utils.debug("now to change permission and meta-data")

    permissionLst = root.findall('permission') 

    if permissionLst:
        for p in permissionLst:
            pname = p.get(name)
            if pname == 'com.yxg.juhe.permission.JPUSH_MESSAGE':
                p.set(name, packageName+".permission.JPUSH_MESSAGE")
                break

    upermissionLst = root.findall('uses-permission')
    if upermissionLst:
        for p in upermissionLst:
            pname = p.get(name)
            if pname == 'com.yxg.juhe.permission.JPUSH_MESSAGE':
                p.set(name, packageName+".permission.JPUSH_MESSAGE")
                break

    metaLst = appNode.findall('meta-data')
    if metaLst:
        for p in metaLst:
            pname = p.get(name)
            if pname == 'CASTLE_PACKAGE_NAME':
                p.set(keyVal, packageName)
                break  

        for p in metaLst:
            pname = p.get(name)
            if pname == 'JPUSH_APPKEY':
                appNode.remove(p)

    #设置包名和权限


    #替换包名
    log_utils.debug("now to change packageName")

    activityNodeLst = appNode.findall('activity')
    if activityNodeLst is None:
        return

    for activityNode in activityNodeLst:
        activityName = activityNode.get(name)

        if activityName == 'cn.jpush.android.ui.PushActivity':
            intentFilters = activityNode.findall('intent-filter')
            for intentNode in intentFilters:

                categoryNodeLst = intentNode.findall('category')
                if categoryNodeLst is None:
                    break

                for categoryNode in categoryNodeLst:
                    if categoryNode.attrib[key] == 'com.yxg.juhe':
                        categoryNode.set(key, packageName)
                        break
 

    serviceNodeLst = appNode.findall('service')
    if serviceNodeLst is None:
        return
            
    for serviceNode in serviceNodeLst:
        serviceName = serviceNode.get(name)

        if serviceName == 'cn.jpush.android.service.DaemonService':
            intentFilters = serviceNode.findall('intent-filter')
            for intentNode in intentFilters:
                categoryNodeLst = intentNode.findall('category')
                if categoryNodeLst is None:
                    break

                for categoryNode in categoryNodeLst:
                    if categoryNode.attrib[key] == 'com.yxg.juhe':
                        categoryNode.set(key, packageName)
                        break


    receiverNodeLst = appNode.findall('receiver')
    if receiverNodeLst is None:
        return
            
    for receiverNode in receiverNodeLst:
        receiverName = receiverNode.get(name)

        if receiverName == 'cn.jpush.android.service.PushReceiver':
            intentFilters = receiverNode.findall('intent-filter')
            for intentNode in intentFilters:

                actionNodeLst = intentNode.findall('action')
                if actionNodeLst is None:
                    break

                bFindAction = False
                for actionNode in actionNodeLst:
                    if actionNode.attrib[key] == 'cn.jpush.android.intent.NOTIFICATION_RECEIVED_PROXY':
                        bFindAction = True
                        break

                if bFindAction:   

                    categoryNodeLst = intentNode.findall('category')
                    if categoryNodeLst is None:
                        break

                    for categoryNode in categoryNodeLst:
                        if categoryNode.attrib[key] == 'com.yxg.juhe':
                            categoryNode.set(key, packageName)
                            break


        elif receiverName == 'com.Castle.jpushjar.JPushReceiver':

            intentFilters = receiverNode.findall('intent-filter')
            for intentNode in intentFilters:
              
                categoryNodeLst = intentNode.findall('category')
                if categoryNodeLst is None:
                    break

                for categoryNode in categoryNodeLst:
                    if categoryNode.attrib[key] == 'com.yxg.juhe':
                        categoryNode.set(key, packageName)
                        break
                break                        
                  
    #替换包名结束


    #读取jpush_keys文件中的JPUSH_APPKEY
    log_utils.debug("now to set JPUSH_APPKEY")

    configFile = file_utils.getFullPath('games/'+game['appName']+'/jpush_keys.properties')

    if not os.path.exists(configFile):
        log_utils.debug("jpush_keys file not exists."+configFile)
        return 1

    f = open(configFile, 'r')
    for line in f.readlines():
        item = line.strip().split('=')

        if item[0] == channel['id']:
            metaDataNode = SubElement(appNode, 'meta-data')
            metaDataNode.set(key, 'JPUSH_APPKEY')
            metaDataNode.set(keyVal, item[1])
            break

    f.close()
    #JPUSH_APPKEY处理完毕
    
    tree.write(manifest, 'UTF-8')

    log_utils.debug("post_script execute successfully")

    return 0



