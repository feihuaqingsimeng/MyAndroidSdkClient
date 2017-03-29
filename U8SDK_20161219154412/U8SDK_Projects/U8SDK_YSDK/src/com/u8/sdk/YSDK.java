package com.u8.sdk;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.BaseRet;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.user.UserLoginRet;
import com.u8.sdk.utils.EncryptUtils;
import com.u8.sdk.utils.ResourceHelper;
import com.u8.sdk.utils.U8HttpUtils;

public class YSDK {
	
	public static final int LOGIN_TYPE_QQ = 1;		//QQ登录类型
	public static final int LOGIN_TYPE_WX = 2;		//微信登录类型
	
	public static final int REQ_TYPE_QUERY = 1;		//查询余额
	public static final int REQ_TYPE_CHARGE =2;		//扣款
	
	private static boolean fixedPay;
	private static boolean multiServers;
	private static int ratio;
	private static String coinIconName;
	private static String queryUrl;
	private static String payUrl;
	
	
	private static void parseSDKParams(SDKParams params){
		
		fixedPay = params.getBoolean("WG_FIXEDPAY");
		coinIconName = params.getString("WG_COIN_ICON_NAME");
		multiServers = params.getBoolean("WG_MULTI_SERVERS");
		queryUrl = params.getString("WG_QUERY_URL");
		payUrl = params.getString("WG_PAY_URL");
		ratio = params.getInt("WG_RATIO");
		
	}
	
