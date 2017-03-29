package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class LenovoUser extends U8UserAdapter{

	private String[] supportedMethods = {"login","switchLogin","exit"};
	
	public LenovoUser(Activity context){
		LenovoSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	
	@Override
	public void login() {
		LenovoSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		LenovoSDK.getInstance().login();
	}

	@Override
	public void exit() {
		LenovoSDK.getInstance().exitSDK();
	}


	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

}
