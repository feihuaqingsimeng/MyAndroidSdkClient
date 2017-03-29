package com.u8.sdk.test.order;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;

import android.util.Log;

import com.u8.sdk.PayParams;
import com.u8.sdk.SDKTools;
import com.u8.sdk.U8SDK;
import com.u8.sdk.utils.EncryptUtils;
import com.u8.sdk.utils.RSAUtils;
import com.u8.sdk.utils.U8HttpUtils;
import com.u8.sdk.verify.UToken;

public class U8OrderUtils{

	public static final String ORDER_PRIKEY = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAO0m9rBaOFCEj4ncScPeC+6H63XMHhs4xb08lR2TbthAPKIZV3jZB0cuh91M3XJcpdhlHUGbLhbWlmG5xKgN1Lt8Z+QoebfNEyyKM06I9YeDSykwRyEjhhOUgLjeIVV3NI8T/awhl+tb/0yyld+5aoXJKxOx/pzqolzoDRs0omEzAgMBAAECgYBGzwt5PHb0E6CIGS4tPW9ymULEuV2D4z+ncR9U5WCDUSrJe6eSfbqellYazYiRTPh31DkYDa2FRC1CoKUHSJnrjeNR2TMw0WUBFvNcqYe2qOJZg3iOhyUDhIChhQiWWC9VrzAvqSU6tuyKGMy5rAWbfTneEnL7NHsTgRRDC+0JAQJBAPlRGW6T4TnRBtbOpRcMU+jdCyJAK3zwuRO13alhexDLq105D1osg2uP1d3+XvTQudwCGo1qRfBSp/W72fynz5kCQQDzgmLyxGzO1rugtJNMLQTqsRGg8ZUoUPmsEVGbmnHwRzd2OGHWbT1JuIEEb+ivrZV3PfeEObv7fDAT6qIhyiarAkAcd4ka2iG+U0KfpkqtXgf6r7qEt6T/iBDp0js0CuBdY5P2efxpxGlhD7RQu6ml9Gs0Vr0nZnoD3bw1z7QtKBAJAkBiqBjesqZCxs0NtxtWaYbsbwDta/M6elQtWnbtzA0NhEz8IKvC7E9AZvgejBiB1JoRzZFSiPGYWiBAcXduqTAxAkEAqG24ePhjesKoF1Us2ViqgJC7zDd96v+LI5eausw3TfKjO4jj5oMoQiyc+hZFxHYlkyZRfA6XEraF1Rdgngf65w==";
	public static final String ORDER_PUBKEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDtJvawWjhQhI+J3EnD3gvuh+t1zB4bOMW9PJUdk27YQDyiGVd42QdHLofdTN1yXKXYZR1Bmy4W1pZhucSoDdS7fGfkKHm3zRMsijNOiPWHg0spMEchI4YTlIC43iFVdzSPE/2sIZfrW/9MspXfuWqFySsTsf6c6qJc6A0bNKJhMwIDAQAB";
	public static final String SECRET_KEY = "7513a2c235647e3213538c6eb329eec9";
	
	/***
	 * 访问U8Server验证sid的合法性，同时获取U8Server返回的token，userID,sdkUserID信息
	 * 这里仅仅是测试，正式环境下，请通过游戏服务器来获取订单号，不要放在客户端操作
	 * @param result
	 * @return
	 */
	public static U8Order getOrder(String url, PayParams data){
		
		try{
			
			UToken tokenInfo = U8SDK.getInstance().getUToken();
			if(tokenInfo == null){
				Log.e("U8SDK", "The user now not logined. the token is null");
				return null;
			}
			
			Map<String, String> params = new HashMap<String, String>();
			params.put("userID", ""+tokenInfo.getUserID());
			params.put("productID", data.getProductId());
			params.put("productName", data.getProductName());
			params.put("productDesc", data.getProductDesc());
			params.put("money", ""+data.getPrice() * 100);
			params.put("roleID", ""+data.getRoleId());
			params.put("roleName", data.getRoleName());
			params.put("serverID", data.getServerId());
			params.put("serverName", data.getServerName());
			params.put("extension", data.getExtension());
			
			//这里是游戏服务器自己的支付回调地址，可以在下单的时候， 传给u8server。
			//u8server 支付成功之后， 会优先回调这个地址。 如果不传， 则需要在u8server后台游戏管理中配置游戏服务器的支付回调地址
			String gameNotifyUrl = "http://192.168.18.9:8080/pay/game";
			if(gameNotifyUrl != null){
				params.put("notifyUrl", gameNotifyUrl);
			}
			
			String secretKey = SDKTools.getMetaData(U8SDK.getInstance().getContext(), "U8_SECRET_KEY");
			String privateKey = SDKTools.getMetaData(U8SDK.getInstance().getContext(), "U8_PRIVATE_KEY");
			
			if(secretKey == null)secretKey = SECRET_KEY;
			if(privateKey == null)privateKey = ORDER_PRIKEY;
			
			String signType = SDKTools.getMetaData(U8SDK.getInstance().getContext(), "U8_ORDER_SIGN_TYPE");
			//signType = "rsa"; 这里根据u8server使用的是md5还是rsa，来进行切换
			if(signType == null)signType="md5";
			
			params.put("signType", signType);
			
			String sign = generateSign(tokenInfo, gameNotifyUrl, data, secretKey, privateKey, signType);
			params.put("sign", sign);
			
			String orderResult = U8HttpUtils.httpPost(url, params);
			
			Log.d("U8SDK", "The order result is "+orderResult);
			
			return parseOrderResult(orderResult);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
		
	}
	
    private static String generateSign(UToken token, String gameNotifyUrl, PayParams data, String secretKey, String privateKey, String signType) throws UnsupportedEncodingException {

        StringBuilder sb = new StringBuilder();
        sb.append("userID=").append(token.getUserID()).append("&")
        		.append("productID=").append(data.getProductId()).append("&")
                .append("productName=").append(data.getProductName()).append("&")
                .append("productDesc=").append(data.getProductDesc()).append("&")
                .append("money=").append(data.getPrice() * 100).append("&")
                .append("roleID=").append(data.getRoleId()).append("&")
                .append("roleName=").append(data.getRoleName()).append("&")
                .append("serverID=").append(data.getServerId()).append("&")
                .append("serverName=").append(data.getServerName()).append("&")
                .append("extension=").append(data.getExtension());
        
		//这里是游戏服务器自己的支付回调地址，可以在下单的时候， 传给u8server。
		//u8server 支付成功之后， 会优先回调这个地址。 如果不传， 则需要在u8server后台游戏管理中配置游戏服务器的支付回调地址
        //如果传notifyUrl，则notifyUrl参与签名
		if(gameNotifyUrl != null){
			sb.append("&notifyUrl=").append(gameNotifyUrl);
		}
        
        sb.append(secretKey);		//附加上U8Server后台创建游戏时生成的AppSecret
        
        String encoded = URLEncoder.encode(sb.toString(), "UTF-8");	//url encode

        Log.d("U8SDK", "The encoded getOrderID sign is "+encoded);
        

        if("md5".equalsIgnoreCase(signType)){
        	
        	return EncryptUtils.md5(encoded).toLowerCase();
        }

        //如果签名方式是RSA，走下面方式
        String sign = RSAUtils.sign(encoded, ORDER_PRIKEY, "UTF-8", "SHA1withRSA");
        
        Log.d("U8SDK", "The getOrderID sign is "+sign);
        
        return sign;

    }
	
	private static U8Order parseOrderResult(String orderResult){
		
		try {
			JSONObject jsonObj = new JSONObject(orderResult);
			int state = jsonObj.getInt("state");
			
			if(state != 1){
				Log.d("U8SDK", "get order failed. the state is "+ state);
				return null;
			}
			
			JSONObject jsonData = jsonObj.getJSONObject("data");
			
			return new U8Order(jsonData.getString("orderID"), jsonData.getString("extension"));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
