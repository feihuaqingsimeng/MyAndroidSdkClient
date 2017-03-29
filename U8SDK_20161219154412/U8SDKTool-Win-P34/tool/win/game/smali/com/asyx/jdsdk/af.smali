.class final Lcom/asyx/jdsdk/af;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/RechargeActivity;


# direct methods
.method private constructor <init>(Lcom/asyx/jdsdk/RechargeActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/asyx/jdsdk/RechargeActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Lcom/asyx/jdsdk/RechargeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Lcom/asyx/jdsdk/RechargeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    const-string v2, "AliPayInfo"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asyx/jdsdk/RechargeActivity;->a(Lcom/asyx/jdsdk/RechargeActivity;Z)V

    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/asyx/jdsdk/W;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asyx/jdsdk/W;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/W;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/RechargeActivity;->finish()V

    iget-object v0, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->paySuccess()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u652f\u4ed8\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/W;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    iget-object v0, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/RechargeActivity;->a(Lcom/asyx/jdsdk/RechargeActivity;Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->c(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->d(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->e(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/asyx/jdsdk/af;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/RechargeActivity;->f(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
