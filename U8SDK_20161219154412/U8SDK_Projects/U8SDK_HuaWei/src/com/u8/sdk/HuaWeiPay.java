package com.u8.sdk;

import android.app.Activity;

public class HuaWeiPay implements IPay{

	public HuaWeiPay(Activity context){
		
	}
	
	@Override
	public void pay(PayParams data) {
		HuaWeiSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {
		
		return true;
	}

}
