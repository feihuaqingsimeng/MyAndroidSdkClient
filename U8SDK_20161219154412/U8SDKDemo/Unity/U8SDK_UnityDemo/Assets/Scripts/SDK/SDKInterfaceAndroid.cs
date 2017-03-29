#if UNITY_ANDROID

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;


/// <summary>
/// U8SDK Android平台接口的调用
/// </summary>
public class SDKInterfaceAndroid : U8SDKInterface
{

    private AndroidJavaObject jo;

    public SDKInterfaceAndroid()
    {
        using (AndroidJavaClass jc = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            jo = jc.GetStatic<AndroidJavaObject>("currentActivity");
        }
    }

    private T SDKCall<T>(string method, params object[] param)
    {
        try
        {
            return jo.Call<T>(method, param);
        }
        catch (Exception e)
        {
            Debug.LogError(e);
        }
        return default(T);
    }

    private void SDKCall(string method, params object[] param)
    {
        try
        {
            jo.Call(method, param);
        }
        catch (Exception e)
        {
            Debug.LogError(e);
        }
    }

    //这里Android中，在onCreate中直接调用了initSDK，所以这里就不用调用了
    public override void Init()
    {
        //SDKCall("initSDK");
        
    }

    public override void Login()
    {
        SDKCall("login");
    }

    public override void LoginCustom(string customData)
    {
        SDKCall("loginCustom", customData);
    }

    public override void SwitchLogin()
    {
        SDKCall("switchLogin");
    }

    public override bool Logout()
    {
        if (!IsSupportLogout())
        {
            return false;
        }

        SDKCall("logout");
        return true;
    }

    public override bool ShowAccountCenter()
    {
        if (!IsSupportAccountCenter())
        {
            return false;
        }

        SDKCall("showAccountCenter");
        return true;
    }

    public override void SubmitGameData(U8ExtraGameData data)
    {
        string json = encodeGameData(data);
        SDKCall("submitExtraData", json);
    }

    public override bool SDKExit()
    {
        if (!IsSupportExit())
        {
            return false;
        }

        SDKCall("exit");
        return true;
    }

    public override void Pay(U8PayParams data)
    {
        string json = encodePayParams(data);
        SDKCall("pay", json);
    }

    public override bool IsSupportExit()
    {
        return SDKCall<bool>("isSupportExit");
    }

    public override bool IsSupportAccountCenter()
    {
        return SDKCall<bool>("isSupportAccountCenter");
    }

    public override bool IsSupportLogout()
    {
        return SDKCall<bool>("isSupportLogout");
    }

    private string encodeGameData(U8ExtraGameData data)
    {
        Dictionary<string, object> map = new Dictionary<string, object>();
        map.Add("dataType", data.dataType);
        map.Add("roleID", data.roleID);
        map.Add("roleName", data.roleName);
        map.Add("roleLevel", data.roleLevel);
        map.Add("serverID", data.serverID);
        map.Add("serverName", data.serverName);
        map.Add("moneyNum", data.moneyNum);
        map.Add("roleCreateTime", data.roleCreateTime);
        map.Add("roleLevelUpTime", data.roleLevelUpTime);
        return MiniJSON.Json.Serialize(map);        
    }

    private string encodePayParams(U8PayParams data)
    {
        Dictionary<string, object> map = new Dictionary<string, object>();
        map.Add("productId", data.productId);
        map.Add("productName", data.productName);
        map.Add("productDesc", data.productDesc);
        map.Add("price", data.price);
        map.Add("buyNum", data.buyNum);
        map.Add("coinNum", data.coinNum);
        map.Add("serverId", data.serverId);
        map.Add("serverName", data.serverName);
        map.Add("roleId", data.roleId);
        map.Add("roleName", data.roleName);
        map.Add("roleLevel", data.roleLevel);
        map.Add("vip", data.vip);
        map.Add("orderID", data.orderID);
        map.Add("extension", data.extension);

        return MiniJSON.Json.Serialize(map);        
    }
}

#endif