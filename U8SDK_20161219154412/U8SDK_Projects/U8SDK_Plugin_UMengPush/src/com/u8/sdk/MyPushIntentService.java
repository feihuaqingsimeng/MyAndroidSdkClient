package com.u8.sdk;

import org.android.agoo.client.BaseConstants;
import org.json.JSONObject;

import android.content.Context;
import android.content.Intent;
import android.util.Log;



import com.u8.sdk.U8Code;
import com.u8.sdk.U8SDK;
import com.umeng.message.PushAgent;
import com.umeng.message.UHandler;
import com.umeng.message.UmengBaseIntentService;
import com.umeng.message.entity.UMessage;

public class MyPushIntentService extends UmengBaseIntentService{

	@Override
	protected void onMessage(Context context, Intent intent) {
		super.onMessage(context, intent);
		try {
			Log.d("U8SDK", "youmeng push message recieved.");
			String message = intent.getStringExtra(BaseConstants.MESSAGE_BODY);
			UMessage msg = new UMessage(new JSONObject(message));
			UHandler handler = PushAgent.getInstance(getApplicationContext()).getMessageHandler();
			if(handler != null){
				handler.handleMessage(getApplicationContext(), msg);
			}
			U8SDK.getInstance().onResult(U8Code.CODE_PUSH_MSG_RECIEVED, message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
