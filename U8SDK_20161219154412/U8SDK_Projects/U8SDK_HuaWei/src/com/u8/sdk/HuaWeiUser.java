package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class HuaWeiUser extends U8UserAdapter{

	private String[] supportedMethods = {"login","switchLogin","submitExtraData"};
	
	public HuaWeiUser(Activity context){
		HuaWeiSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		HuaWeiSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		HuaWeiSDK.getInstance().login();
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
		HuaWeiSDK.getInstance().sendExtraData(extraData);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

}
