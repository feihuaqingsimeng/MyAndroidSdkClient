package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import com.yileweb.sdk101.callback.YLCallback;
import com.yileweb.sdk101.callback.YLCallbackCode;
import com.yileweb.sdk101.entities.YLOrder;
import com.yileweb.sdk101.port.YLNetPlatform;

public class YiLeSDK {
	private static YiLeSDK instance;
	
	YLNetPlatform ylNetPlatform = YLNetPlatform.getInstance();
	
	private YiLeSDK(){
		
	}
	
	public static YiLeSDK getInstance(){
		if(instance == null){
			instance = new YiLeSDK();
		}
		return instance;
	}
	
	public void init(){
		try{
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				@Override
				public void onPause() {
					ylNetPlatform.homeHideFloat();
				}

				@Override
				public void onResume() {
					ylNetPlatform.homeShowFloat();
				}
				
				
			});
			
			ylNetPlatform.init(U8SDK.getInstance().getContext(), new YLCallback() {
				
				@Override
				public void onResult(int code, String msg) {
					switch(code){
					case YLCallbackCode.INIT_SUCCESS:
						U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
						break;
					case YLCallbackCode.LOGIN_SUCCESS:
						try
						{
							JSONObject jsObject = new JSONObject(msg);
							String account_id = jsObject.getString("account");
							String token = jsObject.getString("token");
							
							JSONObject ext = new JSONObject();
							ext.put("account", account_id);
							ext.put("token", token);
							
							U8SDK.getInstance().onLoginResult(ext.toString());
							
							U8SDK.getInstance().runOnMainThread(new Runnable() {
								
								@Override
								public void run() {
									ylNetPlatform.showFloat();
								}
							});
							
						} catch (JSONException e)
						{
							
							e.printStackTrace();
						}
						break;
					case YLCallbackCode.LOGIN_FAILURE:
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed:"+msg);
						break;
					case YLCallbackCode.SWITCH_SUCCESS:
						U8SDK.getInstance().onSwitchAccount();
						break;
					case YLCallbackCode.PAY_SUCCESS:
						
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
						break;
					case YLCallbackCode.PAY_FAIL:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed");
						break;
					case YLCallbackCode.PAY_CANCEL:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay cancel");
						break;
						
					}
				}
			});
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void login(){
		try{
			ylNetPlatform.login(U8SDK.getInstance().getContext());
		}catch(Exception e){
			e.printStackTrace();
		}
	
	}
	
	public void logout(){
		ylNetPlatform.logout();
	}
	
	public void pay(PayParams data){
		try{
			
			YLOrder order = new YLOrder(data.getProductName(), data.getOrderID(), data.getPrice(), data.getOrderID());
			ylNetPlatform.pay(U8SDK.getInstance().getContext(), order);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
