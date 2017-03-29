package com.u8.sdk;

import android.app.Activity;

public class FlymePay implements IPay{

	public FlymePay(Activity context){
		
	}
	
	@Override
	public void pay(PayParams data) {
		FlymeSDK.getInstance().pay(data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {
		
		return true;
	}

}
