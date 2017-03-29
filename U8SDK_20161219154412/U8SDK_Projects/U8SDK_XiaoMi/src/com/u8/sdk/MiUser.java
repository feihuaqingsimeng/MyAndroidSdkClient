package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class MiUser extends U8UserAdapter{
	
	private String[] supportedMethods = {"login","switchLogin"};
	
	public MiUser(Activity context){
		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
	}
	
	@Override
	public void login() {
		MiSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		MiSDK.getInstance().login();
		
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

}
