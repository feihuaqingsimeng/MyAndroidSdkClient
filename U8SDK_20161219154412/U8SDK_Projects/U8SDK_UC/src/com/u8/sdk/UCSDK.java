package com.u8.sdk;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.res.Configuration;
import cn.uc.gamesdk.UCGameSdk;
import cn.uc.gamesdk.exception.UCCallbackListenerNullException;
import cn.uc.gamesdk.exception.UCMissActivityException;
import cn.uc.gamesdk.open.GameParamInfo;
import cn.uc.gamesdk.open.OrderInfo;
import cn.uc.gamesdk.open.PaymentInfo;
import cn.uc.gamesdk.open.UCCallbackListener;
import cn.uc.gamesdk.open.UCGameSdkStatusCode;
import cn.uc.gamesdk.open.UCLogLevel;
import cn.uc.gamesdk.open.UCOrientation;

public class UCSDK {

	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;

	private static UCSDK instance;
	
	private int cpId;
	private int gameId;
	private boolean debugMode = true;
	
	private boolean isSwitchAccount = false;
	
	private UCSDK(){
		
		
	}
	
	public static UCSDK getInstance(){
		if(instance == null){
			instance = new UCSDK();
		}
		return instance;
	}
	
	private void parseSDKParams(SDKParams params) {
		this.gameId = params.getInt("UCGameId");
		this.cpId = params.getInt("UCCpId");		

		this.debugMode = params.getBoolean("UCDebugMode");
		
		//this.logLevel = this.debugMode ? UCLogLevel.DEBUG : UCLogLevel.ERROR;
	}
	
	public void initSDK(Activity context, SDKParams params)
	{
		this.parseSDKParams(params);
		this.initSDK(context);
	}
	
	public void logout()
	{
		UCGameSdk.defaultSdk().logout();
	}
	
	public void switchAccount(){
		this.isSwitchAccount = true;
		logout();
	}
	
	/**
	 * 必接功能<br>
	 * sdk初始化功能<br>
	 */
	public void initSDK(final Activity context) {

		this.state = SDKState.StateIniting;

		try {

			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				
				@Override
				public void onBackPressed() {
					ucSdkExit(context);
				}
				
				@Override
				public void onDestroy() {
					ucSdkDestoryFloatButton(context);
				}		
				
			});	
			
			GameParamInfo gpi = new GameParamInfo();// 下面的值仅供参考
			gpi.setCpId(this.cpId);
			gpi.setGameId(this.gameId);
			gpi.setServerId(0); // 服务器ID可根据游戏自身定义设置，或传入0

			gpi.setEnablePayHistory(true);//开启查询充值历史功能 
			gpi.setEnableUserChange(true);//开启账号切换功能,默认关闭

			// 设置SDK登录界面为横屏，个人中心及充值页面默认为强制竖屏，无法修改
			// UCGameSDK.defaultSDK().setOrientation(UCOrientation.LANDSCAPE);

			// 设置SDK登录界面为竖屏
			if (U8SDK.getInstance().getContext().getResources().getConfiguration().orientation
					== Configuration.ORIENTATION_LANDSCAPE){
				gpi.setOrientation(UCOrientation.LANDSCAPE);
			}else{
				gpi.setOrientation(UCOrientation.PORTRAIT);
			}

			// setUIStyle已过时，不需调用。
			// UCGameSDK.defaultSDK().setUIStyle(UCUIStyle.STANDARD);
			UCGameSdk.defaultSdk().setLogoutNotifyListener(new UCCallbackListener<String>() {
				
				@Override
				public void callback(int code, String msg) {
					if(code == UCGameSdkStatusCode.SUCCESS){
						if(isSwitchAccount){
							login();
							return;
						}else{
							U8SDK.getInstance().onLogout();	
						}
						
					}else{
						U8SDK.getInstance().onResult(U8Code.CODE_LOGOUT_FAIL, msg);
					}
				}
			});
			

