package com.u8.sdk;

import java.io.IOException;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import android.util.Log;
import android.util.Xml;

import com.lenovo.lsf.gamesdk.GamePayRequest;
import com.lenovo.lsf.gamesdk.IAuthResult;
import com.lenovo.lsf.gamesdk.IPayResult;
import com.lenovo.lsf.gamesdk.LenovoGameApi;
import com.u8.sdk.lenovo.GoodInfo;

public class LenovoSDK {

	private static LenovoSDK instance;
	
	enum SDKState{
		StateDefault,
		StateIniting,
		StateInited,
		StateLogin,
		StateLogined	
	}
	
	private SDKState state = SDKState.StateDefault;
	private boolean loginAfterInit = false;	
	
	private String appID;
	private String appKey;
	
	private Map<String, GoodInfo> goods;
	
	private LenovoSDK(){
		goods = new HashMap<String, GoodInfo>();
	}
	
	public static LenovoSDK getInstance(){
		if(instance == null){
			instance = new LenovoSDK();
		}
		return instance;
	}
	
	
	private void parseSDKParams(SDKParams params){
		this.appID = params.getString("lenovo.open.appid");
		this.appKey = params.getString("lenovo.open.appkey");
	}
	
	public void initSDK(SDKParams params){
		this.loadLenovoPayGoods();
		this.parseSDKParams(params);
		this.initSDK();
	}
	
	public void initSDK(){
		this.state = SDKState.StateIniting;
		try{
			
			U8SDK.getInstance().setActivityCallback(new ActivityCallbackAdapter(){
				@Override
				public void onBackPressed() {

				}
			});
			
			LenovoGameApi.doInit(U8SDK.getInstance().getContext(), this.appID);
			
			this.state = SDKState.StateInited;
			
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_SUCCESS, "init success");
			
			if(loginAfterInit){
				loginAfterInit = false;
				login();
			}
			
		}catch(Exception e){
			this.state = SDKState.StateDefault;
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_INIT_FAIL, "init failed."+e.getMessage());
		}
	}
	
	public void login(){
		if(state.ordinal() < SDKState.StateInited.ordinal()){
			loginAfterInit = true;
			initSDK();
			return;
		}		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}	
		
		state = SDKState.StateLogin;
		
		try{
			
			LenovoGameApi.doAutoLogin(U8SDK.getInstance().getContext(), new IAuthResult() {
				
				@Override
				public void onFinished(boolean ret, String data) {
					if(ret){
						
						state = SDKState.StateLogined;
						
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_SUCCESS, "login success");
						
						Log.d("U8SDK", "Lenovo login success. data:"+data);
						
						
						U8SDK.getInstance().onLoginResult(data);
						
					}else{
						state = SDKState.StateInited;
						U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed");
					}
				}
			});
			
		}catch(Exception e){
			e.printStackTrace();
			state = SDKState.StateInited;
			U8SDK.getInstance().onResult(U8Code.CODE_LOGIN_FAIL, "login failed. exception:"+e.getMessage());
		}
	}
	
	public void exitSDK(){

		LenovoGameApi.doQuit(U8SDK.getInstance().getContext(), new IAuthResult() {
			
			@Override
			public void onFinished(boolean res, String arg1) {
				if(res){
					U8SDK.getInstance().getContext().finish();
					System.exit(0);
				}
			}
		});
		
	}
	
	public void pay(PayParams params){
		if(state.ordinal() < SDKState.StateLogined.ordinal()){
			login();
			return;
		}		
		
		if(!SDKTools.isNetworkAvailable(U8SDK.getInstance().getContext())){
			U8SDK.getInstance().onResult(U8Code.CODE_NO_NETWORK, "The network now is unavailable");
			return;
		}
		
		try{
			
			GoodInfo good = getGoodInfo(params.getProductId());
			String waresid = "0";
			if(good != null){
				
				//U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "the product "+params.getProductId()+" not exists.");
				waresid = good.getWaresid();
			}
			
			Log.e("U8SDK", "The waresid is "+waresid);
			
			GamePayRequest payRequest = new GamePayRequest();
			payRequest.addParam("notifyurl", "");//当前版本暂时不用，传空String
			payRequest.addParam("appid", this.appID);
			payRequest.addParam("waresid", waresid);
			payRequest.addParam("exorderno", params.getOrderID());
			payRequest.addParam("price", (good.isOpenPrice() ? (params.getPrice()*100):0));
			payRequest.addParam("cpprivateinfo", "");
			
			LenovoGameApi.doPay(U8SDK.getInstance().getContext(), this.appKey, payRequest, new IPayResult() {
				
				@Override
				public void onPayResult(int resultCode, String signValue, String resultInfo) {
					
					switch(resultCode){
					case LenovoGameApi.PAY_SUCCESS:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_SUCCESS, "pay success");
						break;
					case LenovoGameApi.PAY_CANCEL:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed");
						break;
					case LenovoGameApi.PAY_HANDLING:
						U8SDK.getInstance().onResult(U8Code.CODE_PAYING, "paying ");
						break;
					default:
						U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed."+resultInfo);
					}
					
				}
			});
			
		}catch(Exception e){
			e.printStackTrace();
			U8SDK.getInstance().onResult(U8Code.CODE_PAY_FAIL, "pay failed. exception:"+e.getMessage());
		}
	}
	
	private GoodInfo getGoodInfo(String productID){
		
		if(this.goods.containsKey(productID)){
			return this.goods.get(productID);
		}
		return null;
	}
	
	private void loadLenovoPayGoods(){
		String xmlGoods = SDKTools.getAssetConfigs(U8SDK.getInstance().getContext(), "lenovo_pay.xml");
		
		if (xmlGoods == null)
		{
			Log.e("U8SDK", "fail to load lenovo_pay.xml");
			return;
		}
		
		Log.e("U8SDK", "The lenovo_pay Str:" + xmlGoods);
		
		XmlPullParser parser = Xml.newPullParser();

		try {
			parser.setInput(new StringReader(xmlGoods));
			
			int eventType = parser.getEventType();
			while(eventType != XmlPullParser.END_DOCUMENT){
				
				switch(eventType){
				case XmlPullParser.START_TAG:
					String tag = parser.getName();
					if("good".equals(tag)){
						String productId = parser.getAttributeValue(0);
						String wareid = parser.getAttributeValue(1);
						boolean openPrice = Boolean.parseBoolean(parser.getAttributeValue(2));
						
						GoodInfo good = new GoodInfo(productId, wareid, openPrice);
						
						if(!this.goods.containsKey(productId)){
							this.goods.put(productId, good);
						}else{
							Log.e("U8SDK", "Curr Good: "+productId+" has duplicated.");
						}
						
						Log.d("U8SDK", "Curr Good: "+productId+"; waresid:"+wareid+";openPrice:"+openPrice);
					}
				}
				eventType = parser.next();
			}
			
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
