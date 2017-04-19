package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class FlymeUser extends U8UserAdapter{

	private String[] supportedMethods = {"login","switchLogin","exit"};
	
	public FlymeUser(Activity context){
		FlymeSDK.getInstance().onActivityCreate();
	}
	
	@Override
	public void login() {
		FlymeSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		FlymeSDK.getInstance().login();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

	@Override
	public void exit() {
		
		FlymeSDK.getInstance().exit();
	}

}
