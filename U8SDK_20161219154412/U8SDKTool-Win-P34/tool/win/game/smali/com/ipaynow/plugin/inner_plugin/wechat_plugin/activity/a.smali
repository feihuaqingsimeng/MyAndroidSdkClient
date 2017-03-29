.class final Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v2}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "payVoucher"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/a;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-virtual {v1, v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
