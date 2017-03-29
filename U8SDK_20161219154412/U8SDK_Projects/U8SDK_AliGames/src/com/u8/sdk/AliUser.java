package com.u8.sdk;

import android.app.Activity;

import cn.uc.gamesdk.UCGameSdk;

import com.u8.sdk.log.Log;
import com.u8.sdk.utils.Arrays;

public class AliUser extends U8UserAdapter {

	private String[] supportedMethods = {"login","switchLogin","logout","submitExtraData","exit"};
	
	public AliUser(Activity context){
		AliSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		boolean isSuport = Arrays.contain(supportedMethods, methodName);
		Log.d("U8SDK", "AliUser isSupportMethod name:"+methodName+",isSuport:"+isSuport);
		return isSuport;
	}
	
	@Override
	public void login() {
		AliSDK.getInstance().login();
		Log.d("U8SDK", "AliUser login ......");
	}

	@Override
	public void switchLogin() {
		AliSDK.getInstance().login();
	}	
	
	@Override
	public void logout() {
		AliSDK.getInstance().logout();
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
		 Log.d("U8SDK", "AliUser submitExtraData type:"+extraData.getDataType());
		switch(extraData.getDataType()){
		case UserExtraData.TYPE_CREATE_ROLE:
		case UserExtraData.TYPE_ENTER_GAME:
		case UserExtraData.TYPE_LEVEL_UP:
			AliSDK.getInstance().submitExtraData(extraData);
			break;
		}
		
	}

	@Override
	public void exit() {
		Log.d("U8SDK", "AliUser exit..........");
		AliSDK.getInstance().exitSDK();
	}	

}