	public static void initSDK(SDKParams params){
		
		parseSDKParams(params);
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter() {
			
			@Override
			public void onStop() {
				YSDKApi.onStop(U8SDK.getInstance().getContext());
			}
			
			
			@Override
			public void onResume() {
				YSDKApi.onResume(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onRestart() {
				YSDKApi.onRestart(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onPause() {
				YSDKApi.onPause(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onNewIntent(Intent newIntent) {
				YSDKApi.handleIntent(newIntent);
			}
			
			@Override
			public void onDestroy() {
				YSDKApi.onDestroy(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onActivityResult(int requestCode, int resultCode, Intent data) {
				YSDKApi.onActivityResult(requestCode, resultCode, data);
			}
		});

		YSDKApi.onCreate(U8SDK.getInstance().getContext());
        YSDKApi.setUserListener(new YSDKCallback());
        YSDKApi.setBuglyListener(new YSDKCallback());		 
        YSDKApi.handleIntent(U8SDK.getInstance().getContext().getIntent());
        
	}
	
    // 获取当前登录平台
    public static ePlatform getPlatform() {
        UserLoginRet ret = new UserLoginRet();
        YSDKApi.getLoginRecord(ret);

        if (ret.flag == eFlag.Succ) {
            return ePlatform.getEnum(ret.platform);
        }
        return ePlatform.None;
    }

    public static void logout(){
    	YSDKApi.logout();
    }
    
    
//    public void switchUser(){
//    	YSDKApi.switchUser(true);
//    }
    
    private static String encodeLoginResult(int requesttype, String openId) {

		
		JSONObject ext = new JSONObject();
		try {
			ext.put("accountType", requesttype);
			ext.put("openId", openId);
			
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return ext.toString();
	}
    
	public static void login(){
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try{
			YSDKApi.logout();
			openLoginUI();
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, e.getMessage());
			e.printStackTrace();
		}

	}
	
	public static void openLoginUI(){
		Intent intent = new Intent(U8SDK.getInstance().getContext(), ChooseLoginTypeActivity.class);
		U8SDK.getInstance().getContext().startActivity(intent);
	}
    
	public static void login(int loginType){
		
		ePlatform platform = getPlatform();
		
		switch(loginType){
		case LOGIN_TYPE_QQ:
			switch(platform){
			case QQ:
				//QQ已经登录
				break;
			case None:
				YSDKApi.login(ePlatform.QQ);
				break;
			default:
				U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "请重新点击QQ登录");
			}
				
			break;
		case LOGIN_TYPE_WX:
			switch(platform){
			case WX:
				//微信已经登录
				break;
			case None:
				YSDKApi.login(ePlatform.WX);
				break;
			default:
				U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "请重新点击微信登录");
			}
			break;
		}
	}
	
    //拉去异常号
    public static void showDiffLogin() {
        AlertDialog.Builder builder = new AlertDialog.Builder(U8SDK.getInstance().getContext());
        builder.setTitle("异账号提示");
        builder.setMessage("你当前拉起的账号与你本地的账号不一致，请选择使用哪个账号登陆：");
        builder.setPositiveButton("本地账号",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog,
                            int whichButton) {
                        Toast.makeText(U8SDK.getInstance().getContext(), "选择使用本地账号", Toast.LENGTH_LONG).show();
                        if(!YSDKApi.switchUser(false)){
                        	U8SDK.getInstance().onLogout();
                        }
                    }
                });
        builder.setNeutralButton("拉起账号",
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog,
                            int whichButton) {
                        Toast.makeText(U8SDK.getInstance().getContext(), "选择使用拉起账号", Toast.LENGTH_LONG).show();
                    	if(!YSDKApi.switchUser(true)){
                    		U8SDK.getInstance().onLogout();
                        }
                    }
                });
        builder.show();
    } 
    
    @SuppressLint("NewApi") 
    private static boolean isUserLogined(){
        UserLoginRet ret = new UserLoginRet();
        YSDKApi.getLoginRecord(ret);
        return !ret.getAccessToken().isEmpty();
    }
    
	private static String openId;
	private static String openKey;
	private static String pf;
	private static String pfKey;
    
    // 平台授权成功,让用户进入游戏. 由游戏自己实现登录的逻辑
    public static void letUserLogin(final boolean autoLogin) {
        U8SDK.getInstance().runOnMainThread(new Runnable() {
            @Override
            public void run() {
                UserLoginRet ret = new UserLoginRet();
                YSDKApi.getLoginRecord(ret);
                Log.d("U8SDK","flag: " + ret.flag);
                Log.d("U8SDK","platform: " + ret.platform);
                if (ret.ret != BaseRet.RET_SUCC) {
                    Log.d("U8SDK","UserLogin error!!!");
                    if (autoLogin){
                    	
                    	openLoginUI();
                    	return;
                    	
                    }else{
                        U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed.");
                        return;
                    }

                }
                
                openId = ret.open_id;
                
                int requesttype = -1; // 0:qq  1:微信
                
                if (ret.platform == ePlatform.PLATFORM_ID_QQ) {
                	requesttype = 0;
                	openKey = ret.getPayToken();
                	
                } else if (ret.platform == ePlatform.PLATFORM_ID_WX) {
                	requesttype = 1;
                	openKey = ret.getAccessToken();
                }
                
                pf = ret.pf;
                pfKey = ret.pf_key;
                
                JSONObject json = new JSONObject();
                try{
                	json.put("accountType", requesttype);
                	json.put("openid", ret.open_id);
                	json.put("openkey", ret.getAccessToken());
                }catch(Exception e){
                	e.printStackTrace();
                }
                
                //U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, ret.open_id);
                //String result = encodeLoginResult(requesttype, ret.open_id);
    			U8SDK.getInstance().onLoginResult(json.toString());
            }
        });

    }
	
    private static PayParams payData;
    
	public static void pay(PayParams data){
		
		payData = data;
		
		QueryReqTask payReqTask = new QueryReqTask(true);
		payReqTask.execute(REQ_TYPE_QUERY+"", payData.getOrderID(), (multiServers ? payData.getServerId() : "1"));

	}
	
	public static void payInternal(final int leftMoney){
		
		Log.d("U8SDK", "payInternal Start");
		
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				try{

					String zoneID = "1";
					if(multiServers){
						//如果在腾讯后台配置了分区，那么游戏层穿过来的服务器ID，必须和后台配置的一致
						zoneID = payData.getServerId();
					}
					
					int savedValue = payData.getPrice() * ratio - leftMoney;
					
					boolean isCanChange = !fixedPay;
					int resID = ResourceHelper.getIdentifier(U8SDK.getInstance().getContext(), "R.drawable."+coinIconName);
					Bitmap bmp = BitmapFactory.decodeResource(U8SDK.getInstance().getContext().getResources(), resID);
					ByteArrayOutputStream baos = new ByteArrayOutputStream();
					bmp.compress(Bitmap.CompressFormat.PNG, 100, baos);
					byte[] resData = baos.toByteArray();
					
					YSDKApi.recharge(zoneID, savedValue+"", isCanChange, resData, payData.getOrderID(), new YSDKCallback());
				
				}catch(Exception e){
					e.printStackTrace();
				}
			
			}
		});
		

	}
	
	public static void chargeWhenPaySuccess(){
		//支付成功向U8Server发送通知，调用查询余额接口并扣费
		
		if(payData == null){
			Log.e("U8SDK", "the payData is null");
			return;
		}
		
		PayReqTask payReqTask = new PayReqTask(true);
		payReqTask.execute(REQ_TYPE_CHARGE+"", payData.getOrderID(), (multiServers ? payData.getServerId() : "1"));
		payData = null;
	}

	
	private static String reqCharge(int reqType, String orderID, String serverID){
		
		if(reqType == REQ_TYPE_CHARGE && TextUtils.isEmpty(payUrl)){
			Log.d("U8SDK", "the pay url is not config");
			return null;
		}
		
		if(reqType == REQ_TYPE_QUERY && TextUtils.isEmpty(queryUrl)){
			Log.e("U8SDK", "the query url is not config");
			return null;
		}
		
		try{
			
			ePlatform p = getPlatform();
			int accountType = 0;
			if(p == ePlatform.WX){
				accountType = 1;
			}
			
			Map<String, String> params = new HashMap<String, String>();
			params.put("orderID", orderID);		
			params.put("channelID", U8SDK.getInstance().getCurrChannel()+"");
			params.put("userID", U8SDK.getInstance().getUToken().getUserID()+"");
			params.put("accountType", accountType+"");
			params.put("openID", openId);
			params.put("openKey", openKey);
			params.put("pf", pf);
			params.put("pfkey", pfKey);
			params.put("zoneid", serverID);
			params.put("sign", generateSign(params));
			
			String url = null;
			if(reqType == REQ_TYPE_QUERY){
				url = queryUrl;
			}else{
				url = payUrl;
			}
			
			String result = U8HttpUtils.httpGet(url, params);
			
			Log.d("U8SDK", "the pay req to u8server response : "+ result);
			
			return result;
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return "";
	}
	
	private static String generateSign(Map<String,String> params){
		
        StringBuffer content = new StringBuffer();

        // 按照key做排序
        List<String> keys = new ArrayList<String>(params.keySet());
        Collections.sort(keys);
        for (int i = 0; i < keys.size(); i++) {
            String key = keys.get(i);
            String value = params.get(key) == null ? "" : params.get(key).toString();
            if (value != null) {
                content.append( key + "=" + value);
            } else {
                content.append(key + "=");
            }
        }

        String signData = content.toString();
        
        signData = signData + U8SDK.getInstance().getAppKey();
        return EncryptUtils.md5(signData).toLowerCase(Locale.getDefault());
		
	}
	
	static class QueryReqTask extends AsyncTask<String, Void, String>{
		
		private boolean showTip = false;
		
		public QueryReqTask(boolean showTip){
			this.showTip = showTip;
		}
		
		protected void onPreExecute(){
			if(showTip){
				U8SDK.getInstance().runOnMainThread(new Runnable() {
					
					@Override
					public void run() {
						showProgressDialog("正在查询余额，请稍后...");
						
					}
				});
				
			}
				
		}
		
		@Override
		protected String doInBackground(String... args) {
			
			String opType = args[0];
			String orderID = args[1];
			String zoneID = args[2];
			
			
			return reqCharge(Integer.valueOf(opType), orderID, zoneID);
		}
		
		protected void onPostExecute(final String result){
			
			U8SDK.getInstance().runOnMainThread(new Runnable() {
				
				@Override
				public void run() {
					hideProgressDialog();
					
				}
			});
			
			if(TextUtils.isEmpty(result)){
				showTip("查询剩余金额失败");
				return;
			}
			
			try {
				JSONObject json = new JSONObject(result);
				int state = json.getInt("state");
				
				if(state == 1){
					final int money = json.getInt("money");
					Log.d("U8SDk", "the left money is "+money);
					if(showTip && money > 0){
						//showTip("当前有"+money+"余额，目前需要："+(payData.getPrice() * ratio));
						final int leftRmby = money / ratio;
						if(leftRmby >= payData.getPrice()){

							U8SDK.getInstance().runOnMainThread(new Runnable() {
								
								@Override
								public void run() {
									
							        AlertDialog.Builder builder = new AlertDialog.Builder(U8SDK.getInstance().getContext());
							        builder.setTitle("购买确认");
							        builder.setMessage("您当前拥有"+leftRmby+"元余额，是否使用余额支付？");
							        builder.setCancelable(true);
							        builder.setPositiveButton("确  定",
							                new DialogInterface.OnClickListener() {
							                    public void onClick(DialogInterface dialog,
							                            int whichButton) {
							                    	
							                    	//确定就用余额支付
							                    	chargeWhenPaySuccess();
							                    	
							                    }
							                });
							        builder.setNeutralButton("取  消",
							                new DialogInterface.OnClickListener() {
							                    public void onClick(DialogInterface dialog,
							                            int whichButton) {
							                    	//如果取消，就直接支付，不使用余额
							                    	payInternal(0);
							                    }
							                });
							        builder.show();	
								}
							});
							return;
						}else{
							
							U8SDK.getInstance().runOnMainThread(new Runnable() {
								
								@Override
								public void run() {
									
							        AlertDialog.Builder builder = new AlertDialog.Builder(U8SDK.getInstance().getContext());
							        builder.setTitle("购买确认");
							        builder.setMessage("您当前拥有"+leftRmby+"元余额，是否使用这部分余额？");
							        builder.setCancelable(true);
							        builder.setPositiveButton("确  定",
							                new DialogInterface.OnClickListener() {
							                    public void onClick(DialogInterface dialog,
							                            int whichButton) {
							                    	
							                    	//确定就用余额支付
							                    	//chargeWhenPaySuccess();
							                    	payInternal(money);
							                    	
							                    }
							                });
							        builder.setNeutralButton("取  消",
							                new DialogInterface.OnClickListener() {
							                    public void onClick(DialogInterface dialog,
							                            int whichButton) {
							                    	//如果取消，就直接支付，不使用余额
							                    	payInternal(0);
							                    }
							                });
							        builder.show();	
								}
							});							
							
							return;
						}
						
					}else{
						Log.d("U8SDK", "the query result is "+result);
						payInternal(0);
					}
					
				}
				
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, e.getMessage());
				e.printStackTrace();
				//payInternal(0);
			}
		}
		
	}
	
	static class PayReqTask extends AsyncTask<String, Void, String>{
		
		private boolean showTip = false;
		
		public PayReqTask(boolean showTip){
			this.showTip = showTip;
		}
		
		protected void onPreExecute(){
			if(showTip){
				U8SDK.getInstance().runOnMainThread(new Runnable() {
					
					@Override
					public void run() {
						showProgressDialog("正在处理,请稍候...");
						
					}
				});
				
			}
				
		}
		
		@Override
		protected String doInBackground(String... args) {
			
			String opType = args[0];
			String orderID = args[1];
			String zoneID = args[2];
			
			
			return reqCharge(Integer.valueOf(opType), orderID, zoneID);
		}
		
		protected void onPostExecute(final String result){
			
			U8SDK.getInstance().runOnMainThread(new Runnable() {
				
				@Override
				public void run() {
					hideProgressDialog();
					
				}
			});
			
			try {
				JSONObject json = new JSONObject(result);
				int state = json.getInt("state");
				
				if(state == 1){
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
					//showTip("支付成功,到账可能稍有延迟");
				}else{
					U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay fail");
					//showTip("支付失败,重新登录后,会重新查询并支付");
				}
				
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, e.getMessage());
			}
			
		}
		
	}
	
	private static void showProgressDialog(String msg){
		if(loadingActivity != null){
			return;
		}
		
        loadingActivity = new ProgressDialog(U8SDK.getInstance().getContext());
        loadingActivity.setIndeterminate(true);
        loadingActivity.setCancelable(false);
        loadingActivity.setMessage(msg);
        loadingActivity.setOnCancelListener(new DialogInterface.OnCancelListener() {
			@Override
			public void onCancel(DialogInterface arg0) {

			}
		});		
        loadingActivity.show();
	}
	
	private static void hideProgressDialog(){
		if(loadingActivity == null){
			return;
		}
		loadingActivity.dismiss();
		loadingActivity = null;
	}
	
	private static ProgressDialog loadingActivity = null;
	
    public static void showTip(final String tip){
    	U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				Toast.makeText(U8SDK.getInstance().getContext(), tip, Toast.LENGTH_SHORT).show();
				
			}
		});
    }
}
