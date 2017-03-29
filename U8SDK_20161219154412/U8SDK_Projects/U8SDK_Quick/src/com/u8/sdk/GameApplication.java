package com.u8.sdk;

import com.quicksdk.QuickSdkApplication;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;

public class GameApplication extends QuickSdkApplication implements IApplicationListener
{

	@Override
	public void onProxyCreate() {
		super.onCreate();
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
		super.attachBaseContext(base);
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {
		super.onConfigurationChanged(config);
	}

	@Override
	public void onProxyTerminate() {
		super.onTerminate();
	}

}
