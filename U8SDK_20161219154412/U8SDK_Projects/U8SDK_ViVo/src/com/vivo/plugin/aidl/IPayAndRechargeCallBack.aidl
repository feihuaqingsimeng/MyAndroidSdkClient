package com.vivo.plugin.aidl;
interface IPayAndRechargeCallBack{
	/**
	*callback of AIDLClient
	*handle by server
	**/
	  void payResult(String transNo,boolean pay_result,String result_code,String pay_msg,String gamePackageName);
     void rechargeResult(String uid,boolean pay_result,String result_code,String pay_msg,String gamePackageName);
}