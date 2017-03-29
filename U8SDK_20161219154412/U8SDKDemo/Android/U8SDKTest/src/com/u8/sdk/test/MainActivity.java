package com.u8.sdk.test;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;


import com.u8.sdk.PayParams;
import com.u8.sdk.SDKTools;
import com.u8.sdk.ShareParams;
import com.u8.sdk.U8Code;
import com.u8.sdk.U8SDK;
import com.u8.sdk.UserExtraData;
import com.u8.sdk.base.IU8SDKListener;
import com.u8.sdk.log.Log;
import com.u8.sdk.plugin.U8Analytics;
import com.u8.sdk.plugin.U8Pay;
import com.u8.sdk.plugin.U8Push;
import com.u8.sdk.plugin.U8Share;
import com.u8.sdk.plugin.U8User;
import com.u8.sdk.test.order.U8Account;
import com.u8.sdk.test.order.U8LoginUtils;
import com.u8.sdk.test.order.U8Order;
import com.u8.sdk.test.order.U8OrderUtils;
import com.u8.sdk.verify.UToken;

public class MainActivity extends Activity {

	TextView textView_account;
	Button btn_login;
	public static Application application;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	try{
    		
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);

            Log.e("CurrThread-Name::", Thread.currentThread().getName());
            
            Log.e("CurrApplication::", U8SDK.getInstance().getApplication().toString());
            
    		textView_account = (TextView)findViewById(R.id.textView1);
    		textView_account.setText("未登录");
            btn_login = (Button)findViewById(R.id.button_login);
    		
            Button btn = (Button)findViewById(R.id.button_pay);
            
            btn.setOnClickListener(new View.OnClickListener() {
    			@Override
    			public void onClick(View v) {
    				pay();
    			}
    		});

            btn_login.setText("登  录");
            btn_login.setOnClickListener(new View.OnClickListener() {
    			
    			@Override
    			public void onClick(View arg0) {
    				login();
    			}
    		});

            Button btn_share = (Button)findViewById(R.id.button_share);
            btn_share.setOnClickListener(new View.OnClickListener() {
    			
    			@Override
    			public void onClick(View view) {
    				ShareParams shareParams = new ShareParams();
    				shareParams.setTitle("U8SDK真的很好用哦");
    				shareParams.setContent("U8SDK是一套Android统一SDK接入框架，已经接入30多家主流渠道。同时，接入了分享SDK，友盟推送SDK等");
    				shareParams.setDialogMode(true);
    				shareParams.setSourceName("U8SDK");
    				shareParams.setSourceUrl("http://www.uustory.com/");
    				shareParams.setTitleUrl("http://www.uustory.com");
    				shareParams.setUrl("http://www.uustory.com");
    				U8Share.getInstance().share(shareParams);
    			}
    		});

            

