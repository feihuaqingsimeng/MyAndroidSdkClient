package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class QihooUser extends U8UserAdapter{

	private String[] supportedMethods = {"login","switchLogin","logout","submitExtraData","exit","realNameRegister","queryAntiAddiction"};
	
	private Activity context;
	
	public QihooUser(Activity context){
		this.context = context;
		QihooSDK.getInstance().initSDK(this.context, U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public void login() {

		QihooSDK.getInstance().login(this.context);
		
	}

	@Override
	public void switchLogin() {	
		QihooSDK.getInstance().switchAccount(this.context);
	}

	@Override
	public void logout() {
		QihooSDK.getInstance().logout(this.context);
	}

	@Override
	public void submitExtraData(UserExtraData extraData) {
	
		QihooSDK.getInstance().submitExtendData(this.context, extraData);
	}

	@Override
	public void exit() {
		QihooSDK.getInstance().quitSDK(this.context);
	}

	@Override
	public void realNameRegister() {
		QihooSDK.getInstance().realNameRegister(this.context);
	}

	@Override
	public void queryAntiAddiction() {
		QihooSDK.getInstance().doSdkAntiAddictionQuery(this.context);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}


}
