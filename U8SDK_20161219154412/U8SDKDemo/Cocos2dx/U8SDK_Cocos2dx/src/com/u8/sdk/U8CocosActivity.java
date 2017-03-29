package com.u8.sdk;

import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.u8.sdk.ndk.AndroidNDKHelper;
import com.u8.sdk.plugin.U8Pay;
import com.u8.sdk.plugin.U8User;

/***
 * 记得将游戏工程中的AndroidManifest.xml中application节点，增加一个android:name="U8Application"
 * 如果游戏有自己的Application。那么通过实现IApplicationListener接口来实现，而不要使用继承Application。
 * 然后将自己的Application类，配置到AndroidManifest.xml中的meta-data节点中，name为"U8_Game_Application"
 * @author xiaohei
 *
 */
public class U8CocosActivity extends Cocos2dxActivity{
	
	public final static String CALLBACK_INIT = "OnU8InitSuc";						
	public final static String CALLBACK_LOGIN = "OnU8LoginSuc";					
	public final static String CALLBACK_SWITCH_LOGIN = "OnU8SwitchLogin";			
	public final static String CALLBACK_LOGOUT = "OnU8Logout";					
	public final static String CALLBACK_PAY = "OnU8PaySuc";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		initSDK();
	}
	
	//U8SDK 初始化
	//必须在onCreate中调用
	public void initSDK(){
		AndroidNDKHelper.SetNDKReceiver(this);
		U8SDK.getInstance().setSDKListener(new CocosU8SDKListener(this));
		U8SDK.getInstance().init(this);
		U8SDK.getInstance().onCreate();
	}
	
	//登录接口
	public void login(JSONObject data){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().login();
			}
		});
	}
	
	//自定义登录接口
	public void loginCustom(final JSONObject data){
		

		
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				
				String customData = "";
				try {
					customData = data.getString("customData");
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}				
				if(customData.equals("")){
					Log.e("U8SDK", "loginCustom :: customData is not specified.");
				}
				U8User.getInstance().login(customData);
			}
		});
	}
	
	//切换帐号接口
	public void switchLogin(JSONObject data){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().switchLogin();
			}
		});		
	}
	
	//显示用户中心接口
	public void showAccountCenter(JSONObject data){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().showAccountCenter();
			}
		});			
	}
	
	//登出
	public void logout(JSONObject data){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().logout();
			}
		});			
	}	
	
	//提交扩展数据
	public void submitExtraData(JSONObject data){
		final UserExtraData extraData = parseGameData(data);
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				
				U8User.getInstance().submitExtraData(extraData);
			}
		});	
	}
	
	//SDK退出接口
	public void exit(JSONObject data){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8User.getInstance().exit();
			}
		});	
	}	
	
	//支付接口
	public void pay(JSONObject data){
		final PayParams params = parsePayParams(data);
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
			
				U8Pay.getInstance().pay(params);
			}
		});			
	}
	
	//向Unity中发送消息
	public void sendCallback(final String name, final JSONObject jsonParams){

		
    	this.runOnGLThread(new Runnable() {
			
			@Override
			public void run() {
				AndroidNDKHelper.SendMessageWithParameters(name, jsonParams);
			}
		});
    	
		
	}
	
	private UserExtraData parseGameData(JSONObject json){
		UserExtraData data = new UserExtraData();
		try {
			data.setDataType(json.getInt("dataType"));
			data.setRoleID(json.getString("roleID"));
			data.setRoleName(json.getString("roleName"));
			data.setRoleLevel(json.getString("roleLevel"));
			data.setServerID(json.getInt("serverID"));
			data.setServerName(json.getString("serverName"));
			data.setMoneyNum(json.getInt("moneyNum"));
			
			String roleCreateTime = json.getString("roleCreateTime");
			String roleLevelUpTime = json.getString("roleLevelUpTime");
			
			if(!TextUtils.isEmpty(roleCreateTime.trim())){
				data.setRoleCreateTime(Long.valueOf(roleCreateTime.trim()));
			}
			
			if(!TextUtils.isEmpty(roleLevelUpTime.trim())){
				data.setRoleLevelUpTime(Long.valueOf(roleLevelUpTime.trim()));
			}
			
			
		} catch (JSONException e) {

			e.printStackTrace();
		}
		return data;
	}
	
	private PayParams parsePayParams(JSONObject json){
		PayParams params = new PayParams();
		
		try{	
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
	
	public void tip(final String tip){
		
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				Toast.makeText(U8CocosActivity.this, tip, Toast.LENGTH_SHORT).show();
			}
		});	
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