            U8SDK.getInstance().setSDKListener(new IU8SDKListener(){
    			@Override
    			public void onResult(final int code, final String message) {
    				
    				U8SDK.getInstance().runOnMainThread(new Runnable() {
    					
    					@Override
    					public void run() {
    						//Toast.makeText(MainActivity.this, message, Toast.LENGTH_SHORT).show();
    						Log.d("U8SDK", "onResult:"+message);
    						switch(code){
    						case U8Code.CODE_INIT_SUCCESS:
    							Toast.makeText(MainActivity.this, "初始化成功", Toast.LENGTH_SHORT).show();
    							break;
    						case U8Code.CODE_INIT_FAIL:
    							Toast.makeText(MainActivity.this, "初始化失败", Toast.LENGTH_SHORT).show();
    							break;
    						case U8Code.CODE_LOGIN_FAIL:
    							Toast.makeText(MainActivity.this, "登录失败", Toast.LENGTH_SHORT).show();
    							break;
    						case U8Code.CODE_SHARE_SUCCESS:
    							Toast.makeText(MainActivity.this, "分享成功", Toast.LENGTH_SHORT).show();
    							break;
    						case U8Code.CODE_SHARE_FAILED:
    							Toast.makeText(MainActivity.this, "分享失败", Toast.LENGTH_SHORT).show();
    							break;
    						case U8Code.CODE_LOGOUT_SUCCESS:
    							U8Analytics.getInstance().logout();
    							break;
//    						case U8Code.CODE_PUSH_ENABLED:
//    							String deviceToken = message;
//    							//TODO: 自己的逻辑
//    							break;
    						default:
    							Toast.makeText(MainActivity.this, message, Toast.LENGTH_SHORT).show();
    								
    						}
    					}
    				});
    				
    			}
    			
    			@Override
    			public void onLoginResult(String result) {
    				Log.d("U8SDK", "The sdk login result is "+result);
    				MainActivity.this.runOnUiThread(new Runnable() {
    					
    					@Override
    					public void run() {
    						Toast.makeText(MainActivity.this, "SDK 登录成功", Toast.LENGTH_SHORT).show();
    						U8Analytics.getInstance().login("demo111");
    						btn_login.setText("切换帐号");
    					}
    				});
    				
    				
    			}
    			
				@Override
				public void onAuthResult(final UToken authResult) {
    				MainActivity.this.runOnUiThread(new Runnable() {
    					
    					@Override
    					public void run() {
    						if(authResult.isSuc()){
    							Toast.makeText(MainActivity.this, "获取Token成功:"+authResult.getToken(), Toast.LENGTH_SHORT).show();
    							
    							String loginUrl = SDKTools.getMetaData(MainActivity.this, "U8_LOGIN_GAME_URL");
    							Log.d("U8SDK", "the login test url is "+loginUrl);
    							
    							LoginGameTask task = new LoginGameTask(loginUrl);
    							task.execute();
    							
    						}else{
    							Toast.makeText(MainActivity.this, "获取Token失败", Toast.LENGTH_SHORT).show();
    						}
    						
    					}
    				});
				}    			

    			@Override
    			public void onSwitchAccount() {
    				MainActivity.this.runOnUiThread(new Runnable() {
    					@Override
    					public void run()
    					{
    						Toast.makeText(MainActivity.this, "切换帐号成功", Toast.LENGTH_SHORT).show();
    						btn_login.setText("登 录");	
    						textView_account.setText("未登录");
    					}
    				});
    			}

    			@Override
    			public void onSwitchAccount(String result) {
    				MainActivity.this.runOnUiThread(new Runnable() {
    					@Override
    					public void run()
    					{
    						Toast.makeText(MainActivity.this, "切换帐号并登录成功", Toast.LENGTH_SHORT).show();
    						btn_login.setText("切换帐号");
    					}
    				});
    			}

    			@Override
    			public void onLogout() {
    				MainActivity.this.runOnUiThread(new Runnable() {
    					@Override
    					public void run()
    					{
    						Toast.makeText(MainActivity.this, "个人中心退出帐号成功", Toast.LENGTH_SHORT).show();
    						btn_login.setText("登 录");
    						textView_account.setText("未登录");
    					}
    				});
    			}



            });

            U8SDK.getInstance().init(MainActivity.this);
            
            U8SDK.getInstance().onCreate();

            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
            
