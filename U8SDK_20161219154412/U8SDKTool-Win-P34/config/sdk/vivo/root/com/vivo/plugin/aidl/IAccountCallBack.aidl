package com.vivo.plugin.aidl;
interface IAccountCallBack{
	/**
	*callback of AIDLClient
	*handle by server
	**/
	void loginResult(String name,String openId,String token);
	void loginCancel();
	void updateCancel();
}