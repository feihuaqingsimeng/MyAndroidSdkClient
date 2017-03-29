package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class OppoUser extends U8UserAdapter{

	private String[] supportedMethods = {"login", "switchLogin", "submitExtraData", "exit"};
	
	public OppoUser(Activity context){
		OppoSDK.getInstance().onActivityCreate();
	}
	
	@Override
	public void login() {
		OppoSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		OppoSDK.getInstance().switchAccount();
		
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
		OppoSDK.getInstance().sendExtraData(extraData);
		
	}

	@Override
	public boolean isSupportMethod(String methodName) {
		return Arrays.contain(supportedMethods, methodName);
	}
	
	@Override
	public void exit() {
		OppoSDK.getInstance().sdkExit();
	}	
}
