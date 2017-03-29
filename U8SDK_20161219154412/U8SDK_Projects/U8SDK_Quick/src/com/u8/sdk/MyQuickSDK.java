package com.u8.sdk;

import com.quicksdk.Payment;
import com.quicksdk.QuickSDK;
import com.quicksdk.Sdk;
import com.quicksdk.User;
import com.quicksdk.entity.GameRoleInfo;
import com.quicksdk.entity.OrderInfo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;


public class MyQuickSDK {

	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	public SDKState state = SDKState.StateDefault;

	private static MyQuickSDK instance;
	
	private String product_code;
	private String product_key;
	
	private MyQuickSDK(){
		
		
	}
	
	public static MyQuickSDK getInstance(){
		if(instance == null){
			instance = new MyQuickSDK();
		}
		return instance;
	}
	
	private void parseSDKParams(SDKParams params) {
		this.product_code = params.getString("product_code");
		this.product_key = params.getString("product_key");		
	
	}
	
	public void initSDK(Activity context, SDKParams params)
	{
		this.parseSDKParams(params);
		this.initSDK(context);
	}
	
	public void logout()
	{
		User.getInstance().logout(U8SDK.getInstance().getContext());
	}
	
	public void switchAccount(){
		logout();
	}
	
	/**
	 * 必接功能<br>
	 * sdk初始化功能<br>
	 */
	public void initSDK(final Activity context) {

		this.state = SDKState.StateIniting;

		try {
			
			Log.d("U8SDK","initSDK  code:"+product_code+",key:"+product_key);
			SdkCallback.InitCallback();
			Sdk.getInstance().init(context, product_code, product_key);
			Sdk.getInstance().onCreate(context);   
			
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				
				@Override    
				public void onCreate() {
				       
				         
				}
				 @Override    
				 public void onStart() {
				        com.quicksdk.Sdk.getInstance().onStart(context);
				}
				@Override    
				public void onRestart() {
				        com.quicksdk.Sdk.getInstance().onRestart(context);
				}
				@Override   
				public void onPause() {
				        com.quicksdk.Sdk.getInstance().onPause(context);
				}
				@Override    
				public void onResume() {
				        com.quicksdk.Sdk.getInstance().onResume(context);
				}
				@Override    
				public void onStop() {
				        com.quicksdk.Sdk.getInstance().onStop(context);
				}
				@Override    
				public void onDestroy() {
				        com.quicksdk.Sdk.getInstance().onDestroy(context);
				 }
				@Override    
				public void onNewIntent(Intent intent) {
				        com.quicksdk.Sdk.getInstance().onNewIntent(intent);
				}
				@Override    
				public void onActivityResult(int requestCode, int resultCode, Intent data) {
				        com.quicksdk.Sdk.getInstance().onActivityResult(context, requestCode, resultCode, data);
				}
				
			});	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void login(){
		
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			initSDK(U8SDK.getInstance().getContext());
			return;
		}		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try {
			state = SDKState.StateLogin;
			User.getInstance().login(U8SDK.getInstance().getContext());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//提交扩展数据
	public void submitExtendData(UserExtraData data){
		
		if(data.getDataType() == UserExtraData.TYPE_SELECT_SERVER ||
				data.getDataType() == UserExtraData.TYPE_EXIT_GAME){
			
			return;
		}
		
		//注：GameRoleInfo的字段，如果游戏有的参数必须传，没有则不用传
		GameRoleInfo roleInfo = new GameRoleInfo();
		roleInfo.setServerID(data.getServerID()+"");//数字字符串，不能含有中文字符
		roleInfo.setServerName(data.getServerName());
		roleInfo.setGameRoleName(data.getRoleName());
		roleInfo.setGameRoleID(data.getRoleID());
		roleInfo.setGameBalance("无");
		roleInfo.setVipLevel(data.getVip()); //设置当前用户vip等级，必须为整型字符串
		roleInfo.setGameUserLevel(data.getRoleLevel());//设置游戏角色等级
		roleInfo.setPartyName(data.getPartyName());//设置帮派名称
		roleInfo.setRoleCreateTime(data.getRoleCreateTime()+""); //UC与1881渠道必传，值为10位数时间戳
		roleInfo.setPartyId(data.getPartyID()); //360渠道参数，设置帮派id，必须为整型字符串
		roleInfo.setGameRoleGender("");//360渠道参数
		roleInfo.setGameRolePower("0"); //360渠道参数，设置角色战力，必须为整型字符串
		roleInfo.setPartyRoleId("0"); //360渠道参数，设置角色在帮派中的id
		roleInfo.setPartyRoleName("无"); //360渠道参数，设置角色在帮派中的名称
		roleInfo.setProfessionId("0"); //360渠道参数，设置角色职业id，必须为整型字符串
		roleInfo.setProfession("无"); //360渠道参数，设置角色职业名称
		roleInfo.setFriendlist("无"); //360渠道参数，设置好友关系列表，格式请参考：http://open.quicksdk.net/help/detail/aid/190
		User.getInstance().setGameRoleInfo(U8SDK.getInstance().getContext(), roleInfo, data.getDataType() == UserExtraData.TYPE_CREATE_ROLE);
			
	}
	
	
	public void pay(Activity context, PayParams data){
		
			if(!isInited()){
				U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "The sdk is not inited.");
				return;
			}
			
			if(!SDKTools.isNetworkAvailable(context)){
				U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
				return;
			}
			GameRoleInfo roleInfo = new GameRoleInfo();
			roleInfo.setServerID(data.getServerId()+"");//数字字符串
			roleInfo.setServerName(data.getServerName());
			roleInfo.setGameRoleName(data.getRoleName());
			roleInfo.setGameRoleID(data.getRoleId());
			roleInfo.setGameUserLevel(data.getRoleLevel()+"");
			roleInfo.setVipLevel("0");
			roleInfo.setGameBalance("0");
			roleInfo.setPartyName("");
			OrderInfo orderInfo = new OrderInfo();
			orderInfo.setCpOrderID(data.getOrderID());
			orderInfo.setGoodsName(data.getProductName());//商品名称，不带数量
			orderInfo.setCount(data.getCoinNum());//游戏币数量
			orderInfo.setAmount(data.getPrice());
			orderInfo.setGoodsID(data.getProductId());
			orderInfo.setExtrasParams(data.getExtension());
			Payment.getInstance().pay(U8SDK.getInstance().getContext(), orderInfo, roleInfo);
					
	}	
	
	/**
	 * 必接功能<br>
	 * 当游戏退出前必须调用该方法，进行清理工作。建议在游戏退出事件中进行调用，必须在游戏退出前执行<br>
	 * 如果游戏直接退出，而不调用该方法，可能会出现未知错误，导致程序崩溃<br>
	 */
	public void SdkExit(final Activity context) {
		if(QuickSDK.getInstance().isShowExitDialog()){
		    Sdk.getInstance().exit(U8SDK.getInstance().getContext());
		}
	}	
	
	public boolean isInited(){
		
		return this.state.ordinal() >= SDKState.StateInited.ordinal();
	}
	
	public boolean isLogined(){
		
		return this.state.ordinal() >= SDKState.StateLogined.ordinal();
	}	
	
}
