package com.example.wegame.wxapi;

import android.content.Intent;
import android.content.pm.PackageManager;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.SendAuth;
import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.ePlatform;


public class WXEntryActivity extends com.tencent.ysdk.module.user.impl.wx.YSDKWXEntryActivity {
	
	@Override
	protected void onNewIntent(Intent intent) {
		
		super.onNewIntent(intent);
		YSDKApi.handleIntent(intent);
	}

	@Override
	public void onResp(BaseResp baseresp) {
		
		PackageManager packagemanager = getPackageManager();
        String s = getPackageName();
        Intent intent = packagemanager.getLaunchIntentForPackage(s);
        try
        {
            Class class1 = Class.forName(intent.getComponent().getClassName());
            Intent intent1 = new Intent(this, class1);
            intent1.setFlags(0x10000000);
            intent1.addFlags(0x20000000);
            intent1.putExtra("wx_callback", "onResp");
            intent1.putExtra("wx_errCode", baseresp.errCode);
            intent1.putExtra("wx_errStr", baseresp.errStr);
            intent1.putExtra("wx_transaction", baseresp.transaction);
            intent1.putExtra("wx_openId", baseresp.openId);
            intent1.putExtra("platformId", ePlatform.WX);
            if(baseresp instanceof SendAuth.Resp)
            {
                com.tencent.mm.sdk.modelmsg.SendAuth.Resp resp = (com.tencent.mm.sdk.modelmsg.SendAuth.Resp)baseresp;
                intent1.putExtra("wx_code", resp.code);
                intent1.putExtra("country", resp.country);
                intent1.putExtra("lang", resp.lang);
            }
            YSDKApi.handleIntent(intent1);
            
            if("wechatAddCardToWXCardPackage".equals(baseresp.transaction))
            	startActivity(intent1);
            finish();
        }
        catch(ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        

	      
		
	}
	
}
