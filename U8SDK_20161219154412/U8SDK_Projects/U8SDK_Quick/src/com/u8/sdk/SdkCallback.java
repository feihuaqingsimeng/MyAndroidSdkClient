package com.u8.sdk;

import android.util.Log;

import com.quicksdk.QuickSDK;
import com.quicksdk.entity.UserInfo;
import com.quicksdk.notifier.ExitNotifier;
import com.quicksdk.notifier.InitNotifier;
import com.quicksdk.notifier.LoginNotifier;
import com.quicksdk.notifier.LogoutNotifier;
import com.quicksdk.notifier.PayNotifier;
import com.quicksdk.notifier.SwitchAccountNotifier;
import com.u8.sdk.MyQuickSDK.SDKState;

public class SdkCallback 
{
	public static void InitCallback()
	{
		QuickSDK.getInstance().setInitNotifier(new InitNotifier() {
			
			@Override
			public void onSuccess() {
				Log.d("shunwan","InitCallback onSuccess");
				U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
				MyQuickSDK.getInstance().state = SDKState.StateInited;
			}
			
			@Override
			public void onFailed(String arg0, String arg1) {
				Log.d("shunwan","InitCallback onFailed");
				U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init onFailed");
				MyQuickSDK.getInstance().state = SDKState.StateDefault;
			}
		});
		
		
		QuickSDK.getInstance().setLoginNotifier(new LoginNotifier() {
		    @Override
		    public void onSuccess(UserInfo userInfo) {
		        //登录成功，获取到用户信息userInfo
		        //通过userInfo中的UID、token做服务器登录认证
		    	U8SDK.getInstance().onLoginResult(userInfo.getToken());
		    	Log.d("shunwan","login onSuccess");
		    	MyQuickSDK.getInstance().state = SDKState.StateLogined;
		    }
		    @Override
		    public void onCancel() {
		        //登录取消
		    	Log.d("shunwan","login onCancel");
		    	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "init onCancel");
		    }
		    @Override
		    public void onFailed(final String message, String trace) {
		        //登录失败
		    	if(message !=null && trace != null)
		    	{
		    		Log.d("shunwan","login onFailed message:"+message +",trace"+trace);
		    		
		    	}
		    	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "init onFailed");
		    		
		    }
		});
		
		QuickSDK.getInstance().setLogoutNotifier(new LogoutNotifier() {
		    @Override
		    public void onSuccess() {
		        //注销成功      
		    	U8SDK.getInstance().onLogout();
		    	Log.d("shunwan","Logout onSuccess");
		    }
		    @Override
		    public void onFailed(String message, String trace) {
		        //注销失败，不做处理
		    	Log.d("shunwan","Logout onFailed");
		    	U8SDK.getInstance().onResult(U8Code.CODE_LOGOUT_FAIL, "CODE_LOGOUT_FAIL onFailed");
		    }
		});
		
		QuickSDK.getInstance().setSwitchAccountNotifier(new SwitchAccountNotifier() {
			 
	        @Override
	        public void onSuccess(UserInfo userInfo) {
	            //切换账号成功，返回新账号的userInfo
	        	U8SDK.getInstance().onLogout();
		    	Log.d("shunwan","Logout onSuccess");
	        }
	 
	        @Override
	        public void onCancel() {
	            //切换账号取消
		    	Log.d("shunwan","Logout onCancel");
	        }
	         
	        @Override
	        public void onFailed(String message, String trace) {
	            //切换账号失败
	        	if(message !=null && trace != null)
	        		Log.d("shunwan","Logout onFailed message:"+ message+",trace:"+trace);
	        }
	    });
		
		QuickSDK.getInstance().setPayNotifier(new PayNotifier() {
		    @Override
		    public void onSuccess(String sdkOrderID, String cpOrderID,
		        String extrasParams) {
		            //支付成功
		            //sdkOrderID:quick订单号 cpOrderID：游戏订单号
		    	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
		    	Log.d("shunwan","pay Success");
		        }
		    @Override
		    public void onCancel(String cpOrderID) {
		        //支付取消
		    	Log.d("shunwan","pay onCancel");
		    	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed");
		    }
		    @Override
		    public void onFailed(String cpOrderID, String message, String trace) {
		        //支付失败
		    	Log.d("shunwan","pay onFailed");
		    	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed");
		    }
		});
		
		
		QuickSDK.getInstance().setExitNotifier(new ExitNotifier() {
		    @Override
		    public void onSuccess() {
		        //退出成功，游戏在此做自身的退出逻辑处理
		    	Log.d("shunwan","Exit onSuccess");
		    	U8SDK.getInstance().getContext().finish();
	            android.os.Process.killProcess(android.os.Process.myPid());
				
		    }
		    @Override
		    public void onFailed(String message, String trace) {
		        //退出失败，不做处理
		    	Log.d("shunwan","Exit onFailed");
		    }
		});
	}
}
