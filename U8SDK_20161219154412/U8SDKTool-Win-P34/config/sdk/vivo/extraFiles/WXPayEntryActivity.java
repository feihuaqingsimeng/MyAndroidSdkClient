package com.example.paydemo.wxapi;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import com.bbk.payment.weixin.VivoWXPayEntryActivity;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;

public class WXPayEntryActivity extends VivoWXPayEntryActivity implements IWXAPIEventHandler {

	private static final String TAG = "WXPayEntryActivity";

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