package com.u8.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;

public class FlymeApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		Log.e("U8SDK", "proxy init......");
		FlymeSDK.getInstance().initSDK(U8SDK.getInstance().getApplication(), U8SDK.getInstance().getSDKParams());
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onProxyTerminate() {
		// TODO Auto-generated method stub
		
	}

}
