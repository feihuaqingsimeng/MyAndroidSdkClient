package com.u8.sdk;

import android.app.Activity;

public class ViVoPay implements IPay {

	public ViVoPay(Activity context){
		
	}
	
	@Override
	public void pay(PayParams data) {

		ViVoSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
