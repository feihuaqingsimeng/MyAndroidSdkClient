package com.example.paydemo.wxapi;

import com.bbkmobile.iqoo.payment.weixin.VivoWXPayEntryActivity;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public class WXSPayEntryActivity extends VivoWXPayEntryActivity implements IWXAPIEventHandler {

	private static final String TAG = "WXSPayEntryActivity";

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.finish();
	}

	@Override
	protected void onNewIntent(Intent intent) {
		super.onNewIntent(intent);
	}

	@Override
	public void onReq(BaseReq req) {
		// TODO Auto-generated method stub
		Log.d(TAG, "onReq, errCode = " + req);
		super.onReq(req);
	}

	@Override
	public void onResp(BaseResp resp) {
		// TODO Auto-generated method stub
		Log.d(TAG, "onPayFinish, errCode = " + resp.errCode+",resp.getType() = " + resp.getType());
		super.onResp(resp);
	}
	
}