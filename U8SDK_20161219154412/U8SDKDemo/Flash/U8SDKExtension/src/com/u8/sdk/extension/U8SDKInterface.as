package com.u8.sdk.extension
{
	import com.u8.sdk.extension.data.U8ExtraGameData;
	import com.u8.sdk.extension.data.U8LoginResult;
	import com.u8.sdk.extension.data.U8PayParams;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	
	/***
	 * SDK统一调用接口
	 * 
	 ***/
	public class U8SDKInterface extends EventDispatcher
	{
		
		
		private static const EXT_ID:String = "com.u8.sdk.flash.extension";
		
		private static var _instance:U8SDKInterface;
		
		private var context:ExtensionContext;
		
		public function U8SDKInterface()
		{
			if(_instance)
			{
				throw new Error("U8SDKInterface is a singleton class. please use U8SDKInterface.getInstance() to get the only instance");
			}
			
			this.context = ExtensionContext.createExtensionContext(EXT_ID, "");
			
			this.context.addEventListener(StatusEvent.STATUS, onStatus);
			
			_instance = this;
		}
		
		public static function getInstance():U8SDKInterface
		{
			if(!_instance)
			{
				new U8SDKInterface();
			}
			
			return _instance;
		}
		
		//调用底层的logcat日志输出
		public function log(msg:String):void
		{
			this.context.call("u8_log", msg);
		}
		//初始化，如果底层直接调用，游戏中不需要调用
		public function init():void
		{
			log("init called in extension");
			this.context.call("u8_init");
		}
		
		//打开SDK登录界面
		public function login():void
		{
			log("login called in extension");
			this.context.call("u8_login");
		}
		
		//调用SDK的切换帐号接口，可以不调用
		public function switchLogin():void
		{
			log("switchLogin called in extension");
			this.context.call("u8_switchLogin");	
		}
		
		//调用logout之前，进行判断
		public function isSupportLogout():Boolean
		{
			log("isSupportLogout called in extension");
			return Boolean(this.context.call("u8_isSupportLogout"));
		}
		
		//调用SDK退出当前帐号接口，可以不调用
		public function logout():void
		{
			log("logout called in extension");
			this.context.call("u8_logout");
		}
		
		//调用showAccountCenter之前，必须判断
		public function isSupportAccountCenter():Boolean
		{

			log("isSupportAccountCenter called in extension");
			return Boolean(this.context.call("u8_isSupportAccoutCenter"));
		}
		
		//显示用户中心，游戏界面中，必须要有【个人中心】按钮，可以打开部分渠道SDK的个人中心界面，强制要求的
		//游戏中，可以根据isSupportAccountCenter接口先判断，当前渠道是否有该接口，有则显示按钮，并调用；否则，直接隐藏该按钮
		public function showAccountCenter():void
		{
			log("showAccountCenter called in extension");
			this.context.call("u8_showAccountCenter");
		}
		
		//当前渠道是否支持退出确认，调用sdkExit之前，需要先调用该方法判断
		public function isSupportExit():Boolean
		{
			log("isSupportExit called in extension");
			return Boolean(this.context.call("u8_isSupportExit"));
		}
		
		//调用SDK退出确认框。在游戏退出时调用。但是，部分渠道SDK没有该接口。需要，调用isSupportExit判断，如果有，则调用该接口；没有，则调用游戏自己的退出确认框。
		//监听手机返回键，按返回键的时候，必须要触发该接口
		public function sdkExit():void
		{
			log("sdkExit called in extension");
			this.context.call("u8_exit");
		}
		
		//提交游戏中玩家角色数据，必须调用，否则部分渠道SDK上不了，强制要求
		//调用时机，在U8ExtraGameData中dataType字段，该类中有几个常量，分别对应不同的调用时机。
		//游戏中，根据自己的逻辑，在合适的地方调用。
		public function submitGameData(data:U8ExtraGameData):void
		{
			var json:String = JSON.stringify(data);
			log("submitGameData called in extension:"+data);
			this.context.call("u8_submitExtraData", json);
		}
		
		//打开SDK支付界面
		public function pay(data:U8PayParams):void
		{
			var json:String = JSON.stringify(data);
			log("pay called in extension:"+json);
			this.context.call("u8_pay", json);
		}
		
		private function onStatus(event:StatusEvent):void
		{
			log("onStatus code:"+event.code);
			
			log("onStatus level:"+event.level);
			
			switch(event.code)
			{
				case "OnInitSuc":
					dispatchEvent(new Event("OnU8InitSuc"));
					break;
				case "OnLoginSuc":
					var data:String = event.level; 
					var result:U8LoginResult = U8LoginResult(JSON.parse(event.level));
					dispatchEvent(new U8SDKLoginEvent("OnU8LoginSuc", result));
					break;
				case "OnLogout":
					dispatchEvent(new Event("OnU8Logout"));
					break;
				case "OnPayResult":
					var suc:String = event.level;
					if(suc == "0")
					{
						dispatchEvent(new Event("OnPayResultSuc"));
						
					}else
					{
						dispatchEvent(new Event("OnPayResultFail"));
					}
			}
		}
			
	}
}