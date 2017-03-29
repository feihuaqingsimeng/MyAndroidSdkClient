.class final Lcom/asyx/jdsdk/j;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/e;


# direct methods
.method public constructor <init>(Lcom/asyx/jdsdk/e;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-static {v0}, Lcom/asyx/jdsdk/e;->a(Lcom/asyx/jdsdk/e;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/HashMap;

    const-string v0, "Success"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/e;->dismiss()V

    const-string v0, "isbind"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "PlayerID"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-static {v0}, Lcom/asyx/jdsdk/e;->b(Lcom/asyx/jdsdk/e;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v2

    const-string v0, "PlayerID"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Loginname"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/asyx/jdsdk/LoginResultListener;->loginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/asyx/jdsdk/l;

    iget-object v1, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "PlayerID"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "Loginname"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/asyx/jdsdk/l;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/l;->show()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    const-string v1, "\u81ea\u52a8\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\uff01"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/e;->a(Lcom/asyx/jdsdk/e;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/HashMap;

    const-string v0, "Success"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/e;->dismiss()V

    const-string v0, "isbind"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "PlayerID"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-static {v0}, Lcom/asyx/jdsdk/e;->b(Lcom/asyx/jdsdk/e;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v2

    const-string v0, "PlayerID"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Loginname"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/asyx/jdsdk/LoginResultListener;->loginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/asyx/jdsdk/l;

    iget-object v1, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "PlayerID"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "Loginname"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/asyx/jdsdk/l;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/l;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/asyx/jdsdk/j;->a:Lcom/asyx/jdsdk/e;

    const-string v1, "\u5bc6\u7801\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\uff01"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/e;->a(Lcom/asyx/jdsdk/e;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
