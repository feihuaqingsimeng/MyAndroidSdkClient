package com.u8.sdk;

import org.json.JSONObject;

import android.app.Application;
import android.os.Bundle;
import android.util.Log;

import com.meizu.gamesdk.model.callback.MzExitListener;
import com.meizu.gamesdk.model.callback.MzLoginListener;
import com.meizu.gamesdk.model.callback.MzPayListener;
import com.meizu.gamesdk.model.model.LoginResultCode;
import com.meizu.gamesdk.model.model.MzAccountInfo;
import com.meizu.gamesdk.model.model.PayResultCode;
import com.meizu.gamesdk.online.core.MzGameBarPlatform;
import com.meizu.gamesdk.online.core.MzGameCenterPlatform;
import com.meizu.gamesdk.online.model.model.MzBuyInfo;
import com.u8.sdk.utils.EncryptUtils;

public class FlymeSDK {

	private static FlymeSDK instance;
	
	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;	
	
	private String appID;
	private String appKey;
	private String appSecret;
	
	private String uid;
	
	private MzGameBarPlatform mBar;
	
	private FlymeSDK(){
		
	}
	
	public static FlymeSDK getInstance(){
		if(instance == null){
			instance = new FlymeSDK();
		}
		return instance;
	}
	
	public void initSDK(Application application, SDKParams params){
		this.parseSDKParams(params);
		this.initSDK(application);
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("Flyme_AppID");
		this.appKey = params.getString("Flyme_AppKey");
		this.appSecret = params.getString("Flyme_AppSecret");
		
	}
	
	private void initSDK(Application application){
		state = SDKState.StateIniting;
		Log.e("U8SDK","Init Begin....");
		try{
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				
				@Override
				public void onPause() {
					if(mBar != null){
						mBar.onActivityPause();
					}
				}

				@Override
				public void onResume() {
					if(mBar != null){
						mBar.onActivityResume();
					}
				}
				
				@Override
				public void onDestroy() {
					logout();
					if(mBar != null){
						mBar.onActivityDestroy();
					}
				}
				
			});
			
			Log.d("U8SDK", "appID:"+appID);
			Log.d("U8SDK", "appKey:"+appKey);
			
			MzGameCenterPlatform.init(application, this.appID, this.appKey);
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
	
	public void onActivityCreate(){
		mBar = new MzGameBarPlatform(U8SDK.getInstance().getContext());
		mBar.onActivityCreate();
		U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
	}
	
	private String encodeLoginResult(String uid, String session){
		JSONObject json = new JSONObject();
		try{
			json.put("uid", uid);
			json.put("session", session);
	
		}catch(Exception e){
			e.printStackTrace();
		}
	
		return json.toString();
	}
	
	
	public void login(){
		try{
			
			state = SDKState.StateLogin;
			
			if(state.ordinal() < SDKState.StateInited.ordinal()){
				loginAfterInit = true;
				initSDK(U8SDK.getInstance().getApplication());
				return;
			}		
			
			if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
				U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
				return;
			}			
			
			MzGameCenterPlatform.login(U8SDK.getInstance().getContext(), new MzLoginListener() {
				
				@Override
				public void onLoginResult(int code, MzAccountInfo accountInfo, String errorMsg) {
					
					Log.d("U8SDK", "code:"+code+";msg:"+errorMsg);
					
					switch(code){
					case LoginResultCode.LOGIN_SUCCESS:
						state = SDKState.StateLogined;
						String uid = accountInfo.getUid();
						
						FlymeSDK.this.uid = accountInfo.getUid();
						String session = accountInfo.getSession();
						
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, uid);
						
						String loginResult = encodeLoginResult(uid, session);
						U8SDK.getInstance().onLoginResult(loginResult);
						
						break;
					case LoginResultCode.LOGIN_LOGOUT:
						U8SDK.getInstance().onLogout();
						break;
					case LoginResultCode.LOGIN_ERROR_CANCEL:
						
						break;
					default:
						
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, errorMsg);
						break;
					}
				}
			});
		}catch(Exception e){
			state = SDKState.StateInited;
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, e.getMessage());
		}
	}
	
	private MzBuyInfo encodeBuyInfo(PayParams data){
		
		String orderId = data.getOrderID();
		String productID = data.getProductId();
		String productSubject = data.getProductName();
		String productBody = "";
		String productUnit = "";
		String buyNum = "1";
		String perPrice = data.getPrice() + "";
		String totalPrice = data.getPrice() + "";
		String createTime = System.currentTimeMillis() + "";
		String pay_type = "0";
		String userInfo = "";
		
		StringBuilder sb = new StringBuilder();
		sb.append("app_id=").append(this.appID).append("&")
		  .append("buy_amount=").append(buyNum).append("&")
		  .append("cp_order_id=").append(orderId).append("&")
		  .append("create_time=").append(createTime).append("&")
		  .append("pay_type=").append(pay_type).append("&")
		  .append("product_body=").append(productBody).append("&")
		  .append("product_id=").append(productID).append("&")
		  .append("product_per_price=").append(perPrice).append("&")
		  .append("product_subject=").append(productSubject).append("&")
		  .append("product_unit=").append(productUnit).append("&")
		  .append("total_price=").append(totalPrice).append("&")
		  .append("uid=").append(this.uid).append("&")
		  .append("user_info=").append(userInfo)
		  .append(":").append(this.appSecret);
		

		String sign = EncryptUtils.md5(sb.toString());
		String signType = "md5";
		
		MzBuyInfo buyInfo = new MzBuyInfo();
		buyInfo.setAppid(this.appID);
		buyInfo.setBuyCount(Integer.valueOf(buyNum));
		buyInfo.setCpUserInfo(userInfo);
		buyInfo.setCreateTime(Long.valueOf(createTime));
		buyInfo.setOrderAmount(totalPrice);
		buyInfo.setOrderId(orderId);
		buyInfo.setPayType(Integer.valueOf(pay_type));
		buyInfo.setPerPrice(perPrice);
		buyInfo.setProductBody(productBody);
		buyInfo.setProductId(productID);
		buyInfo.setProductSubject(productSubject);
		buyInfo.setProductUnit(productUnit);
		buyInfo.setSign(sign);
		buyInfo.setSignType(signType);
		buyInfo.setUserUid(this.uid);
		
		return buyInfo;
	}
	
	public void pay(PayParams data){
		try{
			
			if(state.ordinal() < SDKState.StateLogined.ordinal()){
				return;
			}		
			
			if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
				U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
				return;
			}
			
			MzBuyInfo buyInfo = encodeBuyInfo(data);
			
			MzGameCenterPlatform.payOnline(U8SDK.getInstance().getContext(), buyInfo.toBundle(), new MzPayListener() {

				@Override
				public void onPayResult(int code, Bundle arg1, String errorMsg) {
					switch(code){
					case PayResultCode.PAY_SUCCESS:
						
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
						
						break;
					case PayResultCode.PAY_ERROR_CANCEL:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay cannel");
						break;
					
					default:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, errorMsg);
						break;
					}
				}
			});
			
			
		}catch(Exception e){
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, e.getMessage());
		}
	}
	
	public void logout(){
		MzGameCenterPlatform.logout(U8SDK.getInstance().getContext(),new MzLoginListener() {
			
			@Override
			public void onLoginResult(int i, MzAccountInfo mzaccountinfo, String s) {
				// TODO Auto-generated method stub
				
			}
		});
	}
	
	public void exit()
	{
		MzGameCenterPlatform.exitSDK(U8SDK.getInstance().getContext(), new MzExitListener() {
			
			@Override
			public void callback(int code, String arg1) {
				if(code == MzExitListener.CODE_SDK_EXIT)
				{
					U8SDK.getInstance().getContext().finish();
					System.exit(0);
				}
			}
		});
	}
}
