package com.u8.sdk;

import org.json.JSONObject;

import com.xiaomi.gamecenter.sdk.GameInfoField;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;

import android.app.Application;
import android.os.Bundle;
public class MiSDK {

	private static MiSDK instance;
	
	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	private SDKState state = SDKState.StateDefault;
		
	private String appID;
	private String appKey;
	
	public static MiSDK getInstance(){
		if(instance == null){
			instance = new MiSDK();
		}
		return instance;
	}
	
	private MiSDK(){
		
	}
	
	private void parseSDKParams(SDKParams params) {
		
		this.appID = params.getString("MiAppID");
		this.appKey = params.getString("MiAppKey");
		
	}
	
	public void initSDK(Application context, SDKParams params)
	{
		this.parseSDKParams(params);
		this.initSDK(context);
	}
	
	private void initSDK(Application context){
		
		this.state = SDKState.StateIniting;
		
		try{
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				
				@Override
				public void onBackPressed() {

				}
				
				@Override
				public void onDestroy() {

				}		
				
			});
			
			MiAppInfo appInfo = new MiAppInfo();
			appInfo.setAppId(this.appID);
			appInfo.setAppKey(this.appKey);
			MiCommplatform.Init(context, appInfo);
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
			this.state = SDKState.StateInited;
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, e.getMessage());
			e.printStackTrace();
		}

	}
	
	public void login(){
		
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			initSDK(U8SDK.getInstance().getApplication());
		}		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		try{
			
			MiCommplatform.getInstance().miLogin(U8SDK.getInstance().getContext(), new OnLoginProcessListener() {
				
				@Override
				public void finishLoginProcess(int code, MiAccountInfo account) {
					
					switch(code){
					case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
						state = SDKState.StateLogined;
						
						long uid = account.getUid();
						String session = account.getSessionId();
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, uid+"");
						
						String loginResult = encodeLoginResult(uid+"", session);
						
						U8SDK.getInstance().onLoginResult(loginResult);
						
						break;
					default:
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed.code:"+code);
					}
					
				}
			});
			
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, e.getMessage());
			e.printStackTrace();
		}
	}
	
	private String encodeLoginResult(String sid, String token){

		JSONObject json = new JSONObject();
		try{
			json.put("sid", sid);
			json.put("token", token);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return json.toString();
	}	
	
	public void pay(PayParams params){
		
		if(!isLogined()){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "The sdk is not logined.");
			return;
		}
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}		
		
		MiBuyInfo miBuyInfo= new MiBuyInfo();
		miBuyInfo.setCpOrderId(params.getOrderID());//订单号唯一（不为空）
		miBuyInfo.setCpUserInfo(""); //此参数在用户支付成功后会透传给CP的服务器
		miBuyInfo.setAmount(params.getPrice()); //必须是大于1的整数，10代表10米币，即10元人民币（不为空）

		//用户信息，网游必须设置、单机游戏或应用可选
		Bundle mBundle = new Bundle();
		mBundle.putString( GameInfoField.GAME_USER_BALANCE, params.getCoinNum()+"");   //用户余额
		mBundle.putString( GameInfoField.GAME_USER_GAMER_VIP, params.getVip());  //vip等级
		mBundle.putString( GameInfoField.GAME_USER_LV, params.getRoleLevel()+"");           //角色等级
		mBundle.putString( GameInfoField.GAME_USER_PARTY_NAME, "默认");  //工会，帮派
		mBundle.putString( GameInfoField.GAME_USER_ROLE_NAME, params.getRoleName()); //角色名称
		mBundle.putString( GameInfoField.GAME_USER_ROLEID, params.getRoleId());    //角色id
		mBundle.putString( GameInfoField.GAME_USER_SERVER_NAME, params.getServerName());  //所在服务器
		miBuyInfo.setExtraInfo( mBundle ); //设置用户信息

		MiCommplatform.getInstance().miUniPay(U8SDK.getInstance().getContext(), miBuyInfo, new OnPayProcessListener()
		{
			@Override
			public void finishPayProcess( int code ) {
				switch( code ) {
				case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
					break;
				case  MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:
					//购买成功
					U8SDK.getInstance().onResult(U8Code.CODE_PAYING, "paying");
		   			break;	
				case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_CANCEL:
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay cancel");
					break;
				default:
					//购买失败
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. code:"+code);
		  			break;
				}
			}
		});
	}
	
	public boolean isInited(){
		
		return this.state.ordinal() >= SDKState.StateInited.ordinal();
	}
	
	public boolean isLogined(){
		
		return this.state.ordinal() >= SDKState.StateLogined.ordinal();
	}
}
