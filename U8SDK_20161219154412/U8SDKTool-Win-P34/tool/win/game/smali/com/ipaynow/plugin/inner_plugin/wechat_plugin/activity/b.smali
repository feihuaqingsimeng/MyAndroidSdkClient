.class final Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->c(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Lcom/ipaynow/plugin/view/IpaynowLoading;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->c(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Lcom/ipaynow/plugin/view/IpaynowLoading;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->dismiss()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v0, "\u5fae\u4fe1\u901a\u77e5\u8fdb\u5ea6\u6761\u7ed3\u675f"

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/b;->M:Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V

    return-void
.end method
