
package com.u8.sdk;

import com.baidu.gamesdk.ActivityAdPage;
import com.baidu.gamesdk.ActivityAnalytics;
import com.baidu.gamesdk.BDGameSDK;
import com.baidu.gamesdk.BDGameSDKSetting;
import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.OnGameExitListener;
import com.baidu.gamesdk.ResultCode;
import com.baidu.gamesdk.ActivityAdPage.Listener;
import com.baidu.gamesdk.BDGameSDKSetting.Domain;
import com.baidu.platformsdk.PayOrderInfo;
import com.u8.sdk.baidu.*;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;

public class BaiduSDK {
	
	
	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}

	private static BaiduSDK instance;
	
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;
	
	private int appID;
	private String appKey;
	private Domain domain;
	
	private ActivityAdPage mActivityAdPage;
	private ActivityAnalytics mActivityAnalytics;
	
	private BaiduSDK(){
		
	}
	
	public static BaiduSDK getInstance(){
		if(instance == null){
			instance = new BaiduSDK();
		}
		return instance;
	}
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getInt("AppID");
		this.appKey = params.getString("AppKey");
		String domain = params.getString("Domain");
		if("DEBUG".equalsIgnoreCase(domain)){
			this.domain = Domain.DEBUG;
		}else{
			this.domain = Domain.RELEASE;
		}
	}
	
	public void initSDK(SDKParams params){
		 		
		
		this.parseSDKParams(params);
		this.initSDK(U8SDK.getInstance().getContext());
	}
	
	public void initSDK(final Activity context){
		
		if(this.state == SDKState.StateIniting){
			return;
		}
		
		this.state = SDKState.StateIniting;
		
		mActivityAnalytics = new ActivityAnalytics(context);
		
		mActivityAdPage = new ActivityAdPage(context, new Listener(){

			@Override
			public void onClose() {
				// TODO 关闭暂停页, CP可以让玩家继续游戏
				
			}
			
		});		
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
			public void onResume(){
				mActivityAdPage.onResume(); 
				mActivityAnalytics.onResume();
				BDGameSDK.onResume(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onStop() { 
				mActivityAdPage.onStop();
			}
			
			@Override
			public void onPause() {
				mActivityAdPage.onPause();
				mActivityAnalytics.onPause();
				BDGameSDK.onPause(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onDestroy() {
				closeFloatView();
				mActivityAdPage.onDestroy();
//				BDGameSDK.destroy();
			}
		});
		
		BDGameSDKSetting mBDGameSDKSetting = new BDGameSDKSetting();
		mBDGameSDKSetting.setAppID(this.appID);//APPID设置
		mBDGameSDKSetting.setAppKey(this.appKey);//APPKEY设置
		mBDGameSDKSetting.setDomain(this.domain);//设置为正式模式
		mBDGameSDKSetting.setOrientation(Utils.getOrientation(context));
		 
		BDGameSDK.init(context, mBDGameSDKSetting, new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				switch(resultCode){
				case ResultCode.INIT_SUCCESS:
					//初始化成功
					state = SDKState.StateInited;
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "baidu sdk init success");
					
					U8SDK.getInstance().runOnMainThread(new Runnable() {
						
						@Override
						public void run() {
							BDGameSDK.getAnnouncementInfo(U8SDK.getInstance().getContext());
							
						}
					});					
					
					if(loginAfterInit){
						loginAfterInit = false;
						login(context);
					}
					
					break;
					
				case ResultCode.INIT_FAIL:
				default:
					state = SDKState.StateDefault;
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "baidu sdk init failed.");
					//初始化失败
				}
				
			}
			
		});
	}

	
	public void login(final Activity context){
		
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			loginAfterInit = true;
			initSDK(context);
			return;
		}	
		
		if(!SDKTools.isNetworkAvailable(context)){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}		
		
		try{
			state = SDKState.StateLogin;
			BDGameSDK.login(new IResponse<Void>() {
				
				@Override
				public void onResponse(int resultCode, String resultDesc, Void extraData) { 
					Log.d("baidu sdk login", "this resultCode is " + resultCode);
					switch(resultCode){
					case ResultCode.LOGIN_SUCCESS:
						state = SDKState.StateLogined;
						String token = BDGameSDK.getLoginAccessToken();
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, "token="+token);
						
						showFloatView();
						
						U8SDK.getInstance().onLoginResult(token);
						
						setSuspendWindowChangeAccountListener(context);
						setSessionInvalidListener(context);
						
						break; 
					case ResultCode.LOGIN_CANCEL:
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "baidu sdk login canceled.resultCode:"+resultCode);
						break;
					case ResultCode.LOGIN_FAIL:
					default:	
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "baidu sdk login failed.resultCode:"+resultCode);
					}
				}
			});			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void logout(){
		BDGameSDK.logout();
		closeFloatView();
	}
	
	public void exitSDK(){
		BDGameSDK.gameExit(U8SDK.getInstance().getContext(), new OnGameExitListener() {
			
			@Override
			public void onGameExit() {
				U8SDK.getInstance().getContext().finish();
				System.exit(0);
			}
		});
	}
	
	private void showFloatView(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				
				BDGameSDK.showFloatView(U8SDK.getInstance().getContext());
				
			}
		});
	}
	
	private void closeFloatView(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				BDGameSDK.closeFloatView(U8SDK.getInstance().getContext());
			}
		});
	}	
	
	public void pay(Activity context, PayParams params){
		PayOrderInfo payOrderInfo = buildOrderInfo(params);
		if(payOrderInfo == null){
			return;
		}
		
		if(!isInited()){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "The sdk is not inited.");
			return;
		}
		
		if(!SDKTools.isNetworkAvailable(context)){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}		
		
		BDGameSDK.pay(payOrderInfo, null, 
			new IResponse<PayOrderInfo>(){
		  
				@Override
				public void onResponse(int resultCode, String resultDesc,
						PayOrderInfo extraData) {
					switch(resultCode){
					case ResultCode.PAY_SUCCESS://支付成功
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "baidu sdk pay success.");
						break;
					case ResultCode.PAY_CANCEL://订单支付取消
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "baidu sdk pay canceled.");
						break;	
					case ResultCode.PAY_FAIL://订单支付失败
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "baidu sdk pay failed.");
						break;	
					case ResultCode.PAY_SUBMIT_ORDER://订单已经提交，支付结果未知（比如：已经请求了，但是查询超时）
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, "baidu sdk pay order unknown.");
						break;	
					}
				}
			
		});

	}
	
	/**
	 * 构建订单信息 
	 */
	private PayOrderInfo buildOrderInfo(PayParams params){
		String cpOrderId = params.getOrderID();
		String goodsName = params.getProductName();
		String totalAmount = (params.getPrice() * 100) + "";//支付总金额 （以分为单位）  
		int ratio = params.getRatio();//该参数为非定额支付时生效 (支付金额为0时为非定额支付,具体参见使用手册)
		String extInfo = "";//扩展字段，该信息在支付成功后原样返回给CP
		
		if(TextUtils.isEmpty(totalAmount)){
			totalAmount = "0";
		}
		
		PayOrderInfo payOrderInfo = new PayOrderInfo();
		payOrderInfo.setCooperatorOrderSerial(cpOrderId);
		payOrderInfo.setProductName(goodsName); 
		long p = Long.parseLong(totalAmount); 
		payOrderInfo.setTotalPriceCent(p);//以分为单位
		payOrderInfo.setRatio(ratio);
		payOrderInfo.setExtInfo(extInfo);//该字段将会在支付成功后原样返回给CP(不超过500个字符)
		
		return payOrderInfo;
	}
	
	private void setSessionInvalidListener(final Activity context){
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				if(resultCode == ResultCode.SESSION_INVALID){
					U8SDK.getInstance().onLogout();
				}
				
			}
			
		});
	}
	
	private void setSuspendWindowChangeAccountListener(final Activity context){//设置切换账号事件监听（个人中心界面切换账号）
		BDGameSDK.setSuspendWindowChangeAccountListener(new IResponse<Void>(){

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) { 
				 switch(resultCode){
				 case ResultCode.LOGIN_SUCCESS:
					 //TODO 登录成功，不管之前是什么登录状态，游戏内部都要切换成新的用户
					state = SDKState.StateLogined;
					String token = BDGameSDK.getLoginAccessToken();
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, "sid="+";token="+token);
					
					U8SDK.getInstance().onSwitchAccount(token);
					
					 break;
				 case ResultCode.LOGIN_FAIL:
					state = SDKState.StateInited;
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "baidu sdk login failed.resultCode:"+resultCode);
					 break;
				 case ResultCode.LOGIN_CANCEL:					 
					//TODO 取消，操作前后的登录状态没变化
					state = SDKState.StateLogined;
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "baidu sdk login canceled.resultCode:"+resultCode);					 
					 break; 
					 
				 } 
			}
			
		});
	}	
	
	public boolean isInited(){
		
		return this.state.ordinal() >= SDKState.StateInited.ordinal();
	}	
	
}