            //测试apk下载插件
//            String url = "http://192.168.3.32/software/u8_10.apk";
//            U8Download.getInstance().download(url, true, true);
            U8Push.getInstance().startPush();
            
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    }
	
	public void exit(){
		if(U8User.getInstance().isSupport("exit")){
			U8SDK.getInstance().runOnMainThread(new Runnable() {
				
				@Override
				public void run() {
					U8User.getInstance().exit();
				}
			});
		}else{
			//游戏自己的退出确认框
	        AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
	        builder.setTitle("退出确认");
	        builder.setMessage("主公，现在还早，要不要再玩一会？");
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
	                    	MainActivity.this.finish();
	                    	System.exit(0);
	                    }
	                });
	        builder.show();			
		}
	}
	
	
	public boolean isSupportExit(){
		
		return U8User.getInstance().isSupport("exit");
	}
	
    private void login(){
    	U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				U8User.getInstance().login();
			}
		});
    	
    	
		
    }
    
    private void submitExtraData(final int dataType){
    	U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				UserExtraData data = new UserExtraData();
				data.setDataType(dataType);
				data.setMoneyNum(100);
				data.setRoleCreateTime(System.currentTimeMillis()/1000);
				data.setRoleID("role_100");
				data.setRoleName("test_112");
				data.setRoleLevel("10");
				data.setRoleLevelUpTime(System.currentTimeMillis()/1000);
				data.setServerID(10);
				data.setServerName("server_10");
				U8User.getInstance().submitExtraData(data);
			}
		});
    }
    
    private void pay(){
    	U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				PayParams params = new PayParams();
				params.setBuyNum(1);
				params.setCoinNum(100);
				params.setExtension(System.currentTimeMillis()+"");
				params.setPrice(1);
				params.setProductId("1");
				params.setProductName("元宝");
				params.setProductDesc("购买100元宝");
				params.setRoleId("1");
				params.setRoleLevel(1);
				params.setRoleName("测试角色名");
				params.setServerId("10");
				params.setServerName("测试");
				params.setVip("vip1");
				
				
				/**
				 * 支付之前，先去U8Server下单。 下单这里仅仅演示，下单的逻辑。 
				 * 游戏开发中， 下单一定要放在游戏服务器来做，不要直接做在客户端
				 * 客户端支付之前-》访问游戏服务器请求下单-》游戏服务器去u8server下单-》u8server返回给游戏服务器-》游戏服务器返回给客户端
				 */
				String orderUrl = SDKTools.getMetaData(MainActivity.this, "U8_ORDER_URL");
				Log.d("U8SDK", "the order url is "+orderUrl);
				
				OrderTask orderTask = new OrderTask(orderUrl);
				orderTask.execute(params);
				
//				U8Analytics.getInstance().pay(100, 1000);
			}
		});
    }
    
    public void onLoginGameSuccess(U8Account account){
    	
    	if(account == null){
    		Toast.makeText(this, "登录游戏服失败", Toast.LENGTH_SHORT).show();
    		return;
    	}
    	
    	btn_login.setText("切换帐号");
    	this.textView_account.setText(account.getAccountName());
    	
    	submitExtraData(UserExtraData.TYPE_ENTER_GAME);
    	
    }
    
    public void onGotOrder(final PayParams params, final U8Order order){
    	
    	Log.e("UniSDK", "Get Order Success");
    	
    	U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				U8Order tempOrder = order;
		    	if(tempOrder == null){
		    		tempOrder = new U8Order(System.currentTimeMillis()+"", "");
		    		Toast.makeText(MainActivity.this, "获取订单号失败，随机生成测试订单号", Toast.LENGTH_SHORT);
		    		
		    	}
		    	

		    	if(tempOrder != null){
			    	Toast.makeText(MainActivity.this, "订单号:"+tempOrder.getOrder(), Toast.LENGTH_LONG).show();
			    	
			    	params.setOrderID(tempOrder.getOrder());
			    	params.setExtension(tempOrder.getExtension());
		    	}
				
				U8Pay.getInstance().pay(params);
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
	
	public void onConfigurationChanged(Configuration newConfig){
		super.onConfigurationChanged(newConfig);
	}
	

	
	//如果是unity开发的游戏，需要把onBackPressed和onKeyDown注释掉
	public void onBackPressed(){
		Log.d("U8SDK", "OnBackPressed.");
		U8SDK.getInstance().onBackPressed();
		
		submitExtraData(UserExtraData.TYPE_EXIT_GAME);
		//super.onBackPressed();
		
		if(U8User.getInstance().isSupport("exit")){
			U8User.getInstance().exit();
		}else{
			this.finish();
			System.exit(0);
		}
	}
	
	public void onRequestPermissionResult(int requestCode, String[] permissions, int[] grantResults){
		U8SDK.getInstance().onRequestPermissionResult(requestCode, permissions, grantResults);
	}
	
	public boolean onKeyDown(int keyCode, KeyEvent event){
		Log.d("U8SDK", "OnKeyDown:"+keyCode);
		if(keyCode == KeyEvent.KEYCODE_BACK){
			if(U8User.getInstance().isSupport("exit")){
				U8User.getInstance().exit();
			}else{
				this.finish();
				System.exit(0);
			}
		}
		
		return true;
	}
	
	class LoginGameTask extends AsyncTask<Void, Void, U8Account>{
		
		String url;
		public LoginGameTask(String url){
			this.url = url;
		}
		
		protected void onPreExecute(){
			showProgressDialog(MainActivity.this, "正在登录游戏服,请稍候...");
		}

		@Override
		protected U8Account doInBackground(Void...params) {
			
			
			return U8LoginUtils.login(url);
		}
		
		protected void onPostExecute(U8Account account){
			hideProgressDialog(MainActivity.this);
			onLoginGameSuccess(account);
		}
		
	}	
	
	class OrderTask extends AsyncTask<PayParams, Void, U8Order>{

		private String url;
		private PayParams payParams;
		
		public OrderTask(String url){
			this.url = url;
		}
		
		protected void onPreExecute(){
			showProgressDialog(MainActivity.this, "正在获取订单号，请稍后...");
		}

		@Override
		protected U8Order doInBackground(PayParams... args) {
			
			this.payParams = args[0];
			
			return U8OrderUtils.getOrder(url, this.payParams);
		}
		
		protected void onPostExecute(U8Order order){
			hideProgressDialog(MainActivity.this);
			onGotOrder(this.payParams, order);
		}
		
	}	
	
	private ProgressDialog loadingActivity = null;
	
	private void showProgressDialog(Activity context, String title){
		if(loadingActivity != null){
			return;
		}
		
        loadingActivity = new ProgressDialog(context);
        loadingActivity.setIndeterminate(true);
        loadingActivity.setCancelable(true);
        loadingActivity.setMessage(title);
        loadingActivity.setOnCancelListener(new DialogInterface.OnCancelListener() {
			@Override
			public void onCancel(DialogInterface arg0) {
			}
		});		
        
        loadingActivity.show();
	}
	
	private void hideProgressDialog(Activity context){
		if(loadingActivity == null){
			return;
		}
		loadingActivity.dismiss();
		loadingActivity = null;
	}
	
}
