package com.u8.sdk;

import android.app.Activity;

public class YiLePay implements IPay{

	public YiLePay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		
		return true;
	}

	@Override
	public void pay(PayParams data) {
		YiLeSDK.getInstance().pay(data);
	}

}
