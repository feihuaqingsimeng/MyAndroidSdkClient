
package com.u8.sdk.baidu;

import android.content.Context;
import android.content.pm.ActivityInfo;

import com.baidu.gamesdk.BDGameSDKSetting.Orientation;

public class Utils {

	public static Orientation getOrientation(Context mContext){
		int orientation = PreferenceHelper.getIntValue(mContext,
				PreferenceHelper.ORIENTATION,
				ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
		Orientation mOrientation = Orientation.LANDSCAPE;
		switch (orientation) { 
		case ActivityInfo.SCREEN_ORIENTATION_PORTRAIT:
			mOrientation = Orientation.PORTRAIT;
			break;
		case ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE:
		default:	
			mOrientation = Orientation.LANDSCAPE; 
		}
		return mOrientation;
	}
}
