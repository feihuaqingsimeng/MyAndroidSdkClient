package com.u8.sdk;

import com.u8.sdk.IPay;
import com.u8.sdk.PayParams;

import android.app.Activity;

public class UCPay implements IPay {

	private Activity context;
	
	public UCPay(Activity context){
		this.context = context;
	}
	
	@Override
	public void pay(PayParams data) {
		UCSDK.getInstance().pay(this.context, data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
