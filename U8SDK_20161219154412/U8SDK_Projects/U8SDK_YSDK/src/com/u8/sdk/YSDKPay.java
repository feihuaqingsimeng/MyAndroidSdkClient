package com.u8.sdk;

import android.app.Activity;

public class YSDKPay implements IPay{

	public YSDKPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

	@Override
	public void pay(PayParams data) {
		YSDK.pay(data);
	}

}
