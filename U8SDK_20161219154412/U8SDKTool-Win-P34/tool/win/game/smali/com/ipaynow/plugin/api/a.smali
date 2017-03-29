.class public final Lcom/ipaynow/plugin/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/Presenter/a/a;


# static fields
.field private static a:Landroid/app/ProgressDialog;

.field private static b:Landroid/app/Activity;

.field private static c:Lcom/ipaynow/plugin/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/api/a;->b:Landroid/app/Activity;

    sput-object v0, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    sput-object v0, Lcom/ipaynow/plugin/api/a;->c:Lcom/ipaynow/plugin/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/ipaynow/plugin/c/a/a;->e()Lcom/ipaynow/plugin/c/a/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/c/a/a;->b(Landroid/content/Context;)Lcom/ipaynow/plugin/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/c/a/a;->f()Z

    sput-object p0, Lcom/ipaynow/plugin/api/a;->b:Landroid/app/Activity;

    sget-object v0, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    :cond_0
    sget-object v0, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u5b89\u5168\u73af\u5883\u626b\u63cf"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ipaynow/plugin/api/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/a/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/ipaynow/plugin/d/a;

    new-instance v1, Lcom/ipaynow/plugin/api/a;

    invoke-direct {v1}, Lcom/ipaynow/plugin/api/a;-><init>()V

    sget-object v2, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1, v2}, Lcom/ipaynow/plugin/d/a;-><init>(Lcom/ipaynow/plugin/Presenter/a/a;Landroid/app/ProgressDialog;)V

    sput-object v0, Lcom/ipaynow/plugin/api/a;->c:Lcom/ipaynow/plugin/d/a;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&funcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "B001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ipaynow/plugin/b/b/b;

    iget-object v3, v0, Lcom/ipaynow/plugin/d/b;->a:Landroid/app/ProgressDialog;

    invoke-direct {v2, v0, v4, v3}, Lcom/ipaynow/plugin/b/b/b;-><init>(Lcom/ipaynow/plugin/d/a/a;ILandroid/app/ProgressDialog;)V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/ipaynow/plugin/b/b/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static setPayLoading(Landroid/app/ProgressDialog;)V
    .locals 0

    sput-object p0, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ipaynow/plugin/b/b/a/a;)V
    .locals 8

    const/4 v7, 0x0

    sget-object v0, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p1, Lcom/ipaynow/plugin/b/b/a/a;->z:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p1, Lcom/ipaynow/plugin/b/b/a/a;->B:Ljava/lang/String;

    iget-object v1, p1, Lcom/ipaynow/plugin/b/b/a/a;->C:Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/api/a;->b:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "errorCode"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "respMsg"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p1, Lcom/ipaynow/plugin/b/b/a/a;->D:Ljava/util/HashMap;

    const-string v0, "payChannelType"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "appId"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "payVoucher"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "13"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/api/a;->a:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/ipaynow/plugin/api/a;->b:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "appId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mhtOrderNo"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payVoucher"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
