package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;
import android.util.Log;

public class ViVoUser extends U8UserAdapter {

	private String[] supportedMethods = {"login","switchLogin","submitExtraData", "exit"};
	
	public ViVoUser(Activity context){
		ViVoSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		ViVoSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		ViVoSDK.getInstance().login();
	}
	
	@Override
	public void submitExtraData(UserExtraData extraData) {
		ViVoSDK.getInstance().submitExtraData(extraData);
	}
	
	@Override
	public void exit() {
		Log.d("U8SDK_VIVO", "vivo exit called.");
		ViVoSDK.getInstance().sdkExit();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

}
