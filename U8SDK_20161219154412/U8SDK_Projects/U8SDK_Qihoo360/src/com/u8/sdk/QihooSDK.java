package com.u8.sdk;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.CPCallBackMgr.MatrixCallBack;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;
import com.u8.sdk.qh360.QihooPayInfo;

public class QihooSDK {

	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	

	private static QihooSDK instance;
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;
	
	private boolean isShowCloseIcon = true;
	private boolean isShowAutoLoginSwitch = true;
	private boolean isHideWelcome = true;
	private String appName = "";
	private int ratio = 10;
	
	private String accessToken = "";
	
	private QihooSDK(){
		
	}
	
	public static QihooSDK getInstance(){
		if(instance == null){
			instance = new QihooSDK();
		}
		
		return instance;
	}
	
	private void parseSDKParams(SDKParams params){
		
		this.isShowCloseIcon = params.getBoolean("QHIsShowCloseIcon");
		this.isShowAutoLoginSwitch = params.getBoolean("QHIsShowAutoLoginSwitch");
		this.isHideWelcome = params.getBoolean("QHIsHideWelcome");
		this.appName = params.getString("QHAppName");
		this.ratio = params.getInt("QHRatio");
		
	}
	
	
	public void initSDK(final Activity context, SDKParams params){
		this.parseSDKParams(params);
		initSDK(context);
	}
	
	private void initSDK(final Activity context){
		this.state = SDKState.StateIniting;
		
		U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
			
		    @Override
			public void onResume() {
				super.onResume();
				Matrix.onResume(U8SDK.getInstance().getContext());
			}
		    @Override
		   	public void onStart() {
		   		super.onStart();
		   		Matrix.onStart(U8SDK.getInstance().getContext());
		   	}
		    @Override
		   	public void onRestart() {
		   		super.onRestart();
		   		Matrix.onRestart(U8SDK.getInstance().getContext());
		   	}
		    @Override
		   	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		   		super.onActivityResult(requestCode, resultCode, data);
		   		Matrix.onActivityResult(U8SDK.getInstance().getContext(),requestCode, resultCode, data);
		   	}
		    @Override
		   	public void onPause() {
		   		super.onPause();
		   		Matrix.onPause(U8SDK.getInstance().getContext());
		   	}
		    @Override
		   	public void onStop() {
		   		super.onStop();
		   		Matrix.onStop(U8SDK.getInstance().getContext());
		   	}
		    @Override
		    public void onNewIntent(Intent intent) {
		    	super.onNewIntent(intent);
		    	Matrix.onNewIntent(U8SDK.getInstance().getContext(),intent);
		    }
			
