package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.pm.ActivityInfo;
import cn.m4399.operate.OperateCenter;
import cn.m4399.operate.OperateCenter.OnLoginFinishedListener;
import cn.m4399.operate.OperateCenter.OnQuitGameListener;
import cn.m4399.operate.OperateCenter.OnRechargeFinishedListener;
import cn.m4399.operate.OperateCenterConfig;
import cn.m4399.operate.OperateCenterConfig.PopLogoStyle;
import cn.m4399.operate.OperateCenterConfig.PopWinPosition;
import cn.m4399.operate.User;

public class M4399SDK {

	private static M4399SDK instance;
	
	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;
	
	private String appKey;
	private int orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
	private PopLogoStyle logoStyle = PopLogoStyle.POPLOGOSTYLE_ONE;
	private PopWinPosition position = PopWinPosition.POS_RIGHT;
	
	private M4399SDK(){
		
	}
	
	public static M4399SDK getInstance(){
		if(instance == null){
			instance = new M4399SDK();
		}
		
		return instance;
	}
	
	private void parseSDKParams(SDKParams params){
		this.appKey = params.getString("M4399_AppKey");
		String orn = params.getString("M4399_Orientation");
		if("landscape".equalsIgnoreCase(orn)){
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
		}else if("portrait".equalsIgnoreCase(orn)){
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
		}else{
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
		}
		
		String logoStyle = params.getString("M4399_PopLogoStyle");
		if("one".equalsIgnoreCase(logoStyle)){
			this.logoStyle = PopLogoStyle.POPLOGOSTYLE_ONE;
		}else if("two".equalsIgnoreCase(logoStyle)){
			this.logoStyle = PopLogoStyle.POPLOGOSTYLE_TWO;
		}else if("three".equalsIgnoreCase(logoStyle)){
			this.logoStyle = PopLogoStyle.POPLOGOSTYLE_THREE;
		}else if("four".equalsIgnoreCase(logoStyle)){
			this.logoStyle = PopLogoStyle.POPLOGOSTYLE_FOUR;
		}
		
		String pos = params.getString("M4399_Position");
		
		if("left".equalsIgnoreCase(pos)){
			this.position = PopWinPosition.POS_LEFT;
		}else if("right".equalsIgnoreCase(pos)){
			this.position = PopWinPosition.POS_RIGHT;
		}else if("top".equalsIgnoreCase(pos)){
			this.position = PopWinPosition.POS_TOP;
		}else if("bottom".equalsIgnoreCase(pos)){
			this.position = PopWinPosition.POS_BOTTOM;
		}else{
			this.position = PopWinPosition.POS_RIGHT;
		}
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	
	private void initSDK(){
		
		state = SDKState.StateIniting;
		
		try{
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				
				
//				@Override
//				public void onBackPressed() {
//					exitSDK();
//				}
				
				@Override
				public void onDestroy() {
					OperateCenter.getInstance().destroy();
				}		
				
			});	
			
			
			OperateCenter mOpeCenter = OperateCenter.getInstance();
			
			// 配置sdk属性,比如可扩展横竖屏配置
			OperateCenterConfig opeConfig = new OperateCenterConfig.Builder(U8SDK.getInstance().getContext())
			    .setDebugEnabled(false)
			    .setOrientation(this.orientation)
				.setPopLogoStyle(this.logoStyle)
				.setPopWinPosition(this.position)
				.setSupportExcess(false)
				.setGameKey(this.appKey) 
				.build();
			mOpeCenter.setConfig(opeConfig);
			
			//初始化SDK，在这个过程中会读取各种配置和检查当前帐号是否在登录中
			//只有在init之后， isLogin()返回的状态才可靠
			mOpeCenter.init(U8SDK.getInstance().getContext(), new OperateCenter.OnInitGloabListener() {
				
				// 初始化结束执行后回调
				@Override
				public void onInitFinished(boolean isLogin, User userInfo) {
					
					state = SDKState.StateInited;
					
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "sdk inited success");
					
					if(loginAfterInit){
						loginAfterInit = false;
						login();
					}
					
				}

				// 注销帐号的回调， 包括个人中心里的注销和logout()注销方式
				@Override
				public void onUserAccountLogout(boolean fromUserCenter, int resultCode) {
					state = SDKState.StateInited;
					
					U8SDK.getInstance().onResult(U8Code.CODE_LOGOUT_SUCCESS, "logout success");
					U8SDK.getInstance().onLogout();
				}

				// 个人中心里切换帐号的回调
				@Override
				public void onSwitchUserAccountFinished(User userInfo) {
					state = SDKState.StateLogined;
					
	
					String uid = userInfo.getUid();
					
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, "switch account success.uid:"+uid);
					
					String loginResult = encodeLoginResult(userInfo);
					U8SDK.getInstance().onSwitchAccount(loginResult);				
				}
			});			
			
		}catch(Exception e){
			state = SDKState.StateDefault;
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init failed. exception:"+e.getMessage());
		}
		
	}
	
	private String encodeLoginResult(User user){

		JSONObject json = new JSONObject();
		try {
			json.put("uid", user.getUid());
			json.put("nickname", user.getNick());
			json.put("username", user.getName());
			json.put("token", user.getState());
			
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		return json.toString();
	}
	
	public void login(){
		
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			loginAfterInit = true;
			initSDK();
		}		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}		
		
		try{
			
			OperateCenter.getInstance().login(U8SDK.getInstance().getContext(), new OnLoginFinishedListener() {

				@Override
				public void onLoginFinished(boolean success, int resultCode, User userInfo) {
					
					if(success){
						state = SDKState.StateLogined;
						String uid = userInfo.getUid();
						
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, uid);
						String loginResult = encodeLoginResult(userInfo);
						U8SDK.getInstance().onLoginResult(loginResult);
						
					}else{
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, OperateCenter.getResultMsg(resultCode));
					}
				}
			});
			
		}catch(Exception e){
			state = SDKState.StateInited;
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed. exception:"+e.getMessage());
		}
	}
	
	public void switchAccount(){
		OperateCenter.getInstance().switchAccount(U8SDK.getInstance().getContext(), new OnLoginFinishedListener() {

			@Override
			public void onLoginFinished(boolean success, int resultCode, User userInfo) {
				if(success){
					state = SDKState.StateLogined;
					String uid = userInfo.getUid();
					
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, uid);
					
					String loginResult = encodeLoginResult(userInfo);
					U8SDK.getInstance().onSwitchAccount(loginResult);
					
				}else{
					state = SDKState.StateInited;
					U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, OperateCenter.getResultMsg(resultCode));
				}
			}
		});
	}
	
	public void logout(){
		OperateCenter.getInstance().logout();
	}
	
	public void exitSDK(){
		OperateCenter.getInstance().shouldQuitGame(U8SDK.getInstance().getContext(), new OnQuitGameListener() {

			@Override
			public void onQuitGame(boolean shouldQuit) {
				if (shouldQuit) {
					U8SDK.getInstance().getContext().finish();
					android.os.Process.killProcess(android.os.Process.myPid());
				}
			}
		});
	}

	public void sendExtraData(UserExtraData extraData){
		OperateCenter.getInstance().setServer(extraData.getServerName());
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
		
		try{
			
			OperateCenter.getInstance().recharge(U8SDK.getInstance().getContext(), params.getPrice(), params.getOrderID(), params.getProductName(), new OnRechargeFinishedListener() {

				@Override
				public void onRechargeFinished(boolean success, int resultCode, String msg) {

					if(success){
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
					}else{
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, OperateCenter.getResultMsg(resultCode));
					}
					
				}
			});
			
		}catch(Exception e){
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. exception:"+e.getMessage());
		}
	}
	
	public boolean isLogined(){
		
		return this.state.ordinal() >= SDKState.StateLogined.ordinal();
	}
}
