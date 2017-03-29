package com.u8.sdk;

import android.content.Context;
import android.content.res.Configuration;

public class MiProxyApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		
		MiSDK.getInstance().initSDK(U8SDK.getInstance().getApplication(), U8SDK.getInstance().getSDKParams());
		
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
