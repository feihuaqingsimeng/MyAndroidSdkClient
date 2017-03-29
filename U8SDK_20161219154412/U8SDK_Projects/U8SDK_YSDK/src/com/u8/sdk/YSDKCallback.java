package com.u8.sdk;

import android.util.Log;

import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.module.bugly.BuglyListener;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.UserListener;
import com.tencent.ysdk.module.user.UserLoginRet;
import com.tencent.ysdk.module.user.UserRelationRet;
import com.tencent.ysdk.module.user.WakeupRet;

public class YSDKCallback implements UserListener, BuglyListener,PayListener{

    public YSDKCallback() {
    }

	@Override
	public void OnPayNotify(PayRet ret) {

        if(PayRet.RET_SUCC == ret.ret){
            //支付流程成功
            switch (ret.payState){
                //支付成功
                case PayRet.PAYSTATE_PAYSUCC:
                	//U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay sucess");
					//支付成功向U8Server发送通知，调用查询余额接口并扣费
					Log.e("U8SDK", "pay success. now to req charge to u8server");
					YSDK.chargeWhenPaySuccess();
                    break;
                //取消支付
                case PayRet.PAYSTATE_PAYCANCEL:
                    //用户取消
                    break;
                //支付结果未知
                case PayRet.PAYSTATE_PAYUNKOWN:
                    //查询余额
                    break;
                //支付失败
                case PayRet.PAYSTATE_PAYERROR:
                    U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed:"+ret.msg);
                    break;
            }
        }else{
            switch (ret.flag){
                case eFlag.Login_TokenInvalid:
                    //用户取消支付
                	U8SDK.getInstance().onLogout();
                    break;
                case eFlag.Pay_User_Cancle:
                    //用户取消支付

                    break;
                case eFlag.Pay_Param_Error:
                	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL,"支付失败，参数错误"+ret.toString());
                    break;
                case eFlag.Error:
                default:
                	U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "支付异常"+ret.toString());
                    break;
            }
        }
	}


	@Override
	public byte[] OnCrashExtDataNotify() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public String OnCrashExtMessageNotify() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void OnLoginNotify(UserLoginRet ret) {
		
		Log.d("U8SDK", "login notify:"+ret.flag);
		
        switch (ret.flag) {
        case eFlag.Succ:
        	YSDK.letUserLogin(false);
            break;
        // 游戏逻辑，对登录失败情况分别进行处理
        case eFlag.QQ_UserCancel:
            //YSDK.showTip("用户取消授权，请重试");
            //U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "user cannel");
            //YSDK.logout();
            
            break;
        case eFlag.QQ_LoginFail:
            //YSDK.showTip("QQ登录失败，请重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            
            break;
        case eFlag.QQ_NetworkErr:
            //YSDK.showTip("QQ登录异常，请重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            
            break;
        case eFlag.QQ_NotInstall:
            YSDK.showTip("手机未安装手Q，请安装后重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            break;
        case eFlag.QQ_NotSupportApi:
            YSDK.showTip("手机手Q版本太低，请升级后重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            
            break;
        case eFlag.WX_NotInstall:
            YSDK.showTip("手机未安装微信，请安装后重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            break;
        case eFlag.WX_NotSupportApi:
            YSDK.showTip("手机微信版本太低，请升级后重试");
            
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            break;
        case eFlag.WX_UserCancel:
            //YSDK.showTip("用户取消授权，请重试");
            //U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            
            break;
        case eFlag.WX_UserDeny:
            YSDK.showTip("用户拒绝了授权，请重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            break;
        case eFlag.WX_LoginFail:
            YSDK.showTip("微信登录失败，请重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            break;
        case eFlag.Login_TokenInvalid:
            //YSDK.showTip("您尚未登录或者之前的登录已过期，请重试");
            //U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            break;
        case eFlag.Login_NotRegisterRealName:
            // 显示登录界面
            YSDK.showTip("您的账号没有进行实名认证，请实名认证后重试");
            U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
            //YSDK.logout();
            break;
        default:
            // 显示登录界面
        	U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
        	//YSDK.logout();
            break;
        }
		
	}


	@Override
	public void OnRelationNotify(UserRelationRet arg0) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void OnWakeupNotify(WakeupRet ret) {
		
        // TODO GAME 游戏需要在这里增加处理异账号的逻辑
        if (eFlag.Wakeup_YSDKLogining == ret.flag) {
            // 用拉起的账号登录，登录结果在OnLoginNotify()中回调
        } else if (ret.flag == eFlag.Wakeup_NeedUserSelectAccount) {
            // 异账号时，游戏需要弹出提示框让用户选择需要登录的账号
        	YSDK.showDiffLogin();
        } else if (ret.flag == eFlag.Wakeup_NeedUserLogin) {
            // 没有有效的票据，登出游戏让用户重新登录
            Log.d("U8SDK","need login");
            //YSDK.logout();
            U8SDK.getInstance().onLogout();
        } else {
        	//YSDK.logout();
        	U8SDK.getInstance().onLogout();
        }
	}

}
