package com.u8.sdk;

import android.app.Activity;

import com.u8.sdk.utils.Arrays;

public class YiLeUser extends U8UserAdapter{

	private String[] supportedMethods = {"login", "switchLogin", "logout"};
	
	public YiLeUser(Activity context){
		YiLeSDK.getInstance().init();
	}
	
	@Override
	public void login() {
		YiLeSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		YiLeSDK.getInstance().login();
		
	}
	
	@Override
	public void logout() {
		YiLeSDK.getInstance().logout();
	}
	
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return Arrays.contain(supportedMethods, methodName);
	}

}
