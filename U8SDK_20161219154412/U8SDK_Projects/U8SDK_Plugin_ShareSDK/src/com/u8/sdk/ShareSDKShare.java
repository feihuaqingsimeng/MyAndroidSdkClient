package com.u8.sdk;

import com.u8.sdk.IShare;
import com.u8.sdk.ShareParams;
import com.u8.sdk.U8SDK;

import android.app.Activity;

/**
 * ShareSDK 分享插件
 * @author xiaohei
 *
 */
public class ShareSDKShare implements IShare {

	private Activity context;
	
	public ShareSDKShare(Activity context){
		this.context = context;
		initSDK();
	}
	
	private void initSDK(){
		U8SDK.getInstance().runOnMainThread(new Runnable() {
			
			@Override
			public void run() {
				SShareSDK.getInstance().initSDK(context);
			}
		});
	}
	
	@Override
	public void share(ShareParams params) {

		SShareSDK.getInstance().share(this.context, params);
	}

	@Override
	public boolean isSupportMethod(String methodName) {

		return true;
	}

}
