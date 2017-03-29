package com.u8.sdk.extension.data
{
	/**
	 * 登录成功，底层返回登录成功的数据
	 * 
	 * */
	public class U8LoginResult
	{
		private var _isSuc:Boolean;				//登录成功，失败不会触发回调，默认就是true
		private var _isSwitchAccount:Boolean;	//是否是切换帐号，如果是，需要回到游戏登录界面
		private var _userID:String;				//u8server对应的用户ID
		private var _sdkUserID:String;			//第三方渠道SDK的用户ID
		private var _username:String;			//u8server生成的用户名
		private var _sdkUsername:String;		//第三方渠道SDK的用户名
		private var _token:String;				//token，用户游戏服务器去u8server进行认证使用
		
		public function U8LoginResult()
		{
		}
		
		
		public function get token():String
		{
			return _token;
		}

		public function set token(value:String):void
		{
			_token = value;
		}

		public function get sdkUsername():String
		{
			return _sdkUsername;
		}

		public function set sdkUsername(value:String):void
		{
			_sdkUsername = value;
		}

		public function get username():String
		{
			return _username;
		}

		public function set username(value:String):void
		{
			_username = value;
		}

		public function get sdkUserID():String
		{
			return _sdkUserID;
		}

		public function set sdkUserID(value:String):void
		{
			_sdkUserID = value;
		}

		public function get userID():String
		{
			return _userID;
		}

		public function set userID(value:String):void
		{
			_userID = value;
		}

		public function get isSwitchAccount():Boolean
		{
			return _isSwitchAccount;
		}

		public function set isSwitchAccount(value:Boolean):void
		{
			_isSwitchAccount = value;
		}

		public function get isSuc():Boolean
		{
			return _isSuc;
		}

		public function set isSuc(value:Boolean):void
		{
			_isSuc = value;
		}

	}
}