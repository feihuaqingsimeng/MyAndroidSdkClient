package com.u8.sdk.extension.data
{
	public class U8PayParams
	{
		public function U8PayParams()
		{
		}
		
		//游戏中商品ID
		private var _productId:String;
		
		//游戏中商品名称，比如元宝，钻石...
		private var _productName:String;
		
		//游戏中商品描述
		private var _productDesc:String;
		
		//价格，单位为元
		private var _price:int;
		
		//购买数量,一般都为1.注意下，比如游戏中“100元宝”是一条充值商品，
		//对应的价格是90元。那么上面price是90元。这里buyNum=1而不是100
		private var _buyNum:int;
		
		//当前玩家身上剩余的虚拟币数量
		private var _coinNum:int;
		
		//当前角色所在的服务器ID
		private var _serverId:int;
		
		//当前角色所在的服务器名称
		private var _serverName:String;
		
		//当前角色ID
		private var _roleId:String;
		
		//当前角色名称
		private var _roleName:String;
		
		//当前角色等级
		private var _roleLevel:int;
		
		//当前角色的vip等级
		private var _vip:String;
		
		//游戏服务器订单号，由服务器生成
		private var _orderID:String;
		
		//扩展字段，由游戏服务器生成，各个渠道SDK可能不一样
		private var _extension:String;
		
		
		
		public function get extension():String
		{
			return _extension;
		}

		public function set extension(value:String):void
		{
			_extension = value;
		}

		public function get orderID():String
		{
			return _orderID;
		}

		public function set orderID(value:String):void
		{
			_orderID = value;
		}

		public function get vip():String
		{
			return _vip;
		}

		public function set vip(value:String):void
		{
			_vip = value;
		}

		public function get roleLevel():int
		{
			return _roleLevel;
		}

		public function set roleLevel(value:int):void
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

		public function get roleId():String
		{
			return _roleId;
		}

		public function set roleId(value:String):void
		{
			_roleId = value;
		}

		public function get serverName():String
		{
			return _serverName;
		}

		public function set serverName(value:String):void
		{
			_serverName = value;
		}

		public function get serverId():int
		{
			return _serverId;
		}

		public function set serverId(value:int):void
		{
			_serverId = value;
		}

		public function get coinNum():int
		{
			return _coinNum;
		}

		public function set coinNum(value:int):void
		{
			_coinNum = value;
		}

		public function get buyNum():int
		{
			return _buyNum;
		}

		public function set buyNum(value:int):void
		{
			_buyNum = value;
		}

		public function get price():int
		{
			return _price;
		}

		public function set price(value:int):void
		{
			_price = value;
		}

		public function get productDesc():String
		{
			return _productDesc;
		}

		public function set productDesc(value:String):void
		{
			_productDesc = value;
		}

		public function get productName():String
		{
			return _productName;
		}

		public function set productName(value:String):void
		{
			_productName = value;
		}

		public function get productId():String
		{
			return _productId;
		}

		public function set productId(value:String):void
		{
			_productId = value;
		}

	}
}