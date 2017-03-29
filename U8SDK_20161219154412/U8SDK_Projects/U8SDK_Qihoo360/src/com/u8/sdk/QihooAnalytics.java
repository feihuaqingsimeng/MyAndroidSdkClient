package com.u8.sdk;

import android.app.Activity;

import com.qihoo.stat.QHStatDo;
import com.u8.sdk.utils.Arrays;

public class QihooAnalytics implements IAnalytics{

	private String[] supportedMethods = {"startLevel", "failLevel", "finishLevel",
										 "startTast", "failTask", "finishTask",
										 "pay","buy","use","login"};
	
	public QihooAnalytics(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {

		return Arrays.contain(supportedMethods, methodName);
	}

	@Override
	public void startLevel(String level) {
		QHStatDo.startLevel(level);
	}

	@Override
	public void failLevel(String level) {
		QHStatDo.failLevel(level, "");
	}

	@Override
	public void finishLevel(String level) {
		QHStatDo.finishLevel(level);
	}

	@Override
	public void startTask(String task, String type) {
		QHStatDo.startTask(task, type);
	}

	@Override
	public void failTask(String task) {
		QHStatDo.failTask(task, "");
	}

	@Override
	public void finishTask(String task) {
		QHStatDo.finishTask(task);
	}

	@Override
	public void pay(double money, int num) {
		
		//支付来源在360里面，拿不到，这里直接为0
		QHStatDo.pay((int)money, num, 0);
	}

	@Override
	public void buy(String item, int num, double price) {
		QHStatDo.buy(item, num, (int)price);
	}

	@Override
	public void use(String item, int num, double price) {
		QHStatDo.use(item, num, (int)price);
	}

	@Override
	public void bonus(String item, int num, double price, int trigger) {
		
	}

	@Override
	public void login(String userID) {
		QHStatDo.player(userID, 0, 0, "unknown", "", "", "");
	}

	@Override
	public void logout() {
		
	}

	@Override
	public void levelup(int level) {

	}

}
