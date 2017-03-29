# -*- coding: utf-8 -*-

'''
自定义XCode工程处理脚本，这个脚本将会应用于所有渠道
'''

# apply_mods
mods = {
}

def post_process(self, project, infoPlist, sdkparams):
	project.enable_bitcode("NO")
	infoPlist["NSAppTransportSecurity"] = { "NSAllowsArbitraryLoads": True }
	#pass
