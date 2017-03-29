package com.u8.sdk;

import android.content.Context;
import android.content.res.Configuration;

public class BuglyProxyApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		BuglySDK.getInstance().initSDK();
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
