package com.u8.sdk;

import com.u8.sdk.IPay;
import com.u8.sdk.PayParams;

import android.app.Activity;

public class MyQuickPay implements IPay {

	private Activity context;
	
	public MyQuickPay(Activity context){
		this.context = context;
	}
	
	@Override
	public void pay(PayParams data) {
		MyQuickSDK.getInstance().pay(this.context, data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