			public void onDestroy(){
				Matrix.destroy(context);
			}
			
		});
		
		Matrix.setActivity(context, new MatrixCallBack() {
			
			@Override
			public void execute(Context c, int code, String params) {
				
				if (code == ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT) {
					U8SDK.getInstance().onSwitchAccount();
				}else if (code == ProtocolConfigs.FUNC_CODE_INITSUCCESS) {
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
					state = SDKState.StateInited;
					
					if(loginAfterInit){
						login(context);
					}
				}else{
					Log.d("U8SDK", "init failed. code:"+code+";params:"+params);
					U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, params);
				}
				
			}
		});
		

	}
	
	public void login(final Activity context){
		login(context, ProtocolConfigs.FUNC_CODE_LOGIN);
	}
	
	public void switchAccount(final Activity context){
		login(context, ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT);
	}
	
	public void login(final Activity context, int functionCode){
		
		if(!isInited()){
			loginAfterInit = true;
			initSDK(context);
			return;
		}		
		
		if(!SDKTools.isNetworkAvailable(context)){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try{
			
			this.state = SDKState.StateLogin;
			
			Intent intent = getLoginIntent(context, functionCode);
			
			Matrix.execute(context, intent, new IDispatcherCallback() {
				
				@Override
				public void onFinished(String data) {
					Log.d("360", "the login data is "+data);
					if(data == null){
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed. data is null");
						return;
					}
					
			        try {
			        	JSONObject joData = new JSONObject(data);
//			            int errno = joData.optInt("errno", -1);
//			            if (-1 == errno) {
//			            	state = SDKState.StateInited;
//			                U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login canceled.data is "+data);
//			                return;
//			            }
			            
			            JSONObject joDataInfo = joData.getJSONObject("data");
			            String accessToken = joDataInfo.getString("access_token");
			            QihooSDK.this.accessToken = accessToken;
			            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, accessToken);
			            
			            state = SDKState.StateLogined;
			            
			           
			            U8SDK.getInstance().onLoginResult(accessToken);			            
			            
			            
			        } catch (Exception e) {
			        	
			        	e.printStackTrace();
			        	state = SDKState.StateInited;
			        	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed."+e.getMessage());
			        	return;
			        }

				}
			});			
			
			
		}catch(Exception e){
			e.printStackTrace();
			state = SDKState.StateInited;
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed."+e.getMessage());
		}

	}
	
	//提交扩展数据
	public void submitExtendData(final Activity context, UserExtraData extraData){
		
		if(extraData.getDataType() == UserExtraData.TYPE_SELECT_SERVER) return;
		
		try {
			
	    	HashMap<String,Object> eventParams=new HashMap<String,Object>();
	    	//----------------------------模拟数据------------------------------ 
	        eventParams.put("zoneid",extraData.getServerID());//当前角色所在游戏区服id(具体要求参考文档)
	        eventParams.put("zonename",extraData.getServerName());//当前角色所在游戏区服名称(具体要求参考文档)
	        eventParams.put("roleid",extraData.getRoleID());//当前角色id(具体要求参考文档)
	        eventParams.put("rolename",extraData.getRoleName());//当前角色名称(具体要求参考文档)
	        
	        eventParams.put("professionid",extraData.getProfessionID());
	        eventParams.put("profession",extraData.getProfessionName());
	        eventParams.put("gender",extraData.getRoleGender());
	        eventParams.put("rolelevel",extraData.getRoleLevel());
	        eventParams.put("power",extraData.getPower());
	        eventParams.put("partyid",extraData.getPartyID());
	        eventParams.put("partyname",extraData.getPartyName());
	        eventParams.put("partyroleid",extraData.getPartyMasterID());
	        eventParams.put("partyrolename",extraData.getPartyMasterName());
	        eventParams.put("friendlist","无");	        
	        
	        
	        //参数eventParams相关的 key、value键值对 相关具体使用说明，请参考文档。
	        //----------------------------模拟数据------------------------------
	        switch(extraData.getDataType()){
	        case UserExtraData.TYPE_CREATE_ROLE:
	        	eventParams.put("type","createRole");//角色信息接口触发的场景(具体要求参考文档)
	        	Matrix.statEventInfo(U8SDK.getInstance().getContext(), eventParams);
	        	break;
	        case UserExtraData.TYPE_ENTER_GAME:
	        	eventParams.put("type","enterServer");//角色信息接口触发的场景(具体要求参考文档)
	        	Matrix.statEventInfo(U8SDK.getInstance().getContext(), eventParams);
	        	break;
	        case UserExtraData.TYPE_LEVEL_UP:
	        	eventParams.put("type","levelUp");//角色信息接口触发的场景(具体要求参考文档)
	        	Matrix.statEventInfo(U8SDK.getInstance().getContext(), eventParams);
	        	break;
	        case UserExtraData.TYPE_EXIT_GAME:
	        	eventParams.put("type","exitServer");//角色信息接口触发的场景(具体要求参考文档)
	        	Matrix.statEventInfo(U8SDK.getInstance().getContext(), eventParams);
	        	break;
	        }
	    	
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
    public void logout(final Activity context){
        if(!isLogined()) {
        	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "the user not logined.");
            return;
        }
        Intent intent = getLogoutIntent();
        Matrix.execute(context, intent, new IDispatcherCallback() {
            @Override
            public void onFinished(String data) {
            	U8SDK.getInstance().onResult(U8Code.CODE_LOGOUT_SUCCESS, data);
            }
        });
    }	
	
	public void quitSDK(final Activity context){
		Intent intent = this.getSDKQuitIntent(context);
		Matrix.invokeActivity(context, intent, new IDispatcherCallback() {
			
			@Override
			public void onFinished(String data) {
	            JSONObject json;
	            try {
	                json = new JSONObject(data);
	                int which = json.optInt("which", -1);

	                switch (which) {
	                    case 0: // 用户关闭退出界面
	                        return;
	                    default:// 退出游戏
	                        context.finish();
	                        Process.killProcess(Process.myPid());
	                        System.exit(0);
	                        return;
	                }
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
			}
		});
	}
	
	public void realNameRegister(final Activity context) {
		
        if (!isLogined()) {
        	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "the user not logined.");
            return;
        }
		
        Intent intent = getRealNameRegisterIntent(context);
        Matrix.invokeActivity(context, intent, new IDispatcherCallback() {
            @Override
            public void onFinished(String data) {
            	U8SDK.getInstance().onResult(U8Code.CODE_REAL_NAME_REG_SUC, data);
            }
        });
	}
	
    /**
     * 本方法中的callback实现仅用于测试, 实际使用由游戏开发者自己处理
     *
     * @param accessToken
     * @param userInfo 奇虎360用户信息
     */
    public void doSdkAntiAddictionQuery(final Activity context) {

        if (!isLogined()) {
        	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "the user not logined.");
            return;
        }
        
        Intent intent = getAntAddictionIntent(context);
        Matrix.execute(context, intent, new IDispatcherCallback() {

            @Override
            public void onFinished(String data) {
            	
            	//暂时360只需要接入该接口，游戏中不需要处理
            	U8SDK.getInstance().onResult(U8Code.CODE_ADDICTION_ANTI_RESULT, data);
            }
        });
    }

	
	/***
	 * 该方法仅仅作为测试时使用
	 * 真正上线时，这里是登录认证部分所做的工作
	 * @param context
	 */
