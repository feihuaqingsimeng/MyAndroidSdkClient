package com.u8.sdk;

import android.content.Intent;
import android.graphics.Color;

import com.quicksdk.QuickSdkSplashActivity;

public class SplashActivity extends QuickSdkSplashActivity {

	@Override
	public int getBackgroundColor() {
		// TODO Auto-generated method stub
		return Color.WHITE;
	}

	@Override
	public void onSplashStop() {
		//闪屏结束后，跳转到游戏界面
        Intent intent = new Intent("com.unity.activity.main.start");
        startActivity(intent);
        this.finish();
	}

}
