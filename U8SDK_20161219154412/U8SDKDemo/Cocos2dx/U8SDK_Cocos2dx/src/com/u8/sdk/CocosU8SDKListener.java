package com.u8.sdk;


import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.u8.sdk.base.IU8SDKListener;
import com.u8.sdk.plugin.U8User;
import com.u8.sdk.verify.UToken;


public class CocosU8SDKListener implements IU8SDKListener{

	private U8CocosActivity context;
	
	private boolean isSwitchAccount = false;		//当前是否为切换帐号
	
	public CocosU8SDKListener(U8CocosActivity context){
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
					
					JSONObject json = new JSONObject();
					try {
						json.put("isSupportExit", U8User.getInstance().isSupport("exit"));
						json.put("isSupportAccountCenter", U8User.getInstance().isSupport("showAccountCenter"));
						json.put("isSupportLogout", U8User.getInstance().isSupport("logout"));
					} catch (JSONException e) {
						
						e.printStackTrace();
					}
					
					context.sendCallback(U8CocosActivity.CALLBACK_INIT, json);
					break;
				case U8Code.CODE_INIT_FAIL:
					
					context.tip("SDK初始化失败");
					break;
				case U8Code.CODE_LOGIN_FAIL:
					//这里不需要提示，一般SDK有提示
					//Toast.makeText(context, "SDK登录失败", Toast.LENGTH_SHORT).show();
					break;
				case U8Code.CODE_PAY_FAIL:
					context.tip("支付失败");
					
					break;
				case U8Code.CODE_PAY_SUCCESS:
					//一般这里不用提示
					//context.tip("支付成功,到账时间可能稍有延迟");
					
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
		context.tip("SDK登录成功");
	}

	//切换帐号，需要回到登录界面，并弹出SDK登录界面
	@Override
	public void onSwitchAccount() {
		context.sendCallback(U8CocosActivity.CALLBACK_SWITCH_LOGIN, null);
		
	}

	//切换帐号，并登录成功，到这里和Login的回调onLoginResult一样
	@Override
	public void onSwitchAccount(String data) {
		Log.d("U8SDK", "SDK 切换帐号并登录成功,不用做处理，在onAuthResult中处理登录成功, 参数如下:");
		Log.d("U8SDK", data);
		this.isSwitchAccount = true;		
		
		context.tip("切换帐号成功");		
	}

	//登出，需要回到登录界面，并弹出SDK登录界面
	@Override
	public void onLogout() {
		context.sendCallback(U8CocosActivity.CALLBACK_LOGOUT, null);
	}

	//SDK登录成功之后，去U8Server进行登录认证
	@Override
	public void onAuthResult(UToken authResult) {
		
		if(!authResult.isSuc()){
			context.tip("SDK登录认证失败,确认U8Server是否配置");
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
		
		context.sendCallback(U8CocosActivity.CALLBACK_LOGIN, json);
	}

}
