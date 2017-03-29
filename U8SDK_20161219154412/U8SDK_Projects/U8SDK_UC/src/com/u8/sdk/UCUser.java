package com.u8.sdk;

import com.u8.sdk.U8SDK;
import com.u8.sdk.UserExtraData;
import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class UCUser extends U8UserAdapter {

	private String[] supportedMethods = {"login","logout","submitExtraData","exit","switchLogin"};
	
	private Activity context;
	
	public UCUser(Activity context){
		this.context = context;
		UCSDK.getInstance().initSDK(this.context, U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		UCSDK.getInstance().login();
	}
	
	public void logout() {
		UCSDK.getInstance().logout();
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
		UCSDK.getInstance().submitExtendData(extraData);
	}

	@Override
	public void exit() {
		UCSDK.getInstance().ucSdkExit(this.context);
	}

	@Override
	public void switchLogin() {
		UCSDK.getInstance().logout();
		UCSDK.getInstance().login();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

	
}
