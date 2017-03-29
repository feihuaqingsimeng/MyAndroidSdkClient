package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import com.bbk.payment.payment.OnVivoPayResultListener;
import com.vivo.sdkplugin.accounts.OnVivoAccountChangedListener;
import com.vivo.sdkplugin.accounts.VivoAccountManager;
import com.vivo.sdkplugin.aidl.VivoUnionManager;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;


public class ViVoSDK {
	
	public final static String KEY_LOGIN_RESULT = "LoginResult";
	public final static String KEY_SWITCH_ACCOUNT = "switchAccount";
	public final static int REQ_CODE_LOGIN =1000;
	public final static int REQ_CODE_SWITCH = 1001;
	public final static int REQ_CODE_PAY = 1002;

	private static ViVoSDK instance;
	
	private VivoUnionManager sdkApi;
	
	private String appID;
	
	private boolean showing = true;
	
	private ViVoSDK(){
		
	}
	
	
	public static ViVoSDK getInstance(){
		if(instance == null){
			instance = new ViVoSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		
		try{
			
			this.appID = params.getString("Vivo_AppID");
			
			final OnVivoAccountChangedListener accountListener = new OnVivoAccountChangedListener() {
				
				@Override
				public void onAccountRemove(boolean arg0) {
					Log.d("U8SDK", "vivo account removed.");
				}
				
				@Override
				public void onAccountLoginCancled() {
					Log.d("U8SDK", "on login canceled.");
					sdkApi.hideVivoAssitView(U8SDK.getInstance().getContext());
				}
				
				@Override
				public void onAccountLogin(String name, String openid, String authtoken) {
					
					Log.d("U8SDK", "onAccountLogin...");
					U8SDK.getInstance().runOnMainThread(new Runnable() {
						
						@Override
						public void run() {
							sdkApi.showVivoAssitView(U8SDK.getInstance().getContext());
							showing = true;
						}
					});
					
					
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, name);
					
					String result = encodeLoginResult(openid, name, authtoken);
					
					U8SDK.getInstance().onLoginResult(result);
					
					
				}
			};
			
			final OnVivoPayResultListener payListener = new OnVivoPayResultListener() {
				
				@Override
				public void rechargeResult(String arg0, boolean arg1, String resultCode,
						String msg) {

				}
				
				@Override
				public void payResult(String arg0, boolean arg1, String resultCode, String msg) {
					
					if("9000".equals(resultCode)){
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay sucess");
					}else if("6001".equals(resultCode)){
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay failed");
					}
					else{
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, msg);
					}
				}
			};
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				
				@Override
				public void onDestroy() {
					sdkApi.hideVivoAssitView(U8SDK.getInstance().getContext());	
					VivoAccountManager.vivoAccountonDestroy(U8SDK.getInstance().getContext());
					sdkApi.unRegistVivoAccountChangeListener(accountListener);
					//sdkApi.unRegistVivoPayResultListener(payListener);
					sdkApi.cancelVivoPaymentAndRecharge(payListener);
					
				}
				
				@Override
				public void onPause() {
					showing = false;
				}

				@Override
				public void onResume() {
					if(!showing){
						sdkApi.showVivoAssitView(U8SDK.getInstance().getContext());
					}
					
					
				}				
				
				@Override
				public void onActivityResult(int requestCode, int resultCode, Intent data) {

					try{
						
						switch(requestCode){
						case REQ_CODE_PAY:
							
							if(resultCode == Activity.RESULT_OK){
								
								Bundle extras = data.getBundleExtra("pay_info");
								boolean pay_result = extras.getBoolean("pay_result");
								if(pay_result){
									U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");	
								}else{
									String pay_msg = extras.getString("pay_msg");
									U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, pay_msg);
								}
								
								return;
							}
							
							U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付失败");
							break;
						}

					}catch(Exception e){
						e.printStackTrace();
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, e.getMessage());
					}
					
				}
				
			});			
			
			this.sdkApi = new VivoUnionManager(U8SDK.getInstance().getContext());
			this.sdkApi.registVivoAccountChangeListener(accountListener);
			this.sdkApi.initVivoPaymentAndRecharge(U8SDK.getInstance().getContext(), payListener);
			
			this.sdkApi.bindUnionService();
			
			
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
			
			
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init failed.exception:"+e.getMessage());
			e.printStackTrace();
		}
		
	}
	
	public void login(){

		this.sdkApi.startLogin(this.appID);
		
	}
	
	private String encodeLoginResult(String openid, String name, String token){

		JSONObject json = new JSONObject();
		try {
			json.put("openid", openid);
			json.put("name", name);
			json.put("token", token);
		} catch (JSONException e) {
			e.printStackTrace();
		}
			
		return json.toString();
	}
	
	public void submitExtraData(UserExtraData data){
		
		VivoUnionManager.vivoAccountreportRoleInfo(data.getRoleID(), data.getRoleLevel(), data.getServerID() + "", data.getRoleName(), U8SDK.getInstance().getContext(), data.getServerName());
	}
	
	
	public void sdkExit(){
        AlertDialog.Builder builder = new AlertDialog.Builder(U8SDK.getInstance().getContext());
        builder.setTitle("退出确认");
        builder.setMessage("现在还早，要不要再玩一会？");
        builder.setCancelable(true);
        builder.setPositiveButton("好吧",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog,
                            int whichButton) {
                    	//这里什么都不用做
                    }
                });
        builder.setNeutralButton("一会再玩",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog,
                            int whichButton) {
                    	//退出游戏
                    	VivoAccountManager.vivoAccountonDestroy(U8SDK.getInstance().getContext());
                    	U8SDK.getInstance().getContext().finish();
                    	System.exit(0);
                    }
                });
        builder.show();	
        
		
	}
	
	public void pay(PayParams params){
		try{
			String productName=params.getProductName();//商品名称
			String productDes=params.getProductName();	//商品描述
			int price = params.getPrice();

			Log.e("U8SDK", "The pay extension is "+params.getExtension());
			
			JSONObject json = new JSONObject(params.getExtension());
			
			String vivoOrder = json.getString("transNo");
			String vivoSignature = json.getString("accessKey");

			
			Bundle localBundle = new Bundle();
			localBundle.putString("transNo", vivoOrder);// 交易流水号，由订单推送接口返回
			localBundle.putString("accessKey", vivoSignature);// 签名信息，由订单推送接口返回
			localBundle.putString("productName", productName);//商品名称
			localBundle.putString("productDes", productDes);//商品描述
			localBundle.putLong("price", price * 100);//价格 单位为分
			localBundle.putString("appId", this.appID);// appid为vivo开发者平台中生成的App ID

			localBundle.putString("blance", params.getCoinNum()+"");
			localBundle.putString("vip", params.getVip());
			localBundle.putInt("level", params.getRoleLevel());
			localBundle.putString("party", "none");
			localBundle.putString("roleId", params.getRoleId());
			localBundle.putString("roleName", params.getRoleName());
			localBundle.putString("serverName", params.getServerName());
			localBundle.putString("extInfo", "none");
			localBundle.putBoolean("logOnOff", true);	
			
			this.sdkApi.payment(U8SDK.getInstance().getContext(), localBundle);

			
		}catch(Exception e){
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. exception:"+e.getMessage());
		}
	}
}
