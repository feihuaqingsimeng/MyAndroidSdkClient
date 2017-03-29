package com.u8.sdk;

import android.app.Activity;

public class JinLiPay implements IPay{

	public JinLiPay(Activity context){
		
	}
	
	@Override
	public void pay(PayParams data) {
		JinLiSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
