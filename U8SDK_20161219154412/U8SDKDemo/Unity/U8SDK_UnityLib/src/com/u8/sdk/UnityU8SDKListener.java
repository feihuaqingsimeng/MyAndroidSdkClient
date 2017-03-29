package com.u8.sdk;

import org.json.JSONObject;

import com.u8.sdk.base.IU8SDKListener;
import com.u8.sdk.verify.UToken;

import android.util.Log;
import android.widget.Toast;

public class UnityU8SDKListener implements IU8SDKListener{

	private U8UnityContext context;
	
	private boolean isSwitchAccount = false;		//当前是否为切换帐号
	
	public UnityU8SDKListener(U8UnityContext context){
		this.context = context;
	}
	
	@Override
	public void onResult(final int code, String msg) {
		// TODO Auto-generated method stub
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				switch(code){
				case U8Code.CODE_INIT_SUCCESS:
					context.sendCallback(U8UnityContext.CALLBACK_INIT, null);
					break;
				case U8Code.CODE_INIT_FAIL:
					Toast.makeText(context, "SDK初始化失败", Toast.LENGTH_SHORT).show();
					break;
				case U8Code.CODE_LOGIN_FAIL:
					//这里不需要提示，一般SDK有提示
					//Toast.makeText(context, "SDK登录失败", Toast.LENGTH_SHORT).show();
					break;
				case U8Code.CODE_PAY_FAIL:
					Toast.makeText(context, "支付失败", Toast.LENGTH_SHORT).show();
					break;
				case U8Code.CODE_PAY_SUCCESS:
					Toast.makeText(context, "支付成功,到账时间可能稍有延迟", Toast.LENGTH_SHORT).show();
					break;
				}
			}
		});
	}


	//SDK登录成功的回调
	@Override
	public void onLoginResult(String data) {
		Log.d("U8SDK", "SDK 登录成功,不用做处理，在onAuthResult中处理登录成功, 参数如下:");
		Log.d("U8SDK", data);
		this.isSwitchAccount = false;
		tip("SDK登录成功");
	}

	//切换帐号，需要回到登录界面，并弹出SDK登录界面
	@Override
	public void onSwitchAccount() {
		context.sendCallback(U8UnityContext.CALLBACK_SWITCH_LOGIN, null);	
		
	}

	//切换帐号，并登录成功，到这里和Login的回调onLoginResult一样
	@Override
	public void onSwitchAccount(String data) {
		Log.d("U8SDK", "SDK 切换帐号并登录成功,不用做处理，在onAuthResult中处理登录成功, 参数如下:");
		Log.d("U8SDK", data);
		this.isSwitchAccount = true;		
		
		tip("切换帐号成功");		
	}

	//登出，需要回到登录界面，并弹出SDK登录界面
	@Override
	public void onLogout() {
		Log.d("U8SDK", "SDK 退出登录成功...发送消息到Unity中");
		context.sendCallback(U8UnityContext.CALLBACK_LOGOUT, null);
	}

	//SDK登录成功之后，去U8Server进行登录认证
	@Override
	public void onAuthResult(UToken authResult) {
		
		if(!authResult.isSuc()){
			tip("SDK登录认证失败,确认U8Server是否配置");
			return;
		}
		
		JSONObject json = new JSONObject();
		try{
			
			json.put("isSuc", authResult.isSuc());
			json.put("isSwitchAccount", isSwitchAccount);
			
			if(authResult.isSuc()){
				json.put("userID", authResult.getUserID());
				json.put("sdkUserID", authResult.getSdkUserID());
				json.put("username", authResult.getUsername());
				json.put("sdkUsername", authResult.getSdkUsername());
				json.put("token", authResult.getToken());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		context.sendCallback(U8UnityContext.CALLBACK_LOGIN, json.toString());
	}


	private void tip(final String tip){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				Toast.makeText(context, tip, Toast.LENGTH_SHORT).show();
			}
		});	
	}
}
