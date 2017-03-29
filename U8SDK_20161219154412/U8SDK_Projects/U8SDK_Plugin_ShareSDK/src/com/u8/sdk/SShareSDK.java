package com.u8.sdk;

import java.util.HashMap;

import com.u8.sdk.SDKTools;
import com.u8.sdk.ShareParams;
import com.u8.sdk.U8Code;
import com.u8.sdk.U8SDK;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.onekeyshare.OnekeyShareTheme;
import android.app.Activity;
import android.util.Log;

/**
 * Share SDK 统一分享插件
 * @author xiaohei
 *
 */
public class SShareSDK {

	private static SShareSDK instance;
	
	private SShareSDK(){
		
	}
	
	public static SShareSDK getInstance(){
		if(instance == null){
			instance = new SShareSDK();
		}
		return instance;
	}
	
	public void initSDK(final Activity context){
		
		Log.d("U8SDK", "init share sdk...");
		try{
			ShareSDK.initSDK(context);
			
			//U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "plugin share of share sdk init successfully.");	
		}catch(Exception e){
			//U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "plugin share of share sdk init failed.");
		}
		Log.d("U8SDK", "init share sdk end...");
	}
	
	public void share(Activity context, ShareParams params){
		if(params == null){
			U8SDK.getInstance().onResult(U8Code.CODE_PARAM_ERROR, "The method share params is null of plugin share.");
			return;
		}
		
		if(SDKTools.isNullOrEmpty(params.getTitle())
				|| SDKTools.isNullOrEmpty(params.getTitleUrl())
				|| SDKTools.isNullOrEmpty(params.getSourceName())
				|| SDKTools.isNullOrEmpty(params.getSourceUrl())){
			U8SDK.getInstance().onResult(U8Code.CODE_PARAM_NOT_COMPLETE, "The method share params is not complete of plugin share.");
			return;
		}
		
		OnekeyShare share = new OnekeyShare();
		share.disableSSOWhenAuthorize();
		share.setTitle(params.getTitle());
		share.setTitleUrl(params.getTitleUrl());
		share.setSite(params.getSourceName());
		share.setSiteUrl(params.getSourceUrl());
		share.setText(params.getContent());
		share.setImageUrl(params.getImgUrl());
		if(params.isDialogMode()){
			share.setDialogMode();
		}
		
		if(!SDKTools.isNullOrEmpty(params.getComment())){
			share.setComment(params.getComment());
		}
		
//		if(params.getNotifyIcon() > 0 && !SDKTools.isNullOrEmpty(params.getNotifyIconText())){
//			share.setNotification(params.getNotifyIcon(), params.getNotifyIconText());
//		}
		
		if(!SDKTools.isNullOrEmpty(params.getUrl())){
			share.setUrl(params.getUrl());
		}
		
//		share.setLatitude(70f);
//		share.setLongitude(30f);
		share.setTheme(OnekeyShareTheme.CLASSIC);
		share.setSilent(false);
		share.setCallback(new PlatformActionListener() {
			
			@Override
			public void onError(Platform arg0, int arg1, Throwable arg2) {
				
				U8SDK.getInstance().onResult(U8Code.CODE_SHARE_FAILED, "plugin share:share failed."+arg2.getMessage());
				
			}
			
			@Override
			public void onComplete(Platform arg0, int arg1, HashMap<String, Object> arg2) {
				
				U8SDK.getInstance().onResult(U8Code.CODE_SHARE_SUCCESS, "plugin share:share successfully.");
			}
			
			@Override
			public void onCancel(Platform arg0, int arg1) {
				U8SDK.getInstance().onResult(U8Code.CODE_SHARE_FAILED, "plugin share:share failed. user canceled.");
			}
		});
		
		share.show(context);
	}
}