			UCGameSdk.defaultSdk().initSdk(context, UCLogLevel.DEBUG,
					this.debugMode, gpi,
					new UCCallbackListener<String>() {
						@Override
						public void callback(int code, String msg) {
													
							if(code == UCGameSdkStatusCode.SUCCESS){
								if(state != SDKState.StateIniting){
									U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "ucsdk init fail. the state is:"+state);
									return;
								}
								
								state = SDKState.StateInited;
								U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "ucsdk init success");
								
								if(loginAfterInit){
									loginAfterInit = false;
									login();
								}								
							}else{
								
								state = SDKState.StateDefault;
								U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "ucsdk init fail.message:"+msg);								
							}
						}
					});
		} catch (UCCallbackListenerNullException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void login(){
		
		this.isSwitchAccount = false;
		
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			loginAfterInit = true;
			initSDK(U8SDK.getInstance().getContext());
			return;
		}		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try {
			state = SDKState.StateLogin;
			UCGameSdk.defaultSdk().login(new UCCallbackListener<String>() {
				
				@Override
				public void callback(int code, String msg) {
					// 登录成功。此时可以获取sid。并使用sid进行游戏的登录逻辑。
					// 客户端无法直接获取UCID
					if (code == UCGameSdkStatusCode.SUCCESS) {
						state = SDKState.StateLogined;
						String sid = UCGameSdk.defaultSdk().getSid();
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, sid);
					
						U8SDK.getInstance().onLoginResult(sid);					
						// 执行悬浮按钮创建方法
						ucSdkCreateFloatButton(U8SDK.getInstance().getContext());
						// 执行悬浮按钮显示方法
						ucSdkShowFloatButton(U8SDK.getInstance().getContext());
						return;
					}else if(code != UCGameSdkStatusCode.LOGIN_EXIT){
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, msg);
					}

					// 登录失败。应该先执行初始化成功后再进行登录调用。
					if (code == UCGameSdkStatusCode.NO_INIT) {
						// 没有初始化就进行登录调用，需要游戏调用SDK初始化方法
						initSDK(U8SDK.getInstance().getContext());
					}

					// 登录退出。该回调会在登录界面退出时执行。
					if (code == UCGameSdkStatusCode.LOGIN_EXIT) {
						// 登录界面关闭，游戏需判断此时是否已登录成功进行相应操作
					}				
				}
			});
		} catch (UCCallbackListenerNullException e) {
			e.printStackTrace();
		}
		
	}
	
	//提交扩展数据
	public void submitExtendData(UserExtraData extraData){
		
		if(extraData.getDataType() == UserExtraData.TYPE_SELECT_SERVER ||
				extraData.getDataType() == UserExtraData.TYPE_EXIT_GAME){
			
			return;
		}
		
		JSONObject jsonData = new JSONObject();
		try {
			jsonData.put("roleId", extraData.getRoleID());
			jsonData.put("roleName", extraData.getRoleName());
			jsonData.put("roleLevel", extraData.getRoleLevel());
			jsonData.put("zoneId", extraData.getServerID());
			jsonData.put("zoneName", extraData.getServerName());
			
			long ctime = extraData.getRoleCreateTime();
			if(ctime <= 0){
				ctime = System.currentTimeMillis() / 1000;
			}
			
			long mtime = extraData.getRoleLevelUpTime();
			if(mtime <= 0){
				mtime = System.currentTimeMillis() / 1000;
			}
			jsonData.put("roleCTime", ctime);
			jsonData.put("roleLevelMTime", mtime);
			
			UCGameSdk.defaultSdk().submitExtendData("loginGameRole", jsonData);
			
		} catch (JSONException e) {
			e.printStackTrace();
		}

	}
	
	private PaymentInfo decodePayParams(PayParams payParams){
		
		PaymentInfo pInfo = new PaymentInfo(); // 创建Payment对象，用于传递充值信息

		// 设置充值自定义参数，此参数不作任何处理，
		// 在充值完成后，sdk服务器通知游戏服务器充值结果时原封不动传给游戏服务器传值，字段为服务端回调的callbackInfo字段
		if(!SDKTools.isNullOrEmpty(payParams.getOrderID())){
			pInfo.setCustomInfo(payParams.getOrderID());
		}

		// 非必选参数，可不设置，此参数已废弃,默认传入0即可。
		// 如无法支付，请在开放平台检查是否已经配置了对应环境的支付回调地址，如无请配置，如有但仍无法支付请联系UC技术接口人。
		pInfo.setServerId(0);

		pInfo.setRoleId(payParams.getRoleId()); // 设置用户的游戏角色的ID，此为必选参数，请根据实际业务数据传入真实数据
		pInfo.setRoleName(payParams.getRoleName()); // 设置用户的游戏角色名字，此为必选参数，请根据实际业务数据传入真实数据
		pInfo.setGrade(""+payParams.getRoleLevel()); // 设置用户的游戏角色等级，此为可选参数

//		pInfo.setTransactionNumCP(transactionNumCP)
		// 非必填参数，设置游戏在支付完成后的游戏接收订单结果回调地址，必须为带有http头的URL形式。
		//pInfo.setNotifyUrl("http://192.168.1.1/notifypage.do");

		// 当传入一个amount作为金额值进行调用支付功能时，SDK会根据此amount可用的支付方式显示充值渠道
		// 如你传入6元，则不显示充值卡选项，因为市面上暂时没有6元的充值卡，建议使用可以显示充值卡方式的金额
		pInfo.setAmount(payParams.getPrice());// 设置充值金额，此为可选参数
		
		return pInfo;
	}
	
	public void pay(Activity context, PayParams data){
		
		try {
			if(!isInited()){
				U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "The sdk is not inited.");
				return;
			}
			
			if(!SDKTools.isNetworkAvailable(context)){
				U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
				return;
			}
			
			PaymentInfo pInfo = decodePayParams(data);
			
			UCGameSdk.defaultSdk().pay(pInfo,
					new UCCallbackListener<OrderInfo>() {

						@Override
						public void callback(int code, OrderInfo orderInfo) {
							if (code == UCGameSdkStatusCode.NO_INIT) {
								// 没有初始化就进行登录调用，需要游戏调用SDK初始化方法
								U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "The SDK is not inited");
								return;
							}	
							
							if (code == UCGameSdkStatusCode.PAY_USER_EXIT) {
								// 用户退出充值界面。
								U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay cancel");
								return;
							}								
							
							if (code == UCGameSdkStatusCode.SUCCESS) {
								// 成功充值
								if (orderInfo != null) {
									String ordereId = orderInfo.getOrderId();// 获取订单号
									float orderAmount = orderInfo.getOrderAmount();// 获取订单金额
									int payWay = orderInfo.getPayWay();
									String payWayName = orderInfo.getPayWayName();
									System.out.print(ordereId + "," + orderAmount + ","
											+ payWay + "," + payWayName);
									
									U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "ucsdk pay success.");
									
								}
							}else{
								U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "ucsdk pay failed.");
							}
						
							
						}
					});				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	/**
	 * 必接功能<br>
	 * 悬浮按钮创建及显示<br>
	 * 悬浮按钮必须保证在SDK进行初始化成功之后再进行创建需要在UI线程中调用<br>
	 */
	private void ucSdkCreateFloatButton(final Activity context) {
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			public void run() {
				UCGameSdk.defaultSdk().createFloatButton(context);
			}
		});
	}	
	
	/**
	 * 必接功能<br>
	 * 悬浮按钮显示<br>
	 * 悬浮按钮显示需要在UI线程中调用<br>
	 */
	private void ucSdkShowFloatButton(final Activity context) {
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			public void run() {
				// 显示悬浮图标，游戏可在某些场景选择隐藏此图标，避免影响游戏体验
				UCGameSdk.defaultSdk().showFloatButton(context, 100, 50);
			}
		});
	}
	
	/**
	 * 必接功能<br>
	 * 悬浮按钮销毁<br>
	 * 悬浮按钮销毁需要在UI线程中调用<br>
	 */
	private void ucSdkDestoryFloatButton(final Activity context) {
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			public void run() {
				// 悬浮按钮销毁功能
				UCGameSdk.defaultSdk().destoryFloatButton(context);
			}
		});
	}	
	
	/**
	 * 必接功能<br>
	 * 当游戏退出前必须调用该方法，进行清理工作。建议在游戏退出事件中进行调用，必须在游戏退出前执行<br>
	 * 如果游戏直接退出，而不调用该方法，可能会出现未知错误，导致程序崩溃<br>
	 */
	public void ucSdkExit(final Activity context) {
		
		try {
            UCGameSdk.defaultSdk().exitSDK(context, new UCCallbackListener<String>() {

                @Override
                public void callback(final int statuscode, final String data) {

                    switch (statuscode) {
                    case UCGameSdkStatusCode.SDK_EXIT:

                    	ucSdkDestoryFloatButton(context);

                        U8SDK.getInstance().getContext().finish();

                        System.exit(0);

                    case UCGameSdkStatusCode.SDK_EXIT_CONTINUE:
                        break;
                    case UCGameSdkStatusCode.NO_INIT:
                        U8SDK.getInstance().getContext().finish();

                        System.exit(0);                    	
                    }
                }
            });
        } catch (UCCallbackListenerNullException e) {
            e.printStackTrace();
        } catch (UCMissActivityException e) {
            e.printStackTrace();
        }		
		
	}	
	
	public boolean isInited(){
		
		return this.state.ordinal() >= SDKState.StateInited.ordinal();
	}
	
	public boolean isLogined(){
		
		return this.state.ordinal() >= SDKState.StateLogined.ordinal();
	}	
	
}
