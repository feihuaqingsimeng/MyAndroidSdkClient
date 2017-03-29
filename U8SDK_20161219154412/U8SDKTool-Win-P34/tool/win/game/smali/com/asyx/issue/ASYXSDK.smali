.class public Lcom/asyx/issue/ASYXSDK;
.super Ljava/lang/Object;
.source "ASYXSDK.java"


# static fields
.field private static instance:Lcom/asyx/issue/ASYXSDK;


# instance fields
.field private channelId:Ljava/lang/String;

.field private cpID:Ljava/lang/String;

.field private gameID:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private md5Key:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/asyx/issue/ASYXSDK;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/asyx/issue/ASYXSDK;->instance:Lcom/asyx/issue/ASYXSDK;

    return-object v0
.end method

.method static synthetic access$1(Lcom/asyx/issue/ASYXSDK;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/asyx/issue/ASYXSDK;->userId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/asyx/issue/ASYXSDK;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/asyx/issue/ASYXSDK;->username:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/asyx/issue/ASYXSDK;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/asyx/issue/ASYXSDK;->instance:Lcom/asyx/issue/ASYXSDK;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/asyx/issue/ASYXSDK;

    invoke-direct {v0}, Lcom/asyx/issue/ASYXSDK;-><init>()V

    sput-object v0, Lcom/asyx/issue/ASYXSDK;->instance:Lcom/asyx/issue/ASYXSDK;

    .line 32
    :cond_0
    sget-object v0, Lcom/asyx/issue/ASYXSDK;->instance:Lcom/asyx/issue/ASYXSDK;

    return-object v0
.end method

.method private initSDK()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .locals 1
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 46
    const-string v0, "CpId"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/issue/ASYXSDK;->cpID:Ljava/lang/String;

    .line 47
    const-string v0, "MD5Key"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/issue/ASYXSDK;->md5Key:Ljava/lang/String;

    .line 48
    const-string v0, "GameId"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/issue/ASYXSDK;->gameID:Ljava/lang/String;

    .line 49
    const-string v0, "GameName"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/issue/ASYXSDK;->gameName:Ljava/lang/String;

    .line 50
    const-string v0, "ChannelId"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/issue/ASYXSDK;->channelId:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public exit(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 92
    new-instance v0, Lcom/asyx/issue/ASYXSDK$2;

    invoke-direct {v0, p0, p1}, Lcom/asyx/issue/ASYXSDK$2;-><init>(Lcom/asyx/issue/ASYXSDK;Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/asyx/jdsdk/ASGameSDK;->exitGame(Landroid/app/Activity;Lcom/asyx/jdsdk/ExitGameListener;)V

    .line 107
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .locals 0
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/asyx/issue/ASYXSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 37
    invoke-direct {p0}, Lcom/asyx/issue/ASYXSDK;->initSDK()V

    .line 38
    return-void
.end method

.method public login(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/asyx/issue/ASYXSDK;->cpID:Ljava/lang/String;

    iget-object v1, p0, Lcom/asyx/issue/ASYXSDK;->gameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/asyx/issue/ASYXSDK;->md5Key:Ljava/lang/String;

    new-instance v3, Lcom/asyx/issue/ASYXSDK$1;

    invoke-direct {v3, p0}, Lcom/asyx/issue/ASYXSDK$1;-><init>(Lcom/asyx/issue/ASYXSDK;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/asyx/jdsdk/ASGameSDK;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/asyx/jdsdk/LoginResultListener;)V

    .line 72
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/u8/sdk/PayParams;)V
    .locals 13
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/asyx/issue/ASYXSDK;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/issue/ASYXSDK;->username:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "\u8bf7\u5148\u767b\u5f55\uff0c\u518d\u652f\u4ed8\uff01"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/asyx/issue/ASYXSDK;->cpID:Ljava/lang/String;

    iget-object v1, p0, Lcom/asyx/issue/ASYXSDK;->gameID:Ljava/lang/String;

    iget-object v2, p0, Lcom/asyx/issue/ASYXSDK;->md5Key:Ljava/lang/String;

    iget-object v3, p0, Lcom/asyx/issue/ASYXSDK;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/asyx/issue/ASYXSDK;->username:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/asyx/issue/ASYXSDK;->gameName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/asyx/issue/ASYXSDK;->channelId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/asyx/issue/ASYXSDK$3;

    invoke-direct {v12, p0, p2}, Lcom/asyx/issue/ASYXSDK$3;-><init>(Lcom/asyx/issue/ASYXSDK;Lcom/u8/sdk/PayParams;)V

    move-object v11, p1

    invoke-static/range {v0 .. v12}, Lcom/asyx/jdsdk/ASGameSDK;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/asyx/jdsdk/PayResultListener;)V

    goto :goto_0
.end method

.method public showUserCenter()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public submitGameData(Lcom/u8/sdk/UserExtraData;)V
    .locals 0
    .param p1, "data"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    .line 112
    return-void
.end method

.method public switchLogin(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/asyx/issue/ASYXSDK;->login(Landroid/app/Activity;)V

    .line 78
    return-void
.end method
