package com.u8.sdk;

import android.app.Activity;

public class AliPay implements IPay {

	public AliPay(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

	@Override
	public void pay(PayParams data) {
		AliSDK.getInstance().pay(data);
	}

}
