package com.u8.sdk;

import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.ePlatform;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

/**
 * 选择QQ、微信登录方式
 */
public class ChooseLoginTypeActivity extends Activity {
	
	private Button btnQQ;
	private Button btnWX;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		int layoutID = getResources().getIdentifier("u8_layout_login_choice", "layout", getPackageName());
		setContentView(layoutID);
		btnQQ = (Button) findViewById(getResources().getIdentifier("btn_qq", "id", getPackageName()));
		btnWX = (Button) findViewById(getResources().getIdentifier("btn_wx", "id", getPackageName()));
		
		btnQQ.setOnClickListener(new OnClickListener(){
			@Override
			public void onClick(View arg0) {
				if(YSDKApi.isPlatformInstalled(ePlatform.QQ)){
					ChooseLoginTypeActivity.this.finish();
					YSDK.login(YSDK.LOGIN_TYPE_QQ);
				}else{
					YSDK.showTip("您还没有安装QQ，请先安装QQ");
				}
				
			}
		});
		btnWX.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View arg0) {
				if(YSDKApi.isPlatformInstalled(ePlatform.WX)){
					ChooseLoginTypeActivity.this.finish();
					YSDK.login(YSDK.LOGIN_TYPE_WX);
				}else{
					YSDK.showTip("您还没有安装微信，请先安装微信");
				}

			}
		});
		
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		
	}
}
