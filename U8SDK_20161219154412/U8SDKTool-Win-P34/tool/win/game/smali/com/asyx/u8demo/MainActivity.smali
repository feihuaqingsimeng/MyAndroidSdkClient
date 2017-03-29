.class public Lcom/asyx/u8demo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asyx/u8demo/MainActivity$OrderTask;,
        Lcom/asyx/u8demo/MainActivity$SDKlistener;
    }
.end annotation


# instance fields
.field private debugView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/asyx/u8demo/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/asyx/u8demo/MainActivity;->login()V

    return-void
.end method

.method static synthetic access$2(Lcom/asyx/u8demo/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/asyx/u8demo/MainActivity;->pay()V

    return-void
.end method

.method private login()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/asyx/u8demo/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/asyx/u8demo/MainActivity$3;-><init>(Lcom/asyx/u8demo/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pay()V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Lcom/u8/sdk/PayParams;

    invoke-direct {v1}, Lcom/u8/sdk/PayParams;-><init>()V

    invoke-virtual {v1, v6}, Lcom/u8/sdk/PayParams;->setBuyNum(I)V

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setCoinNum(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/u8/sdk/PayParams;->setPrice(I)V

    const-string v3, "1"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setProductId(Ljava/lang/String;)V

    const-string v3, "\u5143\u5b9d"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setProductName(Ljava/lang/String;)V

    const-string v3, "\u8d2d\u4e70100\u5143\u5b9d"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setProductDesc(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setRoleId(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/u8/sdk/PayParams;->setRoleLevel(I)V

    const-string v3, "\u6d4b\u8bd5\u89d2\u8272\u540d"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setRoleName(Ljava/lang/String;)V

    const-string v3, "10"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setServerId(Ljava/lang/String;)V

    const-string v3, "\u6d4b\u8bd5"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setServerName(Ljava/lang/String;)V

    const-string v3, "vip1"

    invoke-virtual {v1, v3}, Lcom/u8/sdk/PayParams;->setVip(Ljava/lang/String;)V

    const-string v0, "http://issue.23youxi.com/pay/getOrderID"

    new-instance v2, Lcom/asyx/u8demo/MainActivity$OrderTask;

    invoke-direct {v2, p0, v0}, Lcom/asyx/u8demo/MainActivity$OrderTask;-><init>(Lcom/asyx/u8demo/MainActivity;Ljava/lang/String;)V

    new-array v3, v6, [Lcom/u8/sdk/PayParams;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/asyx/u8demo/MainActivity$OrderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/u8/sdk/U8SDK;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/asyx/u8demo/MainActivity;->setContentView(I)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    new-instance v3, Lcom/asyx/u8demo/MainActivity$SDKlistener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/asyx/u8demo/MainActivity$SDKlistener;-><init>(Lcom/asyx/u8demo/MainActivity;Lcom/asyx/u8demo/MainActivity$SDKlistener;)V

    invoke-virtual {v2, v3}, Lcom/u8/sdk/U8SDK;->setSDKListener(Lcom/u8/sdk/IU8SDKListener;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/u8/sdk/U8SDK;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->onCreate()V

    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/asyx/u8demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/asyx/u8demo/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/asyx/u8demo/MainActivity$1;-><init>(Lcom/asyx/u8demo/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lcom/asyx/u8demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/asyx/u8demo/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/asyx/u8demo/MainActivity$2;-><init>(Lcom/asyx/u8demo/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/asyx/u8demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->onNewIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onRestart()V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStart()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
