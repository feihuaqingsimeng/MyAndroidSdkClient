package com.u8.sdk;

import android.app.Activity;

public class CoolPadPay implements IPay{

	public CoolPadPay(Activity context){
		
	}
	
	@Override
	public void pay(PayParams data) {
		CoolPadSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
