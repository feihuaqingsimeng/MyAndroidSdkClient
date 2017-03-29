package com.vivo.plugin.aidl;
interface ISinglePayCallBack{
	/**
	*callback of AIDLClient
	*handle by server
	**/
	  void payResult(String transNo,boolean pay_result,String result_code,String pay_msg,String gamePackageName);
}