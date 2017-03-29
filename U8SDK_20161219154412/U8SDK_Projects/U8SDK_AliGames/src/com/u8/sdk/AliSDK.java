package com.u8.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.widget.Toast;
import cn.uc.gamesdk.UCGameSdk;
import cn.uc.gamesdk.even.SDKEventKey;
import cn.uc.gamesdk.even.SDKEventReceiver;
import cn.uc.gamesdk.even.Subscribe;
import cn.uc.gamesdk.exception.AliLackActivityException;
import cn.uc.gamesdk.exception.AliNotInitException;
import cn.uc.gamesdk.open.GameParamInfo;
import cn.uc.gamesdk.open.OrderInfo;
import cn.uc.gamesdk.open.UCOrientation;
import cn.uc.gamesdk.param.SDKParamKey;

import com.u8.sdk.log.Log;
import com.u8.sdk.utils.EncryptUtils;
import com.u8.sdk.verify.UToken;

public class AliSDK {

	private static AliSDK instance;
	
	private int cpId;
	private int gameId;
	private String apiKey;
	private boolean debugMode;
	private String orientation;
	
	public static AliSDK getInstance(){
		if(instance == null){
			instance = new AliSDK();
		}
		return instance;
	}
	
	private void parseSDKParams(SDKParams params) {
		this.gameId = params.getInt("UCGameId");
		this.cpId = params.getInt("UCCpId");
		this.apiKey = params.getString("UCApiKey");

		this.debugMode = params.getBoolean("UCDebugMode");
		this.orientation = params.getString("ali_screen_orientation");
		
		//this.logLevel = this.debugMode ? UCLogLevel.DEBUG : UCLogLevel.ERROR;
	}
	
	private SDKEventReceiver eventReceiver = new SDKEventReceiver(){
		
        @Subscribe(event = SDKEventKey.ON_INIT_SUCC)
        private void onInitSucc() {
            //初始化成功
        	U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
        }

        @Subscribe(event = SDKEventKey.ON_INIT_FAILED)
        private void onInitFailed(String data) {
            //初始化失败
        	U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init failed");
        }

        @Subscribe(event = SDKEventKey.ON_LOGIN_SUCC)
        private void onLoginSucc(String sid) {
        	
        	U8SDK.getInstance().onLoginResult(sid);
        }

        @Subscribe(event = SDKEventKey.ON_LOGIN_FAILED)
        private void onLoginFailed(String desc) {
        	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed."+desc);
        }

        @Subscribe(event = SDKEventKey.ON_LOGOUT_SUCC)
        private void onLogoutSucc() {
        	U8SDK.getInstance().onLogout();
        }

        @Subscribe(event = SDKEventKey.ON_LOGOUT_FAILED)
        private void onLogoutFailed() {
        	
        }

        @Subscribe(event = SDKEventKey.ON_EXIT_SUCC)
        private void onExit(String desc) {
        	U8SDK.getInstance().getContext().finish();
            android.os.Process.killProcess(android.os.Process.myPid());
        }

        @Subscribe(event = SDKEventKey.ON_EXIT_CANCELED)
        private void onExitCanceled(String desc) {
     
        }	
        
        @Subscribe(event = SDKEventKey.ON_CREATE_ORDER_SUCC)
        private void onCreateOrderSucc(OrderInfo orderInfo) {
        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
        }

        @Subscribe(event = SDKEventKey.ON_PAY_USER_EXIT)
        private void onPayUserExit(OrderInfo orderInfo) {
        	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed");
        }        
	};
	
	public void initSDK(SDKParams data){
		try{
			
			this.parseSDKParams(data);
			
			UCGameSdk.defaultSdk().registeSDKEventReceiver(eventReceiver);
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				@Override
				public void onDestroy() {
					UCGameSdk.defaultSdk().unregisterSDKEventReceiver(eventReceiver);
				}
			});
			
	        GameParamInfo gameParamInfo = new GameParamInfo();
	        gameParamInfo.setCpId(this.cpId);
	        gameParamInfo.setGameId(this.gameId);
	        gameParamInfo.setServerId(0);
	        
	        
	        
			// 设置SDK登录界面为竖屏
	        if("landscape".equalsIgnoreCase(this.orientation)){
	        	gameParamInfo.setOrientation(UCOrientation.LANDSCAPE);
	        }else{
	        	gameParamInfo.setOrientation(UCOrientation.PORTRAIT);
	        }        
	        
			cn.uc.gamesdk.param.SDKParams sdkParams = new cn.uc.gamesdk.param.SDKParams();
	        sdkParams.put(SDKParamKey.GAME_PARAMS, gameParamInfo);

	        //FIXME always debug
	        sdkParams.put(SDKParamKey.DEBUG_MODE, this.debugMode);

	        UCGameSdk.defaultSdk().initSdk(U8SDK.getInstance().getContext(), sdkParams);			
			
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, e.getMessage());
			e.printStackTrace();
		}
	}
	
	public void login(){
		try{
			
			UCGameSdk.defaultSdk().login(U8SDK.getInstance().getContext(), null);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void submitExtraData(UserExtraData data){
		
		cn.uc.gamesdk.param.SDKParams sdkParams = new cn.uc.gamesdk.param.SDKParams();
        sdkParams.put(SDKParamKey.STRING_ROLE_ID, data.getRoleID());
        sdkParams.put(SDKParamKey.STRING_ROLE_NAME, data.getRoleName());
        sdkParams.put(SDKParamKey.LONG_ROLE_LEVEL, Long.valueOf(data.getRoleLevel()));
        sdkParams.put(SDKParamKey.STRING_ZONE_ID, data.getServerID()+"");
        sdkParams.put(SDKParamKey.STRING_ZONE_NAME, data.getServerName());
        sdkParams.put(SDKParamKey.LONG_ROLE_CTIME, data.getRoleCreateTime());

        try {
            UCGameSdk.defaultSdk().submitRoleData(U8SDK.getInstance().getContext(), sdkParams);
            Log.d("uc", "submitExtraData "+data.getRoleName());
        } catch (Exception e) {
        	Log.d("uc", "submitExtraData error.............");
            e.printStackTrace();
        }	
	}
	
	public void logout(){
		try {
			UCGameSdk.defaultSdk().logout(U8SDK.getInstance().getContext(), null);
		} catch (AliLackActivityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AliNotInitException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void exitSDK(){
		try {
			UCGameSdk.defaultSdk().exit(U8SDK.getInstance().getContext(), null);
		} catch (AliLackActivityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AliNotInitException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void pay(PayParams data){
		try{
			
			UToken token = U8SDK.getInstance().getUToken();
			if(token == null){
				Toast.makeText(U8SDK.getInstance().getContext(), "登录失效，请重新登录", Toast.LENGTH_SHORT).show();
				return;
			}
			
//			JSONObject json = new JSONObject(data.getExtension());
//			String payCallbackUrl = json.getString("payCallbackUrl");
//			String sign = json.getString("sign");
//			String accountId = json.getString("accountId");
			
            Map<String, String> paramMap = new HashMap<String, String>();
            paramMap.put(SDKParamKey.CALLBACK_INFO, data.getOrderID());
            paramMap.put(SDKParamKey.SERVER_ID, "0");
            paramMap.put(SDKParamKey.ROLE_ID, data.getRoleId());
            paramMap.put(SDKParamKey.ROLE_NAME, data.getRoleName());
            paramMap.put(SDKParamKey.GRADE, data.getRoleLevel()+"");
//            paramMap.put(SDKParamKey.NOTIFY_URL, ""); //在后台配置
            paramMap.put(SDKParamKey.AMOUNT, data.getPrice()+".00");
            paramMap.put(SDKParamKey.CP_ORDER_ID, data.getOrderID());
            paramMap.put(SDKParamKey.ACCOUNT_ID, token.getSdkUserID());
            
            String signStr = generateUrlSortedParamString(paramMap, true);
            signStr += this.apiKey;
            
            String sign = EncryptUtils.md5(signStr).toLowerCase();
            
            Log.d("U8SDK", "pay signStr:"+signStr);
            Log.d("U8SDK", "sign:"+sign);
            
            paramMap.put(SDKParamKey.SIGN_TYPE, "MD5");

            cn.uc.gamesdk.param.SDKParams sdkParams = new cn.uc.gamesdk.param.SDKParams();

            Map<String, Object> map = new HashMap<String, Object>();
            map.putAll(paramMap);
            sdkParams.putAll(map);

            sdkParams.put(SDKParamKey.SIGN, sign);
            UCGameSdk.defaultSdk().pay(U8SDK.getInstance().getContext(), sdkParams);		
			
		}catch(Exception e){
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, e.getMessage());
			e.printStackTrace();
		}
	}
	
    public static String generateUrlSortedParamString(Map<String,String> params, boolean nullExcluded) {

        StringBuffer content = new StringBuffer();
        // 按照key做排序
        List<String> keys = new ArrayList<String>(params.keySet());
        Collections.sort(keys);
        for (int i = 0; i < keys.size(); i++) {
            String key = keys.get(i);
            String value = params.get(key) == null ? "" : params.get(key).toString();
            if(nullExcluded && value.length() == 0){
                continue;
            }
            content.append( key + "=" + value);
//            if(!StringUtils.isEmpty(splitChar)){
//                content.append(splitChar);
//            }
        }
//        if(content.length() > 0 && !StringUtils.isEmpty(splitChar)){
//            content.deleteCharAt(content.length() - 1);
//        }

        return content.toString();
    }	
	
}
