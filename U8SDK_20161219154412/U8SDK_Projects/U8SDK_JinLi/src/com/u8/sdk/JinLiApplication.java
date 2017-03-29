package com.u8.sdk;

import android.content.Context;
import android.content.res.Configuration;

/**
 * 金立初始化必须在Application的onCreate方法中
 * 
 */
public class JinLiApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		JinLiSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {

	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {

	}

	@Override
	public void onProxyTerminate() {
		// TODO Auto-generated method stub
		
	}

}
