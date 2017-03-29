package com.u8.sdk;

import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.CrashReport.UserStrategy;

public class BuglySDK {

	private static BuglySDK instance;
	
	private String appID;
	
	private BuglySDK(){
		
	}
	
	public static BuglySDK getInstance(){
		if(instance == null){
			instance = new BuglySDK();
		}
		return instance;
	}
	
	public void initSDK(){
		
		SDKParams sdkParams = U8SDK.getInstance().getSDKParams();
		this.appID = sdkParams.getString("Bugly_AppID");
		
		UserStrategy strategy = new UserStrategy(U8SDK.getInstance().getApplication());
		
		strategy.setAppChannel(U8SDK.getInstance().getCurrChannel()+"");
		strategy.setAppReportDelay(1000);
		
		
		CrashReport.initCrashReport(U8SDK.getInstance().getApplication(), this.appID, true, strategy);
		
//测试
//		CrashReport.testJavaCrash ();
//		CrashReport.testNativeCrash();
		
	}
	
}
