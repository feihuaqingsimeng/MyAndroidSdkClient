package com.u8.sdk.test;

import android.content.Context;
import android.content.res.Configuration;

import com.u8.sdk.IApplicationListener;
import com.u8.sdk.log.Log;

public class GameProxyApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		// TODO 需要在Application的onCreate中的操作，放在这里
		//如果需要获取到原始Application对象，通过 U8SDK.getInstance().getApplication()来获取
		
		Log.d("Game", "On Application Create");
		
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
		// TODO 需要在Application的attachBaseContext中的操作，放在这里
		
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {
		// TODO 需要在Application的onConfigurationChanged中的操作，放在这里
		
	}

	@Override
	public void onProxyTerminate() {
		// TODO 需要在Application的onTerminate中的操作，放在这里
		
	}

}
