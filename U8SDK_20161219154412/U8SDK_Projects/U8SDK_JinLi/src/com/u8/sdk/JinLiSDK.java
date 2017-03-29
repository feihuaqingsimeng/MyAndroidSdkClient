package com.u8.sdk;

import org.json.JSONObject;

import android.util.Log;

import com.gionee.gamesdk.AccountInfo;
import com.gionee.gamesdk.GamePayer;
import com.gionee.gamesdk.GamePlatform;
import com.gionee.gamesdk.OrderInfo;
import com.gionee.gamesdk.GamePlatform.LoginListener;

public class JinLiSDK {

	private static JinLiSDK instance;
	

	private JinLiSDK(){
		
	}
	
	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;	
	
	private String apiKey;

	private GamePayer sdkPayApi;
	
	public static JinLiSDK getInstance(){
		if(instance == null){
			instance = new JinLiSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.apiKey = params.getString("JinLi_ApiKey");
	}
	
	private void initSDK(){
		try{
			
			state = SDKState.StateIniting;
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				@Override
				public void onResume() {
					if(sdkPayApi != null){
						sdkPayApi.onResume();
					}
				}
				
				@Override
				public void onDestroy() {
					if(sdkPayApi != null){
						sdkPayApi.onDestroy();
					}
				}
				
			});
			
			GamePlatform.init(U8SDK.getInstance().getApplication().getApplicationContext(), this.apiKey);
			
			state = SDKState.StateInited;
			
			if(loginAfterInit){
				loginAfterInit = false;
				login();
			}
			
		}catch(Exception e){
			state = SDKState.StateDefault;
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, e.getMessage());
			e.printStackTrace();
		}
	}
	
	private String encodeLoginResult(String playerID, String token, String nickName){
		
		JSONObject json = new JSONObject();
		try{
			Log.e("U8SDK", "The token is "+token);
			json.put("playerID", playerID);
			JSONObject tokenJson = new JSONObject(token);
			json.put("token", tokenJson);
			json.put("username", nickName);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return json.toString();
	}
	
	public void login(){
		
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			loginAfterInit = true;
			initSDK();
			return;
		}
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try{
			
			state = SDKState.StateLogin;
			GamePlatform.loginAccount(U8SDK.getInstance().getContext(), true, new LoginListener() {
				
				@Override
				public void onSuccess(AccountInfo accountInfo) {
					state = SDKState.StateLogined;
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, accountInfo.mPlayerId);
					
					String result = encodeLoginResult(accountInfo.mPlayerId, accountInfo.mToken, accountInfo.mNickName);
					U8SDK.getInstance().onLoginResult(result);
					
				}
				
				@Override
				public void onError(Exception e) {
					state = SDKState.StateInited;
					Log.e("U8SDK", "login error."+e.getMessage());
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, e.getMessage());
				}
				
				@Override
				public void onCancel() {
					state = SDKState.StateInited;
					Log.e("U8SDK", "login failed. cancelled");
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "user cancelled.");
					
				}
			});			
			
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, e.getMessage());
			state = SDKState.StateInited;
			e.printStackTrace();
		}		
	}

	public void pay(PayParams data){
		try{
			
			if(state.ordinal() < SDKState.StateLogined.ordinal()){
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "the user now is not logined.");
				return;
			}		
			
			if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
				U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
				return;
			}
			
			JSONObject json = new JSONObject(data.getExtension());
			String outOrderNo = json.getString("out_order_no");
			String submitTime = json.getString("submit_time");
			
			OrderInfo order = new OrderInfo();
			order.setApiKey(this.apiKey);
			order.setOutOrderNo(outOrderNo);
			order.setSubmitTime(submitTime);
			
			if(this.sdkPayApi == null){
				this.sdkPayApi = new GamePayer(U8SDK.getInstance().getContext());	
			}
			
			this.sdkPayApi.pay(order, this.sdkPayApi.new GamePayCallback(){
	            //支付成功
	            @Override
	            public void onPaySuccess() {
	            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
	            }
	            
	            //支付取消
	            @Override
	            public void onPayCancel() {
	            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay cancelled.");
	            }

	            //支付失败，stateCode为支付失败状态码，详见接入指南
	            @Override
	            public void onPayFail(String stateCode) {
	            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.code:"+stateCode);
	            }				
			});
			

			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, e.getMessage());
			e.printStackTrace();
		}
	}
	
}
