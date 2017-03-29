package com.u8.sdk.extension.data
{
	/***
	 * 游戏中用户扩展数据 
	 ***/
	public class U8ExtraGameData
	{
		public const TYPE_SELECT_SERVER:int = 1;		//选择服务器
		public const TYPE_CREATE_ROLE:int  = 2;			//创建角色
		public const TYPE_ENTER_GAME:int = 3;			//进入游戏
		public const TYPE_LEVEL_UP:int = 4;				//等级提升
		public const TYPE_EXIT_GAME:int = 5;			//退出游戏
		
		public function U8ExtraGameData()
		{
		}
		
		//调用时机，设置为上面定义的类型，在各个对应的地方调用submitGameData方法
		private var _dataType:int;

		//角色ID
		private var _roleID:String;
		
		//角色名称
		private var _roleName:String;
		
		//角色等级
		private var _roleLevel:String;
		
		//服务器ID
		private var _serverID:int;
		
		//服务器名称
		private var _serverName:String
		
		//当前角色生成拥有的虚拟币数量
		private var _moneyNum:int;
		

		
		
		public function get moneyNum():int
		{
			return _moneyNum;
		}

		public function set moneyNum(value:int):void
		{
			_moneyNum = value;
		}

		public function get serverName():String
		{
			return _serverName;
		}

		public function set serverName(value:String):void
		{
			_serverName = value;
		}

		public function get serverID():int
		{
			return _serverID;
		}

		public function set serverID(value:int):void
		{
			_serverID = value;
		}

		public function get roleLevel():String
		{
			return _roleLevel;
		}

		public function set roleLevel(value:String):void
		{
			_roleLevel = value;
		}

		public function get roleName():String
		{
			return _roleName;
		}

		public function set roleName(value:String):void
		{
			_roleName = value;
		}

		public function get roleID():String
		{
			return _roleID;
		}

		public function set roleID(value:String):void
		{
			_roleID = value;
		}

		public function get dataType():int
		{
			return _dataType;
		}

		public function set dataType(value:int):void
		{
			_dataType = value;
		}

	}
}