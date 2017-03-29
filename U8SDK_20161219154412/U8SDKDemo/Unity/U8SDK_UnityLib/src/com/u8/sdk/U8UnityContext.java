package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import com.u8.sdk.plugin.U8Pay;
import com.u8.sdk.plugin.U8User;
import com.unity3d.player.UnityPlayer;
import com.unity3d.player.UnityPlayerActivity;

/***
 * 记得将游戏工程中的AndroidManifest.xml中application节点，增加一个android:name="U8Application"
 * 如果游戏有自己的Application。那么通过实现IApplicationListener接口来实现，而不要使用继承Application。
 * 然后将自己的Application类，配置到AndroidManifest.xml中的meta-data节点中，name为"U8_Game_Application"
 * @author xiaohei
 *
 */
public class U8UnityContext extends UnityPlayerActivity{
	
	public final static String CALLBACK_GAMEOBJECT_NAME = "(u8sdk_callback)";	//unity中接收回调通知的GameObject的名称
	public final static String CALLBACK_INIT = "OnInitSuc";						//SDK初始化成功的回调方法名称和Unity中一致
	public final static String CALLBACK_LOGIN = "OnLoginSuc";					//SDK登录成功的回调方法名称和Unity中一致
	public final static String CALLBACK_SWITCH_LOGIN = "OnSwitchLogin";			//SDK切换帐号的回调方法名称和Unity中一致
	public final static String CALLBACK_LOGOUT = "OnLogout";					//SDK登出的回调方法名称和Unity中一致
	public final static String CALLBACK_PAY = "OnPaySuc";						//SDK支付成功回调方法名称和Unity中一致
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		initSDK();
	}
	
	//U8SDK 初始化
	public void initSDK(){
		U8SDK.getInstance().setSDKListener(new UnityU8SDKListener(this));
		U8SDK.getInstance().init(this);
		U8SDK.getInstance().onCreate();
	}
	
	public void nativeLog(String msg){
		Log.d("U8_LOG_UNITY", msg);
	}
	
	//登录接口
	public void login(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().login();
			}
		});
	}
	
	//自定义登录接口
	public void loginCustom(final String customData){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().login(customData);
			}
		});
	}
	
	//切换帐号接口
	public void switchLogin(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().switchLogin();
			}
		});		
	}
	
	//显示用户中心接口
	public void showAccountCenter(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().showAccountCenter();
			}
		});			
	}
	
	//登出
	public void logout(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().logout();
			}
		});			
	}	
	
	//提交扩展数据
	public void submitExtraData(String data){
		final UserExtraData extraData = parseGameData(data);
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				
				U8User.getInstance().submitExtraData(extraData);
			}
		});	
	}
	
	//SDK退出接口
	public void exit(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().exit();
			}
		});	
	}	
	
	//支付接口
	public void pay(String data){
		final PayParams params = parsePayParams(data);
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8Pay.getInstance().pay(params);
			}
		});			
	}
	
	//SDK是否支持退出确认功能
	public boolean isSupportExit(){
		
		return U8User.getInstance().isSupport("exit");
	}
	
	//SDK是否支持用户中心
	public boolean isSupportAccountCenter(){
		
		return U8User.getInstance().isSupport("showAccountCenter");
	}
	
	
	//SDK是否支持登出
	public boolean isSupportLogout(){
		
		return U8User.getInstance().isSupport("logout");
	}
	
	//向Unity中发送消息
	public void sendCallback(String name, String jsonParams){
		if(jsonParams == null){
			jsonParams = "";
		}
		UnityPlayer.UnitySendMessage(CALLBACK_GAMEOBJECT_NAME, name, jsonParams);
	}
	
	private UserExtraData parseGameData(String str){
		UserExtraData data = new UserExtraData();
		try {
			JSONObject json = new JSONObject(str);
			data.setDataType(json.getInt("dataType"));
			data.setRoleID(json.getString("roleID"));
			data.setRoleName(json.getString("roleName"));
			data.setRoleLevel(json.getString("roleLevel"));
			data.setServerID(json.getInt("serverID"));
			data.setServerName(json.getString("serverName"));
			data.setMoneyNum(json.getInt("moneyNum"));
			data.setRoleCreateTime(Long.valueOf(json.getString("roleCreateTime")));
			data.setRoleLevelUpTime(Long.valueOf(json.getString("roleLevelUpTime")));
		} catch (JSONException e) {

			e.printStackTrace();
		}
		return data;
	}
	
	private PayParams parsePayParams(String str){
		PayParams params = new PayParams();
		
		try{
			JSONObject json = new JSONObject(str);	
			params.setProductId(json.getString("productId"));
			params.setProductName(json.getString("productName"));
			params.setProductDesc(json.getString("productDesc"));
			params.setPrice(json.getInt("price"));
			params.setRatio(0);//该字段废弃不用
			params.setBuyNum(json.getInt("buyNum"));
			params.setCoinNum(json.getInt("coinNum"));
			params.setServerId(json.getString("serverId"));
			params.setServerName(json.getString("serverName"));
			params.setRoleId(json.getString("roleId"));
			params.setRoleName(json.getString("roleName"));
			params.setRoleLevel(json.getInt("roleLevel"));
			params.setPayNotifyUrl("");//该字段废弃不用
			params.setVip(json.getString("vip"));
			params.setOrderID(json.getString("orderID"));
			params.setExtension(json.getString("extension"));
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return params;
	}
	
	
	public void onActivityResult(int requestCode, int resultCode, Intent data){
		U8SDK.getInstance().onActivityResult(requestCode, resultCode, data);
		super.onActivityResult(requestCode, resultCode, data);
	}
	
	public void onStart(){
		U8SDK.getInstance().onStart();
		super.onStart();
	}
	
	public void onPause(){
		U8SDK.getInstance().onPause();
		super.onPause();
	}
	public void onResume(){
		U8SDK.getInstance().onResume();
		super.onResume();
	}
	public void onNewIntent(Intent newIntent){
		U8SDK.getInstance().onNewIntent(newIntent);
		super.onNewIntent(newIntent);
	}
	public void onStop(){
		U8SDK.getInstance().onStop();
		super.onStop();
	}
	public void onDestroy(){
		U8SDK.getInstance().onDestroy();
		super.onDestroy();
	}
	public void onRestart(){
		U8SDK.getInstance().onRestart();
		super.onRestart();
	}
		
}
