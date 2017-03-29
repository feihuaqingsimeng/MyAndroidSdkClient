using UnityEngine;
using System.Collections;

/// <summary>
/// U8SDK Unity 统一调用单例接口
/// </summary>
public abstract class U8SDKInterface{

    public delegate void LoginSucHandler(U8LoginResult data);
    public delegate void LogoutHandler();

    private static U8SDKInterface _instance;

    public LoginSucHandler OnLoginSuc;
    public LogoutHandler OnLogout;


    public static U8SDKInterface Instance
    {
        get
        {
            if (_instance == null)
            {
#if UNITY_EDITOR || UNITY_STANDLONE
                _instance = new SDKInterfaceDefault();
#elif UNITY_ANDROID
                _instance = new SDKInterfaceAndroid();
#elif UNITY_IOS
                _instance = new SDKInterfaceIOS();
#endif
            }

            return _instance;
        }
    }

    //初始化
    public abstract void Init();

    //登录
    public abstract void Login();

    //自定义登录，用于腾讯应用宝，QQ登录，customData="QQ";微信登录，customData="WX"
    public abstract void LoginCustom(string customData);

    //切换帐号
    public abstract void SwitchLogin();

    //登出
    public abstract bool Logout();

    //显示个人中心
    public abstract bool ShowAccountCenter();

    //上传游戏数据
    public abstract void SubmitGameData(U8ExtraGameData data);

    //调用SDK的退出确认框,返回false，说明SDK不支持退出确认框，游戏需要使用自己的退出确认框
    public abstract bool SDKExit();

    //调用SDK支付界面
    public abstract void Pay(U8PayParams data);

    //SDK是否支持退出确认框
    public abstract bool IsSupportExit();

    //SDK是否支持用户中心
    public abstract bool IsSupportAccountCenter();

    //SDK是否支持登出
    public abstract bool IsSupportLogout();

    //去U8Server获取游戏订单号，这里逻辑是访问游戏服务器，然后游戏服务器去U8Server获取订单号
    //并返回
    public U8PayParams reqOrder(U8PayParams data)
    {
        //TODO 去游戏服务器获取订单号

        //测试
        data.orderID = "345435634534";
        data.extension = "test111";

        return data;
    }
}

/// <summary>
/// 支付接口需要的参数
/// </summary>
public class U8PayParams
{
    //游戏中商品ID
    public string productId { get; set; }
    
    //游戏中商品名称，比如元宝，钻石...
    public string productName { get; set; }
    
    //游戏中商品描述
    public string productDesc { get; set; }
    
    //价格，单位为元
    public int price { get; set; }
    
    //购买数量,一般都为1.注意下，比如游戏中“100元宝”是一条充值商品，
    //对应的价格是90元。那么上面price是90元。这里buyNum=1而不是100
    public int buyNum { get; set; }

    //当前玩家身上剩余的虚拟币数量
    public int coinNum { get; set; }
    
    //当前角色所在的服务器ID
    public string serverId { get; set; }
    
    //当前角色所在的服务器名称
    public string serverName { get; set; }
    
    //当前角色ID
    public string roleId { get; set; }
    
    //当前角色名称
    public string roleName { get; set; }
    
    //当前角色等级
    public int roleLevel { get; set; }
    
    //当前角色的vip等级
    public string vip { get; set; }
    
    //游戏服务器订单号，由服务器生成
    public string orderID { get; set; }
    
    //扩展字段，由游戏服务器生成，各个渠道SDK可能不一样
    public string extension { get; set; }
}


/// <summary>
/// 数据上报接口需要的参数
/// </summary>
public class U8ExtraGameData
{

    public const int TYPE_SELECT_SERVER = 1;		//选择服务器
	public const int TYPE_CREATE_ROLE = 2;			//创建角色
	public const int TYPE_ENTER_GAME = 3;			//进入游戏
	public const int TYPE_LEVEL_UP = 4;				//等级提升
    public const int TYPE_EXIT_GAME = 5;			//退出游戏

    //调用时机，设置为上面定义的类型，在各个对应的地方调用submitGameData方法
    public int dataType { get; set; }
    
    //角色ID
    public string roleID { get; set; }
    
    //角色名称
    public string roleName { get; set; }
    
    //角色等级
    public string roleLevel { get; set; }
    
    //服务器ID
    public int serverID { get; set; }
    
    //服务器名称
    public string serverName { get; set; }
    
    //当前角色生成拥有的虚拟币数量
    public int moneyNum { get; set; }

    //角色创建时间，从1970年到现在的时间，单位秒
    public string roleCreateTime { get; set; }

    //角色等级变化时间，从1970年到现在的时间，单位秒
    public string roleLevelUpTime { get; set; }
}

/// <summary>
/// U8SDK 登录结果
/// </summary>
public class U8LoginResult
{
    //是否认证成功
    public bool isSuc { get; set; }

    //当前是否为SDK界面中切换帐号的回调
    public bool isSwitchAccount { get; set; }

    //u8server返回的userID
    public string userID { get; set; }

    //渠道SDK的userID
    public string sdkUserID { get; set; }

    //u8server返回的用户名
    public string username { get; set; }

    //渠道SDK的用户名
    public string sdkUsername { get; set; }

    //u8server返回的用于登录认证的凭据
    public string token { get; set; }

}
