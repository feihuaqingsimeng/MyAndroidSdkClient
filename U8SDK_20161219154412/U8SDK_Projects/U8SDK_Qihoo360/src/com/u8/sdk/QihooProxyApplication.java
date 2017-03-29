package com.u8.sdk;

import android.content.Context;
import android.content.res.Configuration;

import com.qihoo.gamecenter.sdk.matrix.QihooApplication;

public class QihooProxyApplication extends QihooApplication{

	public void onCreate(){
		super.onCreate();
		U8SDK.getInstance().onAppCreate(this);
	}
	
	public void attachBaseContext(Context context){
		super.attachBaseContext(context);
		U8SDK.getInstance().onAppAttachBaseContext(this, context);
	}
	
	public void onConfigurationChanged(Configuration config){
		super.onConfigurationChanged(config);
		U8SDK.getInstance().onConfigurationChanged(config);
	}
	
	public void onTerminate(){
		super.onTerminate();
		U8SDK.getInstance().onTerminate();
	}
	
}
