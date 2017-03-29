package com.u8.sdk.qh360.wxapi;

import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;

public class WXEntryActivity extends Activity {

    public void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        requestWindowFeature(Window.FEATURE_PROGRESS);
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        try {
            intent.getStringExtra("try");
        } catch (Throwable tr) {
            finish();
            return;
        }
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_HANDEL_WEIXIN_CALLBACK);
        Matrix.execute(this, intent, null);
        finish();
    }

}
