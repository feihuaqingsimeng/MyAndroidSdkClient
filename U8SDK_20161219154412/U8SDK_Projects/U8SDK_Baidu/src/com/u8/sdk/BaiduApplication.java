package com.u8.sdk;

import java.lang.reflect.Method;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;

/***
 * Baidu SDK 需要自定义的Application,同时需要配置到SDK_Manifest.xml中
 *
 */
public class BaiduApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {

		//BDGameSDK.initApplication(U8SDK.getInstance().getApplication());
		
		try{
			Class<?> clazz = Class.forName("com.baidu.gamesdk.BDGameSDK");
			Method m = clazz.getMethod("initApplication", Application.class);
			m.invoke(null, U8SDK.getInstance().getApplication());
		}catch(Exception e){
			e.printStackTrace();
		}
		
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
