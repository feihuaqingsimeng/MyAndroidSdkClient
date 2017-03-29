package com.u8.sdk.umeng;

import com.u8.sdk.SDKParams;
import com.u8.sdk.U8Code;
import com.u8.sdk.U8SDK;
import com.umeng.message.IUmengRegisterCallback;
import com.umeng.message.PushAgent;
import com.umeng.message.UmengRegistrar;
import com.umeng.message.tag.TagManager;

import android.os.AsyncTask;
import android.util.Log;

/**
 * 友盟推送SDK实现
 * @author xiaohei
 *
 */
public class UMengPushSDK {

	private static final String TAG_ALIAS = "uni_push";
	
	private static UMengPushSDK instance;
	
	private PushAgent pushAgent;
	
	private UMengPushSDK(){
		
	}
	
	public static UMengPushSDK getInstance(){
		if (instance == null){
			instance = new UMengPushSDK();
		}
		
		return instance;
	}
	

	
	public void initSDK(SDKParams params){
		
		try{

			this.pushAgent = PushAgent.getInstance(U8SDK.getInstance().getContext());
			//this.pushAgent.setPushIntentServiceClass(MyPushIntentService.class);
			this.pushAgent.setDebugMode(true);
			boolean showWhenForground = params.getBoolean("UMENG_NOTIFY_FOREGROUND");
			
			this.pushAgent.setNotificaitonOnForeground(showWhenForground);
			
			this.pushAgent.onAppStart();

			U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init umeng push success");
			
		}catch(Exception e){
			Log.d("U8SDK", e.getMessage());
			e.printStackTrace();
		}

	}
	
	public void startPush(){
		
		try{

			if(this.pushAgent == null){
				U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "plugin push(umeng) is not inited.");
				return;
			}
			
			this.pushAgent.enable(new IUmengRegisterCallback() {
				
				@Override
				public void onRegistered(String arg) {
					Log.d("U8SDK", "umeng push enabled success. "+arg);
					String device_token = UmengRegistrar.getRegistrationId(U8SDK.getInstance().getContext());
					U8SDK.getInstance().onResult(U8Code.CODE_PUSH_ENABLED, device_token);
				}
			});
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void closePush(){
		if(this.pushAgent == null){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "plugin push(umeng) is not inited.");
			return;
		}
		this.pushAgent.disable();
	}
	
	public void addAlias(final String alias){
		if(this.pushAgent == null || !this.pushAgent.isRegistered()){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "plugin push(umeng) is not inited.");
			return;
		}
		
		(new AsyncTask<Void, Void, Boolean>() {
			
			@Override
			protected Boolean doInBackground(Void... params) {
				try{
					boolean result = pushAgent.addAlias(alias, TAG_ALIAS);
					return result;
				}catch(Exception e){
					U8SDK.getInstance().onResult(U8Code.CODE_ALIAS_ADD_FAIL, e.getMessage());
				}
				
				return null;
			}
			
			@Override
			protected void onPostExecute(Boolean result) {
				if(Boolean.TRUE.equals(result)){
					U8SDK.getInstance().onResult(U8Code.CODE_ALIAS_ADD_SUC, alias);
				}else{
					U8SDK.getInstance().onResult(U8Code.CODE_ALIAS_ADD_FAIL, "plugin push(umeng) add alias failed:"+alias);
				}
				
			}
			
		}).execute();
	}
	
	public void removeAlias(final String alias){
		if(this.pushAgent == null || !this.pushAgent.isRegistered()){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "plugin push(umeng) is not inited.");
			return;
		}
		
		(new AsyncTask<Void, Void, Boolean>() {
			
			@Override
			protected Boolean doInBackground(Void... params) {
				try{
					boolean result = pushAgent.removeAlias(alias, TAG_ALIAS);
					return result;
				}catch(Exception e){
					U8SDK.getInstance().onResult(U8Code.CODE_ALIAS_REMOVE_FAIL, e.getMessage());
				}
				
				return null;
			}
			
			@Override
			protected void onPostExecute(Boolean result) {
				if(Boolean.TRUE.equals(result)){
					U8SDK.getInstance().onResult(U8Code.CODE_ALIAS_REMOVE_SUC, alias);
				}else{
					U8SDK.getInstance().onResult(U8Code.CODE_ALIAS_REMOVE_FAIL, "plugin push(umeng) remove alias failed:"+alias);
				}
				
			}
			
		}).execute();
	}	
	
	public void addTags(final String...tags){
		if(this.pushAgent == null || !this.pushAgent.isRegistered()){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "plugin push(umeng) is not inited.");
			return;
		}
		
		(new AsyncTask<Void, Void, String>() {
			
			@Override
			protected String doInBackground(Void... params) {
				try{
					TagManager.Result result = pushAgent.getTagManager().add(tags);
					return result.toString();
				}catch(Exception e){
					U8SDK.getInstance().onResult(U8Code.CODE_TAG_ADD_FAIL, e.getMessage());
				}
				
				return null;
			}
			
			@Override
			protected void onPostExecute(String result) {
				U8SDK.getInstance().onResult(U8Code.CODE_TAG_ADD_SUC, result);
			}
			
		}).execute();
	}
	
	public void removeTags(final String...tags){
		if(this.pushAgent == null || !this.pushAgent.isRegistered()){
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "plugin push(umeng) is not inited.");
			return;
		}
		
		(new AsyncTask<Void, Void, String>() {
			
			@Override
			protected String doInBackground(Void... params) {
				try{
					TagManager.Result result = pushAgent.getTagManager().delete(tags);
					return result.toString();
				}catch(Exception e){
					U8SDK.getInstance().onResult(U8Code.CODE_TAG_DEL_FAIL, e.getMessage());
				}
				
				return null;
			}
			
			@Override
			protected void onPostExecute(String result) {
				U8SDK.getInstance().onResult(U8Code.CODE_TAG_DEL_SUC, result);
			}
			
		}).execute();
	}
}
