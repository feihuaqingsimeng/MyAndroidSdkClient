package com.u8.sdk;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.json.JSONObject;

import android.app.Application;
import android.util.Log;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.ApiCallback;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.model.biz.ReportUserGameInfoParam;
import com.nearme.game.sdk.common.util.AppUtil;



public class OppoSDK {
	
	private static OppoSDK instance;
	
	private String appID;
	private String appSecret;
	
//	private int orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
//	
	
	private OppoSDK(){
		
	}
	
	
	public static OppoSDK getInstance(){
		if(instance == null){
			instance = new OppoSDK();
		}
		return instance;
	}
	

	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("Oppo_AppID");
		this.appSecret = params.getString("Oppo_AppSecret");
		
//		String orn = params.getString("Oppo_Orientation");
//		if("landscape".equalsIgnoreCase(orn)){
//			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
//		}else if("portrait".equalsIgnoreCase(orn)){
//			this.orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
//		}else{
//			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
//		}
		
	}
	
	public void initSDK(SDKParams params, Application context){
		this.parseSDKParams(params);
		this.initSDK(context);
	}
	
	private void initSDK(Application context){
		try{
			
			Log.d("U8SDK", "init oppo when application created");
			GameCenterSDK.init(appSecret, context);
			Log.d("U8SDK", "init oppo completed on application created");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	public void onActivityCreate(){
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
			public void onResume(){
				GameCenterSDK.getInstance().onResume(U8SDK.getInstance().getContext());
				
			}
			
			public void onPause(){
				GameCenterSDK.getInstance().onPause();
			}
			
		});
		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
	}
	
	private String encodeLoginResult(String token, String ssoid){

		JSONObject json = new JSONObject();
		try{
			json.put("token", token);
			json.put("ssoid", ssoid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return json.toString();
	}
	
	public void switchAccount(){

		login();
		
	}
	
	
	public void login(){	
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}		
		
		try{
			
			GameCenterSDK.getInstance().doLogin(U8SDK.getInstance().getContext(), new ApiCallback() {

				@Override
				public void onSuccess(String content) {
					
					Log.d("U8SDK", "login success . the content:"+content);
					GameCenterSDK.getInstance().doGetTokenAndSsoid( new ApiCallback() {
						
						@Override
						public void onSuccess(String result) {
							try{
								
								Log.d("U8SDK", "get token success:"+result);
								JSONObject json = new JSONObject(result);
								String token = json.getString("token");
								String ssoid = json.getString("ssoid");
								
								String loginResult = encodeLoginResult(token, ssoid);
								
								U8SDK.getInstance().onLoginResult(loginResult);
								
							}catch(Exception e){
								e.printStackTrace();
							}
						}
						
						@Override
						public void onFailure(String content, int code) {
							U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, content);
						}
					});
										
				}

				@Override
				public void onFailure(String content, int code) {
					
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, content);
					
				}
			});			
			
		}catch(Exception e){
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed. exception:"+e.getMessage());
		}
	}
	
	public void sendExtraData(UserExtraData data){
		ReportUserGameInfoParam param = new ReportUserGameInfoParam(this.appID, data.getServerName(), data.getRoleName(), data.getRoleLevel());
		GameCenterSDK.getInstance().doReportUserGameInfoData(param, new ApiCallback() {
			
			@Override
			public void onSuccess(String arg0) {
				Log.d("U8SDK","sendExtraData success");
			}
			
			@Override
			public void onFailure(String arg0, int arg1) {
				Log.d("U8SDK", "sendExtraData failed."+arg0);
			}
		});

	}
	
	public void sdkExit(){
		GameCenterSDK.getInstance().onExit(U8SDK.getInstance().getContext(), new GameExitCallback() {
			
			@Override
			public void exitGame() {
				U8SDK.getInstance().getContext().finish();
				System.exit(0);
			}
		});
	}
	
	public void pay(PayParams params){
		String notifyUrl = params.getExtension();
		
		Log.d("U8SDK", "The extension is"+params.getExtension());
		
		PayInfo pay = new PayInfo(params.getOrderID(), "", params.getPrice() * 100);
		pay.setProductName(params.getProductName());
		pay.setProductDesc(params.getProductDesc());
		pay.setCallbackUrl(notifyUrl);
		
		GameCenterSDK.getInstance().doPay(U8SDK.getInstance().getContext(), pay, new ApiCallback() {
			
			@Override
			public void onSuccess(String content) {
				Log.d("U8SDK", "pay success");
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
			}
			
			@Override
			public void onFailure(String content, int code) {
				Log.d("U8SDK", "pay failed.content:"+content);
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, content);
			}
		});
	
	}
	
	
	public static String encode(String value) {
		String encoded = null;
		try {
			encoded = URLEncoder.encode(value, "UTF-8");
		} catch (UnsupportedEncodingException ignore) {
		}
		StringBuffer buf = new StringBuffer(encoded.length());
		char focus;
		for (int i = 0; i < encoded.length(); i++) {
			focus = encoded.charAt(i);
			if (focus == '*') {
				buf.append("%2A");
			} else if (focus == '+') {
				buf.append("%20");
			} else if (focus == '%' && (i + 1) < encoded.length()
					&& encoded.charAt(i + 1) == '7'
					&& encoded.charAt(i + 2) == 'E') {
				buf.append('~');
				i += 2;
			} else {
				buf.append(focus);
			}
		}
		
		return buf.toString();
	}
}
