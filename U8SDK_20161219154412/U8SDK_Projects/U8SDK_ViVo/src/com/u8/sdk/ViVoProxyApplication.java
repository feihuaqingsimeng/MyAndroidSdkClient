package com.u8.sdk;

import com.squareup.leakcanary.LeakCanary;

import android.content.Context;
import android.content.res.Configuration;

public class ViVoProxyApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		// TODO Auto-generated method stub
		LeakCanary.install(U8SDK.getInstance().getApplication());
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
