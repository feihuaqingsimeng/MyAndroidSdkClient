package com.u8.sdk;

import com.u8.sdk.IPush;
import com.u8.sdk.umeng.UMengPushSDK;

import android.app.Activity;
import android.util.Log;

/**
 * 友盟 推送的实现
 * @author xiaohei
 *
 */
public class UMengPush implements IPush{

	
	public UMengPush(Activity context){
		
		try{
			Log.d("U8SDK", "init umeng push...");
			Log.e("U8SDK", "init umeng push begin test...");
			
//			this.pushAgent = PushAgent.getInstance(U8SDK.getInstance().getContext());
//			this.pushAgent.setPushIntentServiceClass(MyPushIntentService.class);
//			this.pushAgent.onAppStart();
//			
//			Log.e("U8SDK", "init umeng push begin test end...");
//			
//			boolean showWhenForground = U8SDK.getInstance().getSDKParams().getBoolean("UMENG_NOTIFY_FOREGROUND");
//			
//			this.pushAgent.setNotificaitonOnForeground(showWhenForground);
//			Log.e("U8SDK", "init end");
			
			UMengPushSDK.getInstance().initSDK(U8SDK.getInstance().getSDKParams());
			
			
		}catch(Exception e){
			Log.d("U8SDK", e.getMessage());
			e.printStackTrace();
		}
	}
	
	@Override
	public void scheduleNotification(String msgs)
	{
	}
	
	@Override
	public void startPush() {
		UMengPushSDK.getInstance().startPush();
	}

	@Override
	public void stopPush() {
		UMengPushSDK.getInstance().closePush();
	}

	@Override
	public void addTags(String... tags) {
		UMengPushSDK.getInstance().addTags(tags);
	}

	@Override
	public void removeTags(String... tags) {
		UMengPushSDK.getInstance().removeTags(tags);
	}

	@Override
	public void addAlias(String alias) {
		UMengPushSDK.getInstance().addAlias(alias);
	}

	@Override
	public void removeAlias(String alias) {
		UMengPushSDK.getInstance().removeAlias(alias);
	}

	@Override
	public boolean isSupportMethod(String methodName) {
		
		return true;
	}

}
