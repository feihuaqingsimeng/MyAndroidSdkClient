.class public Lcom/asyx/issue/ASYXUser;
.super Ljava/lang/Object;
.source "ASYXUser.java"

# interfaces
.implements Lcom/u8/sdk/IUser;


# instance fields
.field private context:Landroid/app/Activity;

.field private supportedMethods:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "switchLogin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "logout"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "exit"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/asyx/issue/ASYXUser;->supportedMethods:[Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/asyx/issue/ASYXUser;->context:Landroid/app/Activity;

    .line 24
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->getInstance()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asyx/issue/ASYXSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 25
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->getInstance()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/issue/ASYXUser;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/asyx/issue/ASYXSDK;->exit(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asyx/issue/ASYXUser;->supportedMethods:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/u8/sdk/utils/Arrays;->contain([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public login()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->getInstance()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/issue/ASYXUser;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/asyx/issue/ASYXSDK;->login(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method public loginCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "customData"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->getInstance()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/issue/ASYXSDK;->logout()V

    .line 64
    return-void
.end method

.method public postGiftCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public queryAntiAddiction()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public realNameRegister()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public showAccountCenter()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .locals 0
    .param p1, "extraData"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    .line 70
    return-void
.end method

.method public switchLogin()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->getInstance()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/issue/ASYXUser;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/asyx/issue/ASYXSDK;->switchLogin(Landroid/app/Activity;)V

    .line 52
    return-void
.end method
