package com.u8.sdk.base;

import com.u8.sdk.verify.UToken;


public interface IU8SDKListener {
	
	public void onResult(int code, String msg);
	
	public void onLoginResult(String data);
	
	public void onSwitchAccount();
	
	public void onSwitchAccount(String data);
	
	public void onLogout();
	
	public void onAuthResult(UToken authResult);
}
