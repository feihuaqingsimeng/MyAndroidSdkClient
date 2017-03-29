package com.u8.sdk;

import android.app.Activity;

public class LenovoPay implements IPay{

	public LenovoPay(Activity context){
		
	}
	
	@Override
	public void pay(PayParams data) {
		LenovoSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
