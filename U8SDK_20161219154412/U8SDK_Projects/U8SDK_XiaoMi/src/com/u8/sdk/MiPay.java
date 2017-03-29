package com.u8.sdk;

import android.app.Activity;

public class MiPay implements IPay {
	
	public MiPay(Activity context){
	}
	
	@Override
	public void pay(PayParams data) {
		MiSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
