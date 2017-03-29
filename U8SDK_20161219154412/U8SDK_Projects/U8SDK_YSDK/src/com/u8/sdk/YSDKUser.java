package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class YSDKUser extends U8UserAdapter{

	private String[] supportedMethods = {"login","loginCustom","switchLogin","logout"};
	
	public YSDKUser(Activity context){
		YSDK.initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {
		YSDK.login();
	}
	
	@Override
	public void loginCustom(String customData) {
		
		if("QQ".equalsIgnoreCase(customData)){
			YSDK.login(YSDK.LOGIN_TYPE_QQ);
		}else{
			YSDK.login(YSDK.LOGIN_TYPE_WX);
		}
	}
	

	@Override
	public void switchLogin() {
		YSDK.logout();
	}
	
	@Override
	public void logout() {
		try{
			
			YSDK.logout();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}
	
}
