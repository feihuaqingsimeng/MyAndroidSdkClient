.class public Lcom/ipaynow/plugin/api/IpaynowPlugin;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u4f20\u5165\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/ipaynow/plugin/b/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u7f3a\u5c11\u6743\u9650"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/ipaynow/plugin/api/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "\u8bf7\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static setCustomDialog(Lcom/ipaynow/plugin/view/IpaynowLoading;)V
    .locals 0

    sput-object p0, Lcom/ipaynow/plugin/a/e;->l:Lcom/ipaynow/plugin/view/IpaynowLoading;

    return-void
.end method

.method public static setPayLoading(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/ipaynow/plugin/api/a;->setPayLoading(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public static setShowConfirmDialog(Z)V
    .locals 0

    sput-boolean p0, Lcom/ipaynow/plugin/a/e;->k:Z

    return-void
.end method
