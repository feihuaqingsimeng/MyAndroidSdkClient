package com.u8.sdk;

import android.app.Activity;

public class QihooPay implements IPay{

	private Activity context;
	
	public QihooPay(Activity context){
		this.context = context;
	}
	
	@Override
	public void pay(PayParams data) {
		QihooSDK.getInstance().pay(this.context, data);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
