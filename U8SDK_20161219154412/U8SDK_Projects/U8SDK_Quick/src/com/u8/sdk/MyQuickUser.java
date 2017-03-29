package com.u8.sdk;

import com.u8.sdk.U8SDK;
import com.u8.sdk.UserExtraData;
import com.u8.sdk.utils.Arrays;

import android.app.Activity;
import android.util.Log;

public class MyQuickUser extends U8UserAdapter {

	private String[] supportedMethods = {"login","logout","submitExtraData","exit","switchLogin"};
	
	private Activity context;
	
	public MyQuickUser(Activity context){
		this.context = context;
		MyQuickSDK.getInstance().initSDK(this.context, U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		MyQuickSDK.getInstance().login();
	}
	
	public void logout() {
		MyQuickSDK.getInstance().logout();
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
		MyQuickSDK.getInstance().submitExtendData(extraData);
	}

	@Override
	public void exit() {
		MyQuickSDK.getInstance().SdkExit(this.context);
	}

	@Override
	public void switchLogin() {
		MyQuickSDK.getInstance().logout();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

	
}
