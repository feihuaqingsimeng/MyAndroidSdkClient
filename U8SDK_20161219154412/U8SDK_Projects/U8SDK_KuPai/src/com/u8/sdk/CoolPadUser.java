package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class CoolPadUser extends U8UserAdapter{

	private String[] supportedMethods = {"login","switchLogin","logout"};
	
	public CoolPadUser(Activity context){
		CoolPadSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		CoolPadSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		CoolPadSDK.getInstance().logout();
		CoolPadSDK.getInstance().login();
	}

	@Override
	public void logout() {
		CoolPadSDK.getInstance().logout();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

}
