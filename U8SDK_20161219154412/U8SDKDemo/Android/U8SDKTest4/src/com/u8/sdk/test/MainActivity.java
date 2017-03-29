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
import com.u8.sdk.log.Log;
import com.u8.sdk.platform.U8ExitListener;
import com.u8.sdk.platform.U8InitListener;
import com.u8.sdk.platform.U8Platform;
import com.u8.sdk.plugin.U8Share;
import com.u8.sdk.test.order.U8Account;
import com.u8.sdk.test.order.U8LoginUtils;
import com.u8.sdk.verify.UToken;

public class MainActivity extends Activity {

	TextView textView_account;
	Button btn_login;
	public static Application application;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        
        this.initUI();
        
        //初始化SDK
        this.initSDK();
        
    }
    
    private void initUI(){
    	try{
            
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
    				shareParams.setTitle("分享标题");
    				shareParams.setContent("这里是分享内容");
    				shareParams.setDialogMode(true);
    				shareParams.setSourceName("U8SDK");
    				shareParams.setSourceUrl("http://www.uustory.com/");
    				shareParams.setTitleUrl("http://www.uustory.com");
    				shareParams.setUrl("http://www.uustory.com");
    				U8Share.getInstance().share(shareParams);
    			}
    		});
            
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    }
	
    
    private void initSDK(){
    	
    	U8Platform.getInstance().init(this, new U8InitListener() {
			
			@Override
			public void onSwitchAccount(UToken data) {
				//游戏中通过SDK切换到新账号的回调，游戏收到该回调，需要引导用户重新登录，重新加载该新用户对应的角色数据
				
				textView_account.setText("未登录");
				btn_login.setText("登  录");
				
				//模拟重新登录游戏服务器
				String loginUrl = SDKTools.getMetaData(MainActivity.this, "U8_LOGIN_GAME_URL");
				Log.d("U8SDK", "the login test url is "+loginUrl);
				
				LoginGameTask task = new LoginGameTask(loginUrl);
				task.execute();				
			}
			
			@Override
			public void onPayResult(int code, String msg) {
				
				Log.d("U8SDK", "pay result. code:"+code+";msg:"+msg);
				
				switch(code){
				case U8Code.CODE_PAY_SUCCESS:
					Toast.makeText(MainActivity.this, "支付成功", Toast.LENGTH_LONG).show();
					break;
				case U8Code.CODE_PAY_FAIL:
					Toast.makeText(MainActivity.this, "支付失败", Toast.LENGTH_LONG).show();
					break;
					
				case U8Code.CODE_PAY_CANCEL:
					Toast.makeText(MainActivity.this, "支付取消", Toast.LENGTH_LONG).show();
					break;
				case U8Code.CODE_PAY_UNKNOWN:
					Toast.makeText(MainActivity.this, "未知错误", Toast.LENGTH_LONG).show();
					break;
				}
				
			}
			
			@Override
			public void onLogout() {
				//用户登出回调（需要收到该回调需要返回游戏登录界面，并调用login接口，打开SDK登录界面）
				textView_account.setText("未登录");
				btn_login.setText("登  录");
			}
			
			@Override
			public void onLoginResult(int code, UToken data) {
				switch(code){
				case U8Code.CODE_LOGIN_SUCCESS:
					
					//模拟进入游戏服
					String loginUrl = SDKTools.getMetaData(MainActivity.this, "U8_LOGIN_GAME_URL");
					Log.d("U8SDK", "the login test url is "+loginUrl);
					
					LoginGameTask task = new LoginGameTask(loginUrl);
					task.execute();						
					
					break;
				case U8Code.CODE_LOGIN_FAIL:
					Toast.makeText(MainActivity.this, "登录失败", Toast.LENGTH_LONG).show();
					break;
				}
			}
			
			@Override
			public void onInitResult(int code, String msg) {
				Log.d("U8SDK", "init result.code:"+code+";msg:"+msg);
				switch(code){
				case U8Code.CODE_INIT_SUCCESS:
					Toast.makeText(MainActivity.this, "初始化成功", Toast.LENGTH_LONG).show();
					break;
				case U8Code.CODE_INIT_FAIL:
					Toast.makeText(MainActivity.this, "初始化失败", Toast.LENGTH_LONG).show();
					break;
				}
			}
		});
    }
    
	public void exit(){
		
		U8Platform.getInstance().exitSDK(new U8ExitListener() {
			
			@Override
			public void onGameExit() {

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
		});
	}
	
    private void login(){
    	
    	U8Platform.getInstance().login(this);

    }
    
    private void submitExtraData(final int dataType){
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
		U8Platform.getInstance().submitExtraData(data);
    }
    
    private void pay(){
    	
		PayParams params = new PayParams();
		params.setBuyNum(1);		//购买数量，固定1
		params.setCoinNum(100);		//当前玩家身上拥有的游戏币数量
		params.setExtension(System.currentTimeMillis()+"");	//游戏自定义数据，充值成功，回调游戏服的时候，会原封不动返回
		params.setPrice(1);		//单位 元
		params.setProductId("1");	//产品ID
		params.setProductName("元宝");	//产品名称
		params.setProductDesc("购买100元宝");	//产品描述
		params.setRoleId("1");		//角色ID
		params.setRoleLevel(1);		//角色等级
		params.setRoleName("测试角色名");	//角色名称
		params.setServerId("10");		//服务器ID
		params.setServerName("测试");		//服务器名称
		params.setVip("vip1");			//角色VIP等级
		params.setPayNotifyUrl("http://www.game.com/pay/callback");
		
		U8Platform.getInstance().pay(this, params);

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
    
    //******************系统事件 Start********************
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

	public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults){
		U8SDK.getInstance().onRequestPermissionResult(requestCode, permissions, grantResults);
	}
    //******************系统事件 End********************	
	
	
	//如果是unity或者cocos2dx开发的游戏，需要把onBackPressed和onKeyDown注释掉,在游戏层里面处理返回键
	public boolean onKeyDown(int keyCode, KeyEvent event){
		Log.d("U8SDK", "OnKeyDown:"+keyCode);
		if(keyCode == KeyEvent.KEYCODE_BACK){
			exit();
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
