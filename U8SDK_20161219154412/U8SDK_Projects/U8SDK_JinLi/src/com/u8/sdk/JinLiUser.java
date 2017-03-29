package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class JinLiUser extends U8UserAdapter{

	private String[] supportedMethods = {"login","switchLogin"};
	
	public JinLiUser(Activity context){
		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
	}
	
	@Override
	public void login() {
		JinLiSDK.getInstance().login();
	}

	@Override
	public void switchLogin() {
		JinLiSDK.getInstance().login();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}
}