//    private void getUserInfo(final Activity context) {
//
//        final QihooUserInfoTask mUserInfoTask = QihooUserInfoTask.newInstance();
//        // 请求应用服务器，用AccessToken换取UserInfo
//        mUserInfoTask.doRequest(context, this.accessToken, Matrix.getAppKey(context), new QihooUserInfoListener() {
//
//            @Override
//            public void onGotUserInfo(QihooUserInfo userInfo) {
//                if (null == userInfo || !userInfo.isValid()) {
//                    Toast.makeText(context, "从应用服务器获取用户信息失败", Toast.LENGTH_LONG).show();
//                } else {
//                    QihooSDK.this.userID = userInfo.getId();
//                }
//            }
//        });
//    }
	
	public void pay(final Activity context, PayParams params){
        if (!isLogined()) {
        	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "the user not logined.");
        	login(context);
            return;
        }      
        
        QihooPayInfo payInfo = decodePayParams(params);
        
        Intent intent = getPayIntent(context, payInfo);
        
        Matrix.invokeActivity(context, intent, new IDispatcherCallback() {
			
			@Override
			public void onFinished(String data) {
	            if(TextUtils.isEmpty(data)) {
	            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "the pay result is null.");
	                return;
	            }

	            JSONObject jsonRes;
	            try {
	                jsonRes = new JSONObject(data);
	                // error_code 状态码： 0 支付成功， -1 支付取消， 1 支付失败， -2 支付进行中, 4010201和4009911 登录状态已失效，引导用户重新登录
	                // error_msg 状态描述
	                int errorCode = jsonRes.optInt("error_code");
	                switch (errorCode) {
	                    case 0:
	                    	U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
	                    	break;
	                    case 1:
	                    	String errorMsg = jsonRes.optString("error_msg");
	                    	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. error:"+errorMsg);
	                    	break;
	                    case -1:
	                    	String errorMsg2 = jsonRes.optString("error_msg");
	                    	U8SDK.getInstance().onResult(U8Code.CODE_PAY_CANCEL, "pay canceled. error:"+errorMsg2);
	                    	break;
	                    case -2: 
	                        U8SDK.getInstance().onResult(U8Code.CODE_PAYING, "pay now paying...");
	                        break;
	                    case 4010201:
	                        //acess_token失效
	                    	state = SDKState.StateInited;
	                        Toast.makeText(context, "会话已失效，请重新登录", Toast.LENGTH_SHORT).show();
	                        U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. acess_token is invalid.");
	                        break;
	                    case 4009911:
	                        //QT失效
	                    	state = SDKState.StateInited;
	                        Toast.makeText(context, "会话已失效，请重新登录", Toast.LENGTH_SHORT).show();
	                        U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. QT is invalid.");
	                        break;
	                    default:
	                        break;
	                }
	            } catch (JSONException e) {
	            	U8SDK.getInstance().onResult(U8Code.CODE_PAY_UNKNOWN, e.getMessage());
	                e.printStackTrace();
	            }			
			}
		});
        
	}
	
	private QihooPayInfo decodePayParams(PayParams params){
        
		String qihooUserId = U8SDK.getInstance().getSDKUserID();

		String orderID = params.getOrderID();
		String ext = params.getExtension();
		String notifyUrl = "";
		
		
		try {
			
			JSONObject jsonExt = new JSONObject(ext);
			notifyUrl = jsonExt.getString("notifyUrl");
			
		} catch (JSONException e) {

			e.printStackTrace();
		}
		
		
		Log.e("U8SDK", "The notify url is " + notifyUrl);
		
        // 创建QihooPay
        QihooPayInfo qihooPay = new QihooPayInfo();
        qihooPay.setQihooUserId(qihooUserId);
        qihooPay.setMoneyAmount((params.getPrice() * 100) + "");
        qihooPay.setExchangeRate(this.ratio + "");

        qihooPay.setProductName(params.getProductName());
        qihooPay.setProductId(params.getProductId());

        qihooPay.setNotifyUri(notifyUrl);

        qihooPay.setAppName(this.appName);
        qihooPay.setAppUserName(params.getRoleName());
        qihooPay.setAppUserId(params.getRoleId());
        qihooPay.setAppOrderId(orderID);
        // 可选参数
//        qihooPay.setAppExt1("");
//        qihooPay.setAppExt2("");
        
        
        return qihooPay;
	}
	
	public boolean isLandscape(final Activity context){
		
		int orientation = context.getResources().getConfiguration().orientation;
		
		if(orientation != Configuration.ORIENTATION_LANDSCAPE && orientation != Configuration.ORIENTATION_PORTRAIT){
			orientation = Configuration.ORIENTATION_PORTRAIT;
		}
		
		return orientation == Configuration.ORIENTATION_LANDSCAPE;
		
	}
  
    
    /**
     * 生成调用360SDK登录接口的Intent
     * @return intent
     */
    private Intent getLoginIntent(final Activity context, int functionCode) {

        Intent intent = new Intent(context, ContainerActivity.class);

        // 界面相关参数，360SDK界面是否以横屏显示。
        intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, this.isLandscape(context));

        // 必需参数，使用360SDK的登录模块。
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, functionCode);

        //是否显示关闭按钮
        intent.putExtra(ProtocolKeys.IS_LOGIN_SHOW_CLOSE_ICON, this.isShowCloseIcon);

        // 可选参数，是否在自动登录的过程中显示切换账号按钮
        intent.putExtra(ProtocolKeys.IS_SHOW_AUTOLOGIN_SWITCH, this.isShowAutoLoginSwitch);

        // 可选参数，是否隐藏欢迎界面
        intent.putExtra(ProtocolKeys.IS_HIDE_WELLCOME, this.isHideWelcome);

//        // 可选参数，登录界面的背景图片路径，必须是本地图片路径
//        intent.putExtra(ProtocolKeys.UI_BACKGROUND_PICTRUE, getUiBackgroundPicPath());
//        // 可选参数，指定assets中的图片路径，作为背景图
//        intent.putExtra(ProtocolKeys.UI_BACKGROUND_PICTURE_IN_ASSERTS, getUiBackgroundPathInAssets());

        //-- 以下参数仅仅针对自动登录过程的控制
        // 可选参数，自动登录过程中是否不展示任何UI，默认展示。
//        intent.putExtra(ProtocolKeys.IS_AUTOLOGIN_NOUI, getCheckBoxBoolean(R.id.isAutoLoginHideUI));

        // 可选参数，静默自动登录失败后是否显示登录窗口，默认不显示
//        intent.putExtra(ProtocolKeys.IS_SHOW_LOGINDLG_ONFAILED_AUTOLOGIN, getCheckBoxBoolean(R.id.isShowDlgOnFailedAutoLogin));
        // 测试参数，发布时要去掉
//        intent.putExtra(ProtocolKeys.IS_SOCIAL_SHARE_DEBUG, getCheckBoxBoolean(R.id.isDebugSocialShare));

        return intent;
    }
    
    private Intent getUploadScoreIntent(UserExtraData data){
        Intent intent = new Intent();
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_UPLOAD_SCORE);
        intent.putExtra(ProtocolKeys.SCORE, data.getRoleLevel());
        intent.putExtra(ProtocolKeys.TOPNID, 0);
        return intent;
    }
    
    /**
     * 使用360SDK的退出接口
     *
     * @param isLandScape 是否横屏显示支付界面
     */
    private Intent getSDKQuitIntent(final Activity context) {

        Bundle bundle = new Bundle();

        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, this.isLandscape(context));

        // 必需参数，使用360SDK的退出模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_QUIT);


        Intent intent = new Intent(context, ContainerActivity.class);
        intent.putExtras(bundle);

        return intent;
    }
    
    private Intent getLogoutIntent(){

        Intent intent = new Intent();
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_LOGOUT);
        return intent;
    }
    
    /***
     * 生成调用360SDK支付接口的Intent
     *
     * @param isLandScape
     * @param pay
     * @return Intent
     */
    public Intent getPayIntent(final Activity context, QihooPayInfo pay) {
        Bundle bundle = new Bundle();

        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, this.isLandscape(context));

        // *** 以下非界面相关参数 ***

        // 设置QihooPay中的参数。

        // 必需参数，360账号id，整数。
        bundle.putString(ProtocolKeys.QIHOO_USER_ID, pay.getQihooUserId());

        // 必需参数，所购买商品金额, 以分为单位。金额大于等于100分，360SDK运行定额支付流程； 金额数为0，360SDK运行不定额支付流程。
        bundle.putString(ProtocolKeys.AMOUNT, pay.getMoneyAmount());

        // 必需参数，人民币与游戏充值币的默认比例，例如2，代表1元人民币可以兑换2个游戏币，整数。
        bundle.putString(ProtocolKeys.RATE, pay.getExchangeRate());

        // 必需参数，所购买商品名称，应用指定，建议中文，最大10个中文字。
        bundle.putString(ProtocolKeys.PRODUCT_NAME, pay.getProductName());

        // 必需参数，购买商品的商品id，应用指定，最大16字符。
        bundle.putString(ProtocolKeys.PRODUCT_ID, pay.getProductId());

        // 必需参数，应用方提供的支付结果通知uri，最大255字符。360服务器将把支付接口回调给该uri，具体协议请查看文档中，支付结果通知接口–应用服务器提供接口。
        bundle.putString(ProtocolKeys.NOTIFY_URI, pay.getNotifyUri());

        // 必需参数，游戏或应用名称，最大16中文字。
        bundle.putString(ProtocolKeys.APP_NAME, pay.getAppName());

        // 必需参数，应用内的用户名，如游戏角色名。 若应用内绑定360账号和应用账号，则可用360用户名，最大16中文字。（充值不分区服，
        // 充到统一的用户账户，各区服角色均可使用）。
        bundle.putString(ProtocolKeys.APP_USER_NAME, pay.getAppUserName());

        // 必需参数，应用内的用户id。
        // 若应用内绑定360账号和应用账号，充值不分区服，充到统一的用户账户，各区服角色均可使用，则可用360用户ID最大32字符。
        bundle.putString(ProtocolKeys.APP_USER_ID, pay.getAppUserId());

        // 可选参数，应用扩展信息1，原样返回，最大255字符。
        bundle.putString(ProtocolKeys.APP_EXT_1, pay.getAppExt1());

        // 可选参数，应用扩展信息2，原样返回，最大255字符。
        bundle.putString(ProtocolKeys.APP_EXT_2, pay.getAppExt2());

        // 可选参数，应用订单号，应用内必须唯一，最大32字符。
        bundle.putString(ProtocolKeys.APP_ORDER_ID, pay.getAppOrderId());

        // 必需参数，使用360SDK的支付模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_PAY);

        Intent intent = new Intent(context, ContainerActivity.class);
        intent.putExtras(bundle);

        return intent;
    }
    
	
    private Intent getRealNameRegisterIntent(final Activity context) {

        Bundle bundle = new Bundle();
        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, this.isLandscape(context));

        // 必需参数，360账号id，整数。
        bundle.putString(ProtocolKeys.QIHOO_USER_ID, U8SDK.getInstance().getSDKUserID());

        // 可选参数，登录界面的背景图片路径，必须是本地图片路径
        bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, "");

        // 必需参数，使用360SDK的实名注册模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_REAL_NAME_REGISTER);

        Intent intent = new Intent(context, ContainerActivity.class);
        intent.putExtras(bundle);
        return intent;
    }
    
    private Intent getAntAddictionIntent(final Activity context) {
    	
        Bundle bundle = new Bundle();

        // 必需参数，用户access token，要使用注意过期和刷新问题，最大64字符。
        bundle.putString(ProtocolKeys.ACCESS_TOKEN, this.accessToken);

        // 必需参数，360账号id，整数。
        bundle.putString(ProtocolKeys.QIHOO_USER_ID, U8SDK.getInstance().getSDKUserID());

        // 必需参数，使用360SDK的防沉迷查询模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_ANTI_ADDICTION_QUERY);

        Intent intent = new Intent(context, ContainerActivity.class);
        intent.putExtras(bundle);
        return intent;
    }
    
    
	
	public boolean isInited(){
		
		return this.state.ordinal() >= SDKState.StateInited.ordinal();
	}
	
	public boolean isLogined(){
		
		return this.state.ordinal() >= SDKState.StateLogined.ordinal();
	}
    
}
