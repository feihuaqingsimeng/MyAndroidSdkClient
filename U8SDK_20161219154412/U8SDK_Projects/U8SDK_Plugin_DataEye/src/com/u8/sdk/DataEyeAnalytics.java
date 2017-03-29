package com.u8.sdk;

import android.app.Activity;

import com.dataeye.DCAccount;
import com.dataeye.DCAgent;
import com.dataeye.DCItem;
import com.dataeye.DCReportMode;
import com.dataeye.DCTask;
import com.dataeye.DCTaskType;
import com.dataeye.DCVirtualCurrency;
import com.dataeye.plugin.DCLevels;

public class DataEyeAnalytics implements IAnalytics{

	public DataEyeAnalytics(Activity context){
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
			@Override
			public void onPause() {
				DCAgent.onPause(U8SDK.getInstance().getContext());
			}

			@Override
			public void onResume() {
				DCAgent.onResume(U8SDK.getInstance().getContext());
			}
			
			@Override
			public void onDestroy() {
				DCAgent.onKillProcessOrExit();
			}
			
		});
		
		DCAgent.setReportMode(DCReportMode.DC_AFTER_LOGIN);
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

	@Override
	public void startLevel(String level) {
		DCLevels.begin(0, level);
	}

	@Override
	public void failLevel(String level) {
		DCLevels.fail(level, "unknown");
	}

	@Override
	public void finishLevel(String level) {
		DCLevels.complete(level);
	}

	@Override
	public void startTask(String task, String type) {
		DCTask.begin(task, DCTaskType.DC_Daily);
	}

	@Override
	public void failTask(String task) {
		DCTask.fail(task, "unknown");
	}

	@Override
	public void finishTask(String task) {
		DCTask.complete(task);
	}

	@Override
	public void pay(double money, int num) {
		DCVirtualCurrency.paymentSuccess(money, "RMB", "充值平台");
	}

	@Override
	public void buy(String item, int num, double price) {
		Double p = price;
		DCItem.buy(item, "none", num, p.longValue(), "虚拟币", "");
	}

	@Override
	public void use(String item, int num, double price) {
		DCItem.consume(item, "none", num, "使用");
	}

	@Override
	public void bonus(String item, int num, double price, int trigger) {
		DCItem.get(item, "道具", num, "获得");
	}

	@Override
	public void login(String userID) {
		DCAccount.login(userID);
	}

	@Override
	public void logout() {
		DCAccount.logout();
	}

	@Override
	public void levelup(int level) {
		DCAccount.setLevel(level);
	}

}
