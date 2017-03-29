package com.u8.sdk;

import org.json.JSONObject;

import android.content.pm.ActivityInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;

import com.coolcloud.uac.android.api.Coolcloud;
import com.coolcloud.uac.android.api.ErrInfo;
import com.coolcloud.uac.android.api.OnResultListener;
import com.coolcloud.uac.android.common.Constants;
import com.coolcloud.uac.android.common.Params;
import com.coolcloud.uac.android.gameassistplug.GameAssistApi;
import com.coolcloud.uac.android.gameassistplug.GameAssistApi.SwitchingAccount;
import com.u8.sdk.verify.UToken;
import com.yulong.paysdk.beens.CoolPayResult;
import com.yulong.paysdk.beens.CoolYunAccessInfo;
import com.yulong.paysdk.beens.PayInfo;
import com.yulong.paysdk.coolpayapi.CoolpayApi;
import com.yulong.paysdk.payinterface.IPayResult;
import com.yulong.paysdk.payinterface.PermissionRequireCallback;
import com.yulong.paysdk.utils.PermissionUtils;


public class CoolPadSDK {

	private static CoolPadSDK instance;
		
	private GameAssistApi mGameAssistApi;
	private Coolcloud sdkApi;
	private CoolpayApi payApi;
	private String appID;
	private String payKey;
	private int point;
	private int orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
	
	private OnResultListener loginListener = new OnResultListener() {
		
		@Override
		public void onResult(Bundle data) {
			
			String code = data.getString(Params.KEY_AUTHCODE);
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, code);
			
			U8SDK.getInstance().onLoginResult(code);
		}
		
		@Override
		public void onError(ErrInfo err) {
			
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, err.getError()+";"+err.getMessage());
		}
		
		@Override
		public void onCancel() {
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "user cancelled");
		}
	};
	
	
	private CoolPadSDK(){
		
	}
	
	public static CoolPadSDK getInstance(){
		if(instance == null){
			instance = new CoolPadSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		parseSDKParams(params);
		initSDK();
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("CoolPad_AppID");
		this.payKey = params.getString("CoolPad_PayKey");
		this.point = params.getInt("CoolPad_Point");
		String orn = params.getString("CoolPad_Orientation");
		if("landscape".equalsIgnoreCase(orn)){
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
		}else if("portrait".equalsIgnoreCase(orn)){
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
		}else{
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
		}
	}
	
	private void initSDK(){
		try{
			
			sdkApi = Coolcloud.get(U8SDK.getInstance().getContext(), this.appID);
			payApi = CoolpayApi.createCoolpayApi(U8SDK.getInstance().getContext(), this.appID);
	        if (mGameAssistApi == null) {
	            mGameAssistApi = (GameAssistApi) sdkApi.getGameAssistApi(U8SDK.getInstance().getContext());
	            mGameAssistApi.addOnSwitchingAccountListen(new SwitchingAccount() {

	                @Override
	                public void onSwitchingAccounts() {
	                	U8SDK.getInstance().onSwitchAccount();
	                }
	            });

	        }

			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				@Override
				public void onPause() {
					if(mGameAssistApi != null){
						mGameAssistApi.onPause();
					}
				}

				@Override
				public void onResume() {
					if(mGameAssistApi != null){
						mGameAssistApi.onResume();
					}
				}	
				
				@Override
				public void onDestroy() {
				}	
				
				@Override
				public void onRequestPermissionResult(int requestCode,
						String[] permissions, int[] grantResults) {
					
					PermissionUtils.getInstance().onRequestPermissionsResult(requestCode,
							permissions, grantResults);					
					
				}				
				
			});
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

	
	public void login(){		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try{
			
			final Bundle input = new Bundle();
			input.putInt(Constants.KEY_SCREEN_ORIENTATION, this.orientation);
			input.putString(Constants.KEY_SCOPE, "get_basic_userinfo");
			input.putString(Constants.KEY_RESPONSE_TYPE, Constants.RESPONSE_TYPE_CODE);
			
			if(Build.VERSION.SDK_INT < 23){
				
				sdkApi.login(U8SDK.getInstance().getContext(), input, new Handler(U8SDK.getInstance().getContext().getMainLooper()), loginListener);
			}else{
				PermissionUtils.getInstance().requestPermissions(PermissionUtils.REQUEST_PAY, 
						PermissionUtils.REQUEST_REJECT_Activity_DIALOG, U8SDK.getInstance().getContext(), new PermissionRequireCallback() {
							
							@Override
							public void StartTast() {
								sdkApi.login(U8SDK.getInstance().getContext(), input, new Handler(U8SDK.getInstance().getContext().getMainLooper()), loginListener);
							}
						});
			}
			
		
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, e.getMessage());
			e.printStackTrace();
		}
	}
	

	
	public void logout(){
		sdkApi.logout(U8SDK.getInstance().getContext());
	}
	
	public void pay(PayParams data){
		try{
				
			
			if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
				U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
				return;
			}
			
			UToken token = U8SDK.getInstance().getUToken();
			
			if(token == null){
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "the token is null");
				return;
			}
			
			Log.e("U8SDK", "The auth extInfo is "+token.getExtension());
			
			JSONObject extInfo = new JSONObject(token.getExtension());
			String accessToken = extInfo.getString("access_token");
			String openID = extInfo.getString("openid");	
			
			String expiredIn = extInfo.getString("expiredIn");
			String refreshToken = extInfo.getString("refreshToken");
			
			CoolYunAccessInfo accessInfo = new CoolYunAccessInfo();
			accessInfo.setAccessToken(accessToken);
			accessInfo.setExpiresIn(expiredIn);
			accessInfo.setOpenId(openID);
			accessInfo.setRefreshToken(refreshToken);
			
			PayInfo payData = new PayInfo();
			payData.setPrice(data.getPrice() * 100);
			payData.setAppId(this.appID);
			payData.setPayKey(this.payKey);
			payData.setName(data.getProductName());
			payData.setPoint(this.point);
			payData.setQuantity(1);
			payData.setCpOrder(data.getOrderID());

			payApi.startPay(U8SDK.getInstance().getContext(), payData, accessInfo, new IPayResult() {
				
				@Override
				public void onResult(CoolPayResult result) {
					
					Log.d("U8SDK", "pay result:"+result.getResultStatus()+";msg:"+result.getResult());
					
					switch(result.getResultStatus()){
					case 0:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
						break;
					case -1:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed");
						break;
					case -2:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay canceled");
						break;
					}
				}
			}, CoolpayApi.PAY_STYLE_DIALOG, orientation);
			
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, e.getMessage());
			e.printStackTrace();
		}
	}
	
}
