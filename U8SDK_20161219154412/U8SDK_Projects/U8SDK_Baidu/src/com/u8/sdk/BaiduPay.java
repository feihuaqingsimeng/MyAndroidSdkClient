package com.u8.sdk;

import android.app.Activity;

public class BaiduPay implements IPay{

	private Activity context;
	
	public BaiduPay(Activity context){
		this.context = context;
	}
	
	@Override
	public void pay(PayParams data) {

		BaiduSDK.getInstance().pay(this.context, data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {
		return true;
	}

}
