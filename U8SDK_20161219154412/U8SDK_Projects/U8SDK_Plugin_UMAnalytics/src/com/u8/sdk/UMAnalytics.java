package com.u8.sdk;

import com.u8.sdk.utils.Arrays;

import android.app.Activity;

public class UMAnalytics implements IAnalytics{

	private String[] supportedMethods = {"startLevel", "failLevel", "finishLevel","pay","buy","use","bonus","login","logout","levelup"};
	
	public UMAnalytics(Activity context){
		UMAnalyticsSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		
		return Arrays.contain(supportedMethods, methodName);
	}

	@Override
	public void startLevel(String level) {
		UMAnalyticsSDK.getInstance().startLevel(level);
	}

	@Override
	public void failLevel(String level) {
		UMAnalyticsSDK.getInstance().failLevel(level);
	}

	@Override
	public void finishLevel(String level) {
		UMAnalyticsSDK.getInstance().finishLevel(level);
		
	}

	@Override
	public void pay(double money, int num) {
		UMAnalyticsSDK.getInstance().pay(money, num);
	}

	@Override
	public void buy(String item, int num, double price) {
		UMAnalyticsSDK.getInstance().buy(item, num, price);
		
	}

	@Override
	public void use(String item, int num, double price) {
		UMAnalyticsSDK.getInstance().use(item, num, price);
	}

	@Override
	public void bonus(String item, int num, double price, int trigger) {
		UMAnalyticsSDK.getInstance().bonus(item, num, price, trigger);
	}

	@Override
	public void login(String userID) {
		UMAnalyticsSDK.getInstance().login(userID);
	}

	@Override
	public void logout() {
		UMAnalyticsSDK.getInstance().logout();
	}

	@Override
	public void levelup(int level) {
		UMAnalyticsSDK.getInstance().levelup(level);
	}

	@Override
	public void startTask(String task, String type) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void failTask(String task) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void finishTask(String task) {
		// TODO Auto-generated method stub
		
	}

}
