.class public Lcom/ta/utdid2/android/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final DEFAULT_WIFI_ADDRESS:Ljava/lang/String; = "00-00-00-00-00-00"

.field private static final TAG:Ljava/lang/String; = "NetworkUtils"

.field private static final WEAK_NETWORK_GROUP:[I

.field public static final WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static sConnManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->WEAK_NETWORK_GROUP:[I

    .line 29
    return-void

    .line 24
    :array_0
    .array-data 4
        0x4
        0x7
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _convertIntToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const-string v0, "NetworkUtils"

    const-string v1, "context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 82
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    .line 85
    :cond_1
    sget-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "Unknown"

    aput-object v5, v0, v6

    const-string v5, "Unknown"

    aput-object v5, v0, v7

    .line 92
    .local v0, "arrayOfString":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 94
    .local v4, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    const/4 v5, 0x0

    const-string v6, "Unknown"

    aput-object v6, v0, v5

    .line 123
    .end local v4    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v0

    .line 100
    .restart local v4    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 101
    .local v1, "localConnectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_2

    .line 102
    const/4 v5, 0x0

    const-string v6, "Unknown"

    aput-object v6, v0, v5

    goto :goto_0

    .line 120
    .end local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v4    # "localPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 106
    .restart local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .restart local v4    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 107
    .local v2, "localNetworkInfo1":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    .line 109
    const/4 v5, 0x0

    const-string v6, "Wi-Fi"

    aput-object v6, v0, v5

    goto :goto_0

    .line 113
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 114
    .local v3, "localNetworkInfo2":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    .line 116
    const/4 v5, 0x0

    const-string v6, "2G/3G"

    aput-object v6, v0, v5

    .line 117
    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    if-eqz p0, :cond_2

    .line 129
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 128
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 130
    .local v2, "wifimanage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 131
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const-string v0, "00-00-00-00-00-00"

    .line 141
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v0

    .line 138
    .restart local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v0, "00-00-00-00-00-00"

    goto :goto_0

    .line 141
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v0, "00-00-00-00-00-00"

    goto :goto_0
.end method

.method public static getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 150
    if-eqz p0, :cond_0

    .line 153
    :try_start_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 154
    .local v0, "wifiManage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 155
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/ta/utdid2/android/utils/NetworkUtils;->_convertIntToIp(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 164
    .end local v0    # "wifiManage":Landroid/net/wifi/WifiManager;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 33
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 35
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 36
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 45
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NetworkUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 43
    :cond_1
    const-string v3, "NetworkUtils"

    const-string v4, "connManager is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isConnectedToWeakNetwork(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 51
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_4

    .line 53
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 54
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    .line 55
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 56
    .local v4, "subType":I
    sget-boolean v6, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NetworkUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "subType:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    sget-object v7, Lcom/ta/utdid2/android/utils/NetworkUtils;->WEAK_NETWORK_GROUP:[I

    array-length v8, v7

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_1

    .line 71
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "subType":I
    :goto_1
    return v5

    .line 57
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "subType":I
    :cond_1
    aget v2, v7, v6

    .line 58
    .local v2, "element":I
    if-ne v2, v4, :cond_2

    .line 59
    const/4 v5, 0x1

    goto :goto_1

    .line 57
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "element":I
    .end local v4    # "subType":I
    :cond_3
    const-string v6, "NetworkUtils"

    const-string v7, "networkInfo is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "NetworkUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "NetworkUtils"

    const-string v7, "connManager is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 168
    if-eqz p0, :cond_0

    .line 170
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 171
    const-string v2, "Wi-Fi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method
