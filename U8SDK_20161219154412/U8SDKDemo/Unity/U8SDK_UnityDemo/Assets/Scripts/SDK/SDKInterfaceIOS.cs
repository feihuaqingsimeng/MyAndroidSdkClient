#if UNITY_IPHONE
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using AKiOS;

public class SDKInterfaceIOS : U8SDKInterface
{
	NSObject u8SDK;
	NSObject u8User;
	NSObject u8Pay;

	// move init to application didFinishLaunchingWithOptions
    public override void Init()
	{
		Class clsU8SDK = Class.FindByName ("U8SDK");
		u8SDK = clsU8SDK.Call ("sharedInstance").Cast<NSObject> ();
		u8User = u8SDK.valueForKey ("defaultUser").Cast<NSObject> ();
		u8Pay = u8SDK.valueForKey ("defaultPay").Cast<NSObject> ();

		u8SDK.Call ("setupWithParams:", NSMutableDictionary.dictionary ());
    }

    public override void Login()
    {
		u8User.Call ("login");
    }

    public override void LoginCustom(string customData)
    {
		u8User.Call ("loginCustom:", new NSString(customData));
    }

    public override void SwitchLogin()
    {
		u8User.Call ("switchAccount");
    }

    public override bool Logout()
    {
		return u8User.Call ("logout").AsBool ();
    }

    public override bool ShowAccountCenter()
    {
		return u8User.Call ("showAccountCenter").AsBool();
    }

    public override void SubmitGameData(U8ExtraGameData data)
	{
		NSObject extraData = Class.newInstance ("U8UserExtraData");

		extraData.setValueForKey("dataType", data.dataType);
		extraData.setValueForKey("roleID", data.roleID);
		extraData.setValueForKey("roleName", data.roleName);
		extraData.setValueForKey("roleLevel", data.roleLevel);
		extraData.setValueForKey("serverID", data.serverID);
		extraData.setValueForKey("serverName", data.serverName);
		extraData.setValueForKey("moneyNum", data.moneyNum);

		u8SDK.Call("submitGameData", extraData);
    }

    public override bool SDKExit()
    {
		return u8SDK.Call ("exit").AsBool();
    }

    public override void Pay(U8PayParams data)
	{
		NSObject productInfo = Class.newInstance ("U8ProductInfo");

		productInfo.setValueForKey ("productId", data.productId);
		productInfo.setValueForKey ("productName", data.productName);
		productInfo.setValueForKey ("productDesc", data.productDesc);
		productInfo.setValueForKey ("price", data.price);
		productInfo.setValueForKey ("buyNum", data.buyNum);
		productInfo.setValueForKey ("coinNum", data.coinNum);
		productInfo.setValueForKey ("serverId", data.serverId);
		productInfo.setValueForKey ("serverName", data.serverName);
		productInfo.setValueForKey ("roleId", data.roleId);
		productInfo.setValueForKey ("roleName", data.roleName);
		productInfo.setValueForKey ("roleLevel", data.roleLevel);
		productInfo.setValueForKey ("vip", data.vip);
		productInfo.setValueForKey ("orderID", data.orderID);
		productInfo.setValueForKey ("extension", data.extension);

		u8Pay.Call ("pay:", productInfo);
    }

    public override bool IsSupportExit()
    {
		return u8SDK.Call ("isSupportExit").AsBool();
    }

    public override bool IsSupportAccountCenter()
    {
		return u8User.Call ("isSupportAccountCenter").AsBool();
    }

    public override bool IsSupportLogout()
    {
		return u8User.Call ("isSupportLogout").AsBool();
    }
}
#endif