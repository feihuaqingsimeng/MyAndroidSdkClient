package com.u8.sdk.ane;

import org.json.JSONException;
import org.json.JSONObject;

import android.text.TextUtils;
import android.util.Log;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREInvalidObjectException;
import com.adobe.fre.FREObject;
import com.adobe.fre.FRETypeMismatchException;
import com.adobe.fre.FREWrongThreadException;
import com.u8.sdk.PayParams;
import com.u8.sdk.U8SDK;
import com.u8.sdk.UserExtraData;
import com.u8.sdk.plugin.U8Pay;
import com.u8.sdk.plugin.U8User;

public class U8Function implements FREFunction{

	private String funcName;
	
	public U8Function(String funcName){
		this.funcName = funcName;
	}
	
	@Override
	public FREObject call(final FREContext context, final FREObject[] params) {
		
		if(TextUtils.isEmpty(this.funcName)){
			Log.e("U8SDK_ANE", "the funcName is null");
			return null;
		}
		
		Log.d("U8SDK_ANE", "funcName:"+funcName+";params:"+params);
		
		try{
			if(funcName.equals(U8ANEExtension.FUC_SUPPORT_ACCOUNT_CENTER)){
				boolean support = U8User.getInstance().isSupport("showAccountCenter");
				return FREObject.newObject(support);
			}else if(funcName.equals(U8ANEExtension.FUC_SUPPORT_EXIT)){
				boolean support = U8User.getInstance().isSupport("exit");
				return FREObject.newObject(support);
			}else if(funcName.equals(U8ANEExtension.FUC_SUPPORT_LOGOUT)){
				boolean support = U8User.getInstance().isSupport("logout");
				return FREObject.newObject(support);
			}
			
			context.getActivity().runOnUiThread(new Runnable() {
				
				@Override
				public void run() {
					if(funcName.equals(U8ANEExtension.FUC_LOG)){
						try {
							String log = params[0].getAsString();
							Log.d("U8SDK_ANE", log);
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FRETypeMismatchException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FREInvalidObjectException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FREWrongThreadException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
					}
					else if(funcName.equals(U8ANEExtension.FUC_INIT)){
						U8SDK.getInstance().init(context.getActivity());
						
					}else if(funcName.equals(U8ANEExtension.FUC_LOGIN)){
						U8User.getInstance().login();
					}else if(funcName.equals(U8ANEExtension.FUC_PAY)){
						try {
							String json = params[0].getAsString();
							Log.d("U8SDK_ANE", "pay data:"+json);
							PayParams data = parsePayParams(json);
							U8Pay.getInstance().pay(data);
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FRETypeMismatchException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FREInvalidObjectException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FREWrongThreadException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}


					}else if(funcName.equals(U8ANEExtension.FUC_ACCOUNT_CENTER)){
						U8User.getInstance().showAccountCenter();
					}else if(funcName.equals(U8ANEExtension.FUC_LOGOUT)){
						U8User.getInstance().logout();
					}else if(funcName.equals(U8ANEExtension.FUC_SWITCH)){
						U8User.getInstance().switchLogin();
					}else if(funcName.equals(U8ANEExtension.FUC_SUBMIT)){
						try {
							String json = params[0].getAsString();
							UserExtraData data = parseGameData(json); 
							U8User.getInstance().submitExtraData(data);
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FRETypeMismatchException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FREInvalidObjectException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (FREWrongThreadException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

					}else if(funcName.equals(U8ANEExtension.FUC_EXIT)){
						U8User.getInstance().exit();
					}else{
						Log.e("U8SDK_ANE", "the funcName now not supported in U8Function.java");
					}
				}
			});
		}catch(Exception e){
			e.printStackTrace();
		}
		

		
		return null;
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
}
