package com.u8.sdk;

import com.qihoo.gamecenter.sdk.matrix.Matrix;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.widget.Toast;

public class QihooProxyApplication implements IApplicationListener{

	@Override
	public void onProxyCreate() {
		// TODO Auto-generated method stub
		Matrix.initInApplication(U8SDK.getInstance().getApplication());
	}

	@Override
	public void onProxyAttachBaseContext(Context base) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onProxyConfigurationChanged(Configuration config) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onProxyTerminate() {
		// TODO Auto-generated method stub
		
	}
	
}
