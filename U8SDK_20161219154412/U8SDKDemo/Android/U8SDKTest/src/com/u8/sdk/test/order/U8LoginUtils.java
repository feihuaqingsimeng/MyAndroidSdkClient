package com.u8.sdk.test.order;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import android.util.Log;

import com.u8.sdk.PayParams;
import com.u8.sdk.U8SDK;
import com.u8.sdk.utils.EncryptUtils;
import com.u8.sdk.utils.U8HttpUtils;
import com.u8.sdk.verify.UToken;

public class U8LoginUtils {

	private static final String LOGIN_URL = "http://192.168.1.106:8080/user/loginServer";
	
	/***
	 * 模拟登录游戏服
	 * @param result
	 * @return
	 */
	public static U8Account login(String loginUrl){
		
		try{
			
			UToken tokenInfo = U8SDK.getInstance().getUToken();
			if(tokenInfo == null){
				Log.e("U8SDK", "The user now not logined. the token is null");
				return null;
			}
			
			Map<String, String> params = new HashMap<String, String>();
			params.put("userID", ""+tokenInfo.getUserID());
			params.put("token", tokenInfo.getToken());
			
            StringBuilder sb = new StringBuilder();
            sb.append("userID=").append(tokenInfo.getUserID())
                    .append("token=").append(tokenInfo.getToken())
                    .append(U8SDK.getInstance().getAppKey());			
			
			String sign = EncryptUtils.md5(sb.toString());
			params.put("sign", sign);
			
			String loginResult = U8HttpUtils.httpPost(loginUrl, params);
			
			Log.d("U8SDK", "The login result is "+loginResult);
			
			return parseLoginResult(loginResult);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	private static U8Account parseLoginResult(String orderResult){
		
		try {
			JSONObject jsonObj = new JSONObject(orderResult);
			int state = jsonObj.getInt("state");
			
			if(state != 0){
				Log.d("U8SDK", "login game failed. the state is "+ state);
				return null;
			}
			
			JSONObject jsonData = jsonObj.getJSONObject("data");
			
			return new U8Account(jsonData.getString("accountID"), jsonData.getString("accountName"));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}	
	
}
