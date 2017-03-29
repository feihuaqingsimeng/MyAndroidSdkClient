package com.u8.sdk.extension
{
	import flash.events.Event;
	import com.u8.sdk.extension.data.U8LoginResult;
	
	/**
	 * 登录成功事件
	 * */
	public class U8SDKLoginEvent extends Event
	{
		public var loginResult:U8LoginResult;
		
		public function U8SDKLoginEvent(type:String,result:U8LoginResult, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.loginResult = result;
		}
		
		public override function clone():Event
		{
			return new U8SDKLoginEvent(type, loginResult, bubbles, cancelable);
		}
	}
}