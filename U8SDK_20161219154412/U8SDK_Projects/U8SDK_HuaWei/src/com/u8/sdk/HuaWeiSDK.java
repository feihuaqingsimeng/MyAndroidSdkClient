package com.u8.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.util.Log;
import android.widget.Toast;

import com.huawei.gameservice.sdk.GameServiceSDK;
import com.huawei.gameservice.sdk.api.GameEventHandler;
import com.huawei.gameservice.sdk.api.Result;
import com.huawei.gameservice.sdk.api.UserResult;
import com.huawei.gameservice.sdk.model.RoleInfo;
import com.huawei.gameservice.sdk.util.LogUtil;
import com.u8.sdk.huawei.RSAUtil;

public class HuaWeiSDK {

	private static HuaWeiSDK instance;
	
	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;	
	
	private String appID;
	private String payID;
	private int showType = 0;
	private String buoSecret;
	private String privateKey;
	private String compName;	//公司名称
	private int orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
	private int gameType = 1;	//0:单机；1：网游

	
	private HuaWeiSDK(){

	}
	
	public static HuaWeiSDK getInstance(){
		if (instance == null) {
			instance = new HuaWeiSDK();
		}
		return instance;
	}
	
	private void parseSDKParams(SDKParams params){
		String orn = params.getString("HuaWei_Orientation");
		if("landscape".equalsIgnoreCase(orn)){
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
		}else if("portrait".equalsIgnoreCase(orn)){
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
		}else{
			this.orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
		}
		
		this.appID = params.getString("HuaWei_AppID");
		this.payID = params.getString("HuaWei_PayID");
		this.showType = params.getInt("HuaWei_ShowType");
		this.buoSecret = params.getString("HuaWei_BuoSecret");
		this.privateKey = params.getString("HuaWei_PrivateKey");
		this.compName = params.getString("HuaWei_CompanyName");
		
		if(params.contains("HuaWei_GameType")){
			this.gameType = params.getInt("HuaWei_GameType");
		}
	}
	
	public void initSDK(SDKParams params){
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	private void initSDK(){
		
		state = SDKState.StateIniting;
		try{
//			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				
				public void onResume(){
					GameServiceSDK.showFloatWindow(U8SDK.getInstance().getContext());
				}
				
				public void onPause(){
					GameServiceSDK.hideFloatWindow(U8SDK.getInstance().getContext());
				}
				
				public void onDestroy(){
					if(U8SDK.getInstance().getContext().isTaskRoot()){
					
						GameServiceSDK.destroy(U8SDK.getInstance().getContext());
					}

				}
				
			});
//			
//			if(this.showType > 0){
//				BuoyOpenSDK.getIntance().setShowType(2);	
//			}
//			
//			OpenSDK.showAppinfo(U8SDK.getInstance().getContext(), appID, payID, buoSecret);
//			
			String packageName = U8SDK.getInstance().getContext().getPackageName();
			String providerName = packageName+".installnewtype.provider";
			
			GameServiceSDK.init(U8SDK.getInstance().getContext(), appID, payID, providerName, new GameEventHandler() {
				
				@Override
				public void onResult(Result result) {
					if(result.rtnCode == Result.RESULT_OK){
						U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
						state = SDKState.StateInited;
						if(loginAfterInit){
							loginAfterInit = false;
							login();
						}	
						
						checkUpdate();
						
					}else if(result.rtnCode == Result.RESULT_ERR_CANCEL){
//						U8SDK.getInstance().getContext().finish();
//						System.exit(0);
						U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init cancelled");
					}
					else{
						Log.e("U8SDK", "init the game service SDK failed:" + result.rtnCode);
						U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init failed");
					}
				}
				
				@Override
				public String getGameSign(String appID, String cpID, String ts) {
					// TODO Auto-generated method stub
					return createGameSign(appID+cpID+ts);
				}
			});
			
//			state = SDKState.StateInited;
//			U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
//			
		
			
		}catch(Exception e){
			state =SDKState.StateDefault;
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init failed."+e.getMessage());
		}
	}
	
	private void checkUpdate(){
		
		GameServiceSDK.checkUpdate(U8SDK.getInstance().getContext(), new GameEventHandler(){
        	
			@Override
			public void onResult(Result result) {
				if(result.rtnCode != Result.RESULT_OK){
					Log.d("U8SDK", "checkUpdate failed. check update failed:" + result.rtnCode);
				}
			}
			
			@Override
			public String getGameSign(String appId, String cpId, String ts){
				return createGameSign(appId+cpId+ts);
			}
			
		});
	}
	
	public void login(){
		
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			loginAfterInit = true;
			initSDK();
			return;
		}		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		

		try{
			state = SDKState.StateLogin;
			
			GameServiceSDK.login(U8SDK.getInstance().getContext(), new GameEventHandler() {
				
				@Override
				public void onResult(Result result) {
					
					Log.d("U8SDK", "The result is "+result.rtnCode);
					
					if(result.rtnCode == Result.RESULT_OK){
						
						UserResult userResult = (UserResult) result;
						
						Log.d("U8SDK", "The isChange is "+userResult.isChange);
						Log.d("U8SDK", "The isAuth is "+userResult.isAuth);
						Log.d("U8SDK", "The playerId is "+userResult.playerId);
						 
						if(userResult.isChange != null && userResult.isChange == 1){
	                    	U8SDK.getInstance().onSwitchAccount();
	                    	//login(); 
	                    }else if(userResult.isAuth != null && userResult.isAuth == 0)
	                    {
	                    	state = SDKState.StateLogined;
	                    	String ts = userResult.ts;
	                    	String playerId = userResult.playerId;
							try{
								JSONObject json = new JSONObject();
								json.put("ts", ts);
								json.put("playerId", playerId);
								json.put("accessToken", userResult.gameAuthSign);
								json.put("nickName", userResult.displayName);
								
								U8SDK.getInstance().onLoginResult(json.toString());
								
							}catch(Exception e){
								U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
								e.printStackTrace();
							}
							
							

	                    }else if(userResult.isAuth != null && userResult.isAuth == 1){
	                    	
	                    }
	                    else
	                    {
	                    	//7.1.1.301 版本华为登录有多次触发登录失败的BUG， 这里暂时屏蔽登录失败回调的触发
	                        //U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login error. "+userResult.toString());
	                    }						
						
					}else if(result.rtnCode == Result.RESULT_ERR_CANCEL){
						
						
						
					}
					else if(result.rtnCode != Result.RESULT_ERR_COMM){
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed:"+result.rtnCode);
					}
					else{
						//7.1.1.301 版本华为登录有多次触发登录失败状态为2的BUG， 这里暂时屏蔽登录失败回调的触发
						//U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed:"+result.rtnCode);
					}
				}
				
				@Override
				public String getGameSign(String appID, String cpID, String ts) {
					return createGameSign(appID+cpID+ts);
				}
			}, gameType);
			
			
		}catch(Exception e){
			state = SDKState.StateInited;
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed. exception:"+e.getMessage());
		}
		
	}
	
	
	public void sendExtraData(UserExtraData data){
		
		if(data.getDataType() == UserExtraData.TYPE_SELECT_SERVER ){
			
			return;
		}		
		
		HashMap<String, String> playerInfo = new HashMap<String, String>();
        
        /**
         * 将用户的等级等信息保存起来，必须的参数为RoleInfo.GAME_RANK(等级)/RoleInfo.GAME_ROLE(角色名称)
         * /RoleInfo.GAME_AREA(角色所属区)/RoleInfo.GAME_SOCIATY(角色所属公会名称)
         * 全部使用String类型存放
         */
        /**
         * the CP save the level, role, area and sociaty of the game player into the SDK
         */
		playerInfo.put(RoleInfo.GAME_RANK, data.getRoleLevel());
		playerInfo.put(RoleInfo.GAME_ROLE, data.getRoleName());
		playerInfo.put(RoleInfo.GAME_AREA, data.getServerID()+"");
		playerInfo.put(RoleInfo.GAME_SOCIATY, data.getServerName()+"");
		GameServiceSDK.addPlayerInfo(U8SDK.getInstance().getContext(), playerInfo,
				new GameEventHandler(){

					@Override
					public void onResult(Result result) {
						if(result.rtnCode == Result.RESULT_OK){
							
						}else{
							Log.e("U8SDK", "add player info failed:" + result.rtnCode);
						}
						
					}

					@Override
					public String getGameSign(String appId, String cpId,
							String ts) {
						return createGameSign(appId+cpId+ts);
					}
			
		});
	}
	
	
	public void pay(PayParams params){
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try{
			
			String orderID = params.getOrderID();
//			String sign = params.getExtension();
			
			this.pay(U8SDK.getInstance().getContext(), params.getPrice()+".00", params.getProductName(), params.getProductDesc(), orderID, new GameEventHandler() {
				
				@Override
				public void onResult(Result result) {
		            Map<String, String> payResp = ((com.huawei.gameservice.sdk.api.PayResult)result).getResultMap();
		            // 支付成功，进行验签
		            
		            Log.d("U8SDK", "pay code:"+payResp.get("returnCode")+";msg:"+payResp.get("errMsg"));
		            
		            if ("0".equals(payResp.get("returnCode")))
		            {
		                if ("success".equals(payResp.get("errMsg")))
		                {
		                	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
		                }
		               
		            }
		            else if ("30002".equals(payResp.get("returnCode")))
		            {
		                U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, "pay timeout");
		            }
		            else if("30000".equals(payResp.get("returnCode"))){
		            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay cancel");
		            }else{
		            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, "pay failed");
		            }
				}
				
				@Override
				public String getGameSign(String appID, String cpID, String ts) {
					return createGameSign(appID+cpID+ts);
				}
			});
			
		}catch(Exception e){
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed.exception:"+e.getMessage());
		}
		
	}
//	
//    private void pay(
//            final Activity activity,
//            final String price,
//            final String productName,
//            final String productDesc,
//            final String requestId,
//            final String sign)
//        {
//            
//            Map<String, Object> payInfo = new HashMap<String, Object>();
//            // 必填字段，不能为null或者""
//            payInfo.put("amount", price+".00");
//            // 必填字段，不能为null或者""
//            payInfo.put("productName", productName);
//            // 必填字段，不能为null或者""
//            payInfo.put("requestId", requestId);
//            // 必填字段，不能为null或者""
//            payInfo.put("productDesc", productDesc);
//            // 必填字段，不能为null或者""，请填写自己的公司名称
//            payInfo.put("userName", this.compName);
//            // 必填字段，不能为null或者""
//            payInfo.put("applicationID", this.appID);
//            // 必填字段，不能为null或者""
//            payInfo.put("userID", this.payID);
//            payInfo.put("sign", sign);
////            payInfo.put("notifyUrl", null);
//            
//            // 必填字段，不能为null或者""，此处写死X6
//            payInfo.put("serviceCatalog", "X6");
//            
//            // 调试期可打开日志，发布时注释掉
//            payInfo.put("showLog", true);
//            
//            // 设置支付界面横竖屏，默认竖屏
//            if(this.orientation == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE){
//            	payInfo.put("screentOrient", 2);
//            }else{
//            	payInfo.put("screentOrient", 1);
//            }
//            
//            
//            Log.d("startPay", "支付请求参数 : " + payInfo.toString());         
//            
////            IHuaweiPay payHelper = new MobileSecurePayHelper();
////            /**
////             * 开始支付
////             */
////            payHelper.startPay(activity, payInfo, handler);
//            
//            GameServiceSDK.startPay(U8SDK.getInstance().getContext(), payInfo, new GameEventHandler() {
//				
//				@Override
//				public void onResult(Result result) {
//		            Map<String, String> payResp = ((com.huawei.gameservice.sdk.api.PayResult)result).getResultMap();
//		            // 支付成功，进行验签
//		            if ("0".equals(payResp.get(PayParameters.returnCode)))
//		            {
//		                if ("success".equals(payResp.get(PayParameters.errMsg)))
//		                {
//		                	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
//		                }
//		               
//		            }
//		            else if ("30002".equals(payResp.get(PayParameters.returnCode)))
//		            {
//		                U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, "pay timeout");
//		            }
//		            else if("30000".equals(payResp.get(PayParameters.returnCode))){
//		            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay cancel");
//		            }else{
//		            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, "pay failed");
//		            }
//				}
//				
//				@Override
//				public String getGameSign(String appID, String cpID, String ts) {
//					return createGameSign(appID+cpID+ts);
//				}
//			});
//            
//    }
//    
//	private String getSign(PayParams data, String privateKey, String requestId){
//		
//		Log.d("startPay", "Now to sign:" + privateKey);
//        Map<String, String> params = new HashMap<String, String>();
//        // 必填字段，不能为null或者""，请填写从联盟获取的支付ID
//        params.put("userID", this.payID);
//        // 必填字段，不能为null或者""，请填写从联盟获取的应用ID
//        params.put("applicationID", this.appID);
//        // 必填字段，不能为null或者""，单位是元，精确到小数点后两位，如1.00
//        params.put("amount", data.getPrice()+".00");
//        // 必填字段，不能为null或者""，道具名称
//        params.put("productName", data.getProductName());
//        // 必填字段，不能为null或者""，道具描述
//        params.put("productDesc", data.getProductDesc());
//        // 必填字段，不能为null或者""，最长30字节，不能重复，否则订单会失败
//        params.put("requestId", requestId);
//        
//        String noSign = HuaweiPayUtil.getSignData(params);
//        Log.d("startPay", "签名参数noSign：" + noSign);
//        
//        // CP必须把参数传递到服务端，在服务端进行签名，然后把sign传递下来使用；服务端签名的代码和客户端一致
//        String sign = Rsa.sign(noSign, privateKey);
//        Log.d("startPay", "签名： " + sign);
//		
//        return sign;
//	}
	
    
	public boolean isLogined(){
		
		return this.state.ordinal() >= SDKState.StateLogined.ordinal();
	}	
	
	public static void tip(final String txt){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				Toast.makeText(U8SDK.getInstance().getContext(), txt, Toast.LENGTH_SHORT);
			}
		});
	}
	
	private String createGameSign(String data){
		
		// 为了安全把浮标密钥放到服务端，并使用https的方式获取下来存储到内存中，CP可以使用自己的安全方式处理
        // For safety, buoy key put into the server and use the https way to get down into the client's memory. 
        // By the way CP can also use their safe approach.
       
		String str = data;
		try {
			String result = RSAUtil.sha256WithRsa(str.getBytes("UTF-8"), buoSecret);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
    public void pay(
            final Activity activity,
            final String price,
            final String productName,
            final String productDesc,
            final String requestId,
                final GameEventHandler handler)
        {
            
            Map<String, String> params = new HashMap<String, String>();
            // 必填字段，不能为null或者""，请填写从联盟获取的支付ID
            // the pay ID is required and can not be null or "" 
            params.put("userID", this.payID);
            // 必填字段，不能为null或者""，请填写从联盟获取的应用ID
            // the APP ID is required and can not be null or "" 
            params.put("applicationID", this.appID);
            // 必填字段，不能为null或者""，单位是元，精确到小数点后两位，如1.00
            // the amount (accurate to two decimal places) is required
            params.put("amount", price);
            // 必填字段，不能为null或者""，道具名称
            // the product name is required and can not be null or "" 
            params.put("productName", productName);
            // 必填字段，不能为null或者""，道具描述
            // the product description is required and can not be null or "" 
            params.put("productDesc", productDesc);
            // 必填字段，不能为null或者""，最长30字节，不能重复，否则订单会失败
            // the request ID is required and can not be null or "". Also it must be unique.
            params.put("requestId", requestId);

            String noSign = getSignData(params);
            LogUtil.d("startPay", "noSign：" + noSign);
            
            // CP必须把参数传递到服务端，在服务端进行签名，然后把sign传递下来使用；服务端签名的代码和客户端一致
            // the CP need to send the params to the server and sign the params on the server , 
            // then the server passes down the sign to client;
            String sign = RSAUtil.sign(noSign, this.privateKey);
            LogUtil.d("startPay", "sign： " + sign);


            Map<String, Object> payInfo = new HashMap<String, Object>();
            // 必填字段，不能为null或者""
            // the amount is required and can not be null or "" 
            payInfo.put("amount", price);
            // 必填字段，不能为null或者""
            // the product name is required and can not be null or ""
            payInfo.put("productName", productName);
            // 必填字段，不能为null或者""
            // the request ID is required and can not be null or ""
            payInfo.put("requestId", requestId);
            // 必填字段，不能为null或者""
            // the product description is required and can not be null or ""
            payInfo.put("productDesc", productDesc);
            // 必填字段，不能为null或者""，请填写自己的公司名称
            // the user name is required and can not be null or "". Input the company name of CP.
            payInfo.put("userName", this.compName);
            // 必填字段，不能为null或者""
            // the APP ID is required and can not be null or "". 
            payInfo.put("applicationID", this.appID);
            // 必填字段，不能为null或者""
            // the user ID is required and can not be null or "". 
            payInfo.put("userID", this.payID);
            // 必填字段，不能为null或者""
            // the sign is required and can not be null or "".
            payInfo.put("sign", sign);
            
            // 必填字段，不能为null或者""，此处写死X6
            // the service catalog is required and can not be null or "".
            payInfo.put("serviceCatalog", "X6");
            

            // 调试期可打开日志，发布时注释掉
            // print the log for demo
            payInfo.put("showLog", true);
            
            if (activity.getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE)
            {
                payInfo.put("screentOrient",
                        2);
            }
            else
            {
                payInfo.put("screentOrient",
                        1);
            }
            
            GameServiceSDK.startPay(activity, payInfo, handler);
            
        }
    
    
        @SuppressWarnings({ "rawtypes", "unchecked" })
		public String getSignData(Map<String, String> params)
        {
          StringBuffer content = new StringBuffer();
          
          List keys = new ArrayList(params.keySet());
          Collections.sort(keys);
          for (int i = 0; i < keys.size(); i++)
          {
            String key = (String)keys.get(i);
            if (!"sign".equals(key))
            {
              String value = (String)params.get(key);
              if (value != null) {
                content.append((i == 0 ? "" : "&") + key + "=" + value);
              }
            }
          }
          return content.toString();
        }	
}
