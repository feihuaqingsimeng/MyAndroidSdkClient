# -*- coding: utf-8 -*-

def post_process(self, project, infoPlist, sdkparams):
	# itools必须在infoPlist中声明支持iPhone竖屏
    infoPlist['UISupportedInterfaceOrientations'] = ['UIInterfaceOrientationLandscapeRight', 'UIInterfaceOrientationLandscapeLeft', 'UIInterfaceOrientationPortrait']
    infoPlist['UISupportedInterfaceOrientations~ipad'] = ['UIInterfaceOrientationLandscapeRight', 'UIInterfaceOrientationLandscapeLeft']