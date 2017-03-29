package com.u8.sdk;

import android.app.Activity;

public class SmartDownload implements IDownload{

	public SmartDownload(Activity context){
		
	}
	
	@Override
	public boolean isSupportMethod(String methodName) {
		
		return true;
	}

	@Override
	public void download(String url, boolean showConfirm, boolean force) {

		ApkDownloadSDK.getInstance().download(U8SDK.getInstance().getContext(), url, showConfirm, force);
		
	}

}
