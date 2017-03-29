.class public Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/ipaynow/plugin/Presenter/a/a;


# instance fields
.field private B:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Lcom/ipaynow/plugin/view/IpaynowLoading;

.field private J:Landroid/app/AlertDialog;

.field private K:Landroid/os/Bundle;

.field private L:Lcom/ipaynow/plugin/d/c;

.field private appId:Ljava/lang/String;

.field private mhtOrderNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->E:Ljava/lang/String;

    iput v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->F:I

    iput-boolean v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->G:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->J:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->L:Lcom/ipaynow/plugin/d/c;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->F:I

    return v0
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->F:I

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->d()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "01"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "03"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "respMsg"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic c(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Lcom/ipaynow/plugin/view/IpaynowLoading;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    const-string v0, "\u5fae\u4fe1\u901a\u77e5\u8fdb\u5ea6\u6761\u7ed3\u675f"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/ipaynow/plugin/b/b/a/a;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/ipaynow/plugin/b/b/a/a;->z:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "03"

    const-string v1, "PE002"

    const-string v2, "\u5fae\u4fe1\u4ea4\u6613\u67e5\u8be2\u8d85\u65f6"

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "01"

    iget-object v1, p1, Lcom/ipaynow/plugin/b/b/a/a;->B:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/plugin/b/b/a/a;->C:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/ipaynow/plugin/b/b/a/a;->A:Ljava/lang/String;

    const-string v1, "A001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "00"

    invoke-direct {p0, v0, v2, v2}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "A003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "A004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    sget-boolean v0, Lcom/ipaynow/plugin/a/e;->k:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ipaynow/plugin/view/a;

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u662f\u5426\u7ee7\u7eed\u5b8c\u6210\u5fae\u4fe1\u652f\u4ed8?"

    new-instance v4, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-direct {v4, p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    new-instance v5, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;

    invoke-direct {v5, p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;-><init>(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ipaynow/plugin/view/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/a;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->J:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->J:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_5
    const-string v0, "02"

    invoke-direct {p0, v0, v2, v2}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    const-string v0, "\u8fdb\u5165\u5fae\u4fe1\u901a\u77e5\u9875\u9762"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/ipaynow/plugin/a/e;->l:Lcom/ipaynow/plugin/view/IpaynowLoading;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ipaynow/plugin/view/b;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/view/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    :goto_0
    iput-boolean v4, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->G:Z

    iput-boolean v4, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "01"

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->B:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->E:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v5}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->requestWindowFeature(I)Z

    const v0, 0x103007f

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->setTheme(I)V

    new-instance v0, Lcom/ipaynow/plugin/d/c;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/d/c;-><init>(Lcom/ipaynow/plugin/Presenter/a/a;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->L:Lcom/ipaynow/plugin/d/c;

    return-void

    :cond_1
    sget-object v0, Lcom/ipaynow/plugin/a/e;->l:Lcom/ipaynow/plugin/view/IpaynowLoading;

    iput-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u5fae\u4fe1\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->K:Landroid/os/Bundle;

    const-string v3, "payVoucher"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iput-boolean v5, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    goto :goto_1

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    invoke-virtual {p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "01"

    const-string v1, "PE007"

    const-string v2, "\u7528\u6237\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "\u70b9\u51fb\u4e86HOME"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "\u52a0\u8f7d\u6570\u636e"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->G:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->F:I

    iget v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->F:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->show()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->I:Lcom/ipaynow/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u9000\u51fa\u5fae\u4fe1\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->L:Lcom/ipaynow/plugin/d/c;

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "funcode"

    const-string v5, "MQ001"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appId"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mhtCharset"

    const-string v2, "UTF-8"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mhtSignature"

    invoke-static {v3, v7, v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/ipaynow/plugin/a/d;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/ipaynow/plugin/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ipaynow/plugin/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mhtSignType"

    const-string v2, "MD5"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ipaynow/plugin/b/b/b;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/ipaynow/plugin/b/b/b;-><init>(Lcom/ipaynow/plugin/d/a/a;ILandroid/app/ProgressDialog;)V

    new-array v0, v7, [Ljava/lang/String;

    aput-object v1, v0, v6

    invoke-virtual {v2, v0}, Lcom/ipaynow/plugin/b/b/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean v6, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->H:Z

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "\u5fae\u4fe1\u901a\u77e5Activity\u7ed3\u675f"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->G:Z

    invoke-direct {p0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->d()V

    return-void
.end method
