package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class BaiduUser extends U8UserAdapter{

	private String[] supportedMethods = {"login", "switchLogin", "logout", "exit"};
	
	private Activity context;
	
	public BaiduUser(Activity context){
		this.context = context;
		BaiduSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		BaiduSDK.getInstance().login(this.context);
	}
	
	public void switchLogin(){
		BaiduSDK.getInstance().logout();
		BaiduSDK.getInstance().login(this.context);
	}

	@Override
	public void logout() {
		BaiduSDK.getInstance().logout();
	}
	
	public void exit(){
		BaiduSDK.getInstance().exitSDK();
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

}
