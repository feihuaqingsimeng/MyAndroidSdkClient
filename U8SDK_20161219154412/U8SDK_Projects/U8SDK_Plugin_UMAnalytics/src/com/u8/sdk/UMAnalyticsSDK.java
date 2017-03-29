package com.u8.sdk;

import com.umeng.analytics.game.UMGameAgent;

public class UMAnalyticsSDK {

	private static UMAnalyticsSDK instance;
	
	private int paySource = 21;
	
	private UMAnalyticsSDK(){}
	
	public static UMAnalyticsSDK getInstance(){
		if(instance == null){
			instance = new UMAnalyticsSDK();
		}
		return instance;
	}
	
	public void initSDK(SDKParams params){
		
		this.paySource = params.getInt("UMENG_PAYSOURCE");
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			@Override
			public void onPause() {
				UMGameAgent.onPause(U8SDK.getInstance().getContext());
			}

			@Override
			public void onResume() {
				UMGameAgent.onResume(U8SDK.getInstance().getContext());
			}			
		});
		
		UMGameAgent.setDebugMode(true);
		UMGameAgent.init(U8SDK.getInstance().getContext());
		
	}
	
	/**
	 * 在游戏开启新的关卡的时候调用 UMGameAgent.startLevel(level) 方法，在关卡失败的时候调用
	 *  UMGameAgent.failLevel(level) 方法，在成功过关的时候调用 UMGameAgent.finishLevel(level) 方法。
	 *  调用 failLevel 或 finishLevel 的时候会计算从 startLevel 开始的时长，
	 *  作为这一关卡的耗时。level 字段最好为非空可排序的字符串。
	 *  SDK 会默认减去程序切入后台的时间，可以设置 UMGameAgent.setTraceSleepTime(false); 
	 *  来关闭默认设置，这样统计到的关卡时长是从 startLevel 到 failLvel(finishLevel) 之间的真实时长。
	 * @param level
	 */
	public void startLevel(String level){
		UMGameAgent.startLevel(level);
	}
	
	public void failLevel(String level){
		UMGameAgent.failLevel(level);
	}
	
	public void finishLevel(String level){
		UMGameAgent.finishLevel(level);
	}
	
	/***
	 * 在游戏中充值或者购买虚拟币的时候调用此方法，比如通过支付宝用 10元钱 购买了 1000 个金币，可以这样调用：
	 * UMGameAgent.pay(10,1000,2);
	 * 
	 * 
	 * @param money 本次消费的金额(非负数) 
	 * @param num 购买数量
	 */
	public void pay(double money, int num){
		UMGameAgent.pay(money, num, paySource);
	}
	
	/**
	 * 游戏中所有虚拟消费，比如用金币购买某个道具都使用 buy 方法
	 * 
	 * 比如在游戏中使用金币购买了1个头盔，一个头盔价值 1000 金币，可以这样统计：
	 * UMGameAgent.buy("helmet", 1, 1000);
	 * 
	 * @param item 购买物品的ID 
	 * @param num 购买物品数量 
	 * @param price 购买物品的单价(虚拟币)
	 */
	public void buy(String item, int num, double price){
		UMGameAgent.buy(item, num, price);
	}
	
	/**
	 * 游戏中的物品损耗，比如使用了2瓶魔法药水,每个需要50个虚拟币，可以这样统计：
	 * UMGameAgent.use("magic_bottle", 2 , 50);
	 * 
	 * @param item 消耗的物品ID
	 * @param num 消耗物品数量
	 * @param price 物品单价（虚拟币）
	 */
	public void use(String item, int num, double price){
		UMGameAgent.use(item, num, price);
	}
	
	/***
	 * 针对游戏中额外获得的虚拟币进行统计，比如系统赠送，节日奖励，打怪掉落。
	 * 如果是掉落道具,比如掉落一把价值100金币的宝剑可以这样调用：
	 * UMGameAgent.bonus("sword", 1, 100, 1);
	 * @param item 奖励物品ID 
	 * @param num 奖励物品数量 
	 * @param price 物品的虚拟币单价 
	 * @param trigger 触发奖励的事件, 取值在 1~10 之间，“1”已经被预先定义为“系统奖励”， 2~10 需要在网站设置含义。
	 */
	public void bonus(String item, int num, double price, int trigger){
		UMGameAgent.bonus(item, num, price, trigger);
	}
	
	/***
	 * 玩家帐号登录统计
	 */
	public void login(String userID){
		UMGameAgent.onProfileSignIn("C_"+U8SDK.getInstance().getCurrChannel(), userID);
	}
	
	/**
	 * 玩家帐号登出统计
	 */
	public void logout( ){
		UMGameAgent.onProfileSignOff();
	}
	
	/**
	 * 当玩家建立角色或者升级时，需调用此接口 
	 * @param level
	 */
	public void levelup(int level){
		UMGameAgent.setPlayerLevel(level);
	}
}
