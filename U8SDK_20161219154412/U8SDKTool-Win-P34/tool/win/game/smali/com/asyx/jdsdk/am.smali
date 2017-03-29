.class final Lcom/asyx/jdsdk/am;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/ag;


# direct methods
.method public constructor <init>(Lcom/asyx/jdsdk/ag;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v1}, Lcom/asyx/jdsdk/ag;->d(Lcom/asyx/jdsdk/ag;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v1}, Lcom/asyx/jdsdk/ag;->d(Lcom/asyx/jdsdk/ag;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/ag;->dismiss()V

    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v2}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v4

    const-string v2, "PlayerID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Loginname"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Lcom/asyx/jdsdk/LoginResultListener;->loginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v2}, Lcom/asyx/jdsdk/ag;->f(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v3}, Lcom/asyx/jdsdk/ag;->g(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v4}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PlayerID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    const-string v3, "Message"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asyx/jdsdk/ag;->a(Lcom/asyx/jdsdk/ag;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    move-object v6, v0

    const-string v1, "Success"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ag;->dismiss()V

    new-instance v1, Lcom/asyx/jdsdk/l;

    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v3}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "AsyxDialogStyle"

    invoke-static {v3, v4}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "PlayerID"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "Loginname"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/asyx/jdsdk/l;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/asyx/jdsdk/l;->show()V

    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v1}, Lcom/asyx/jdsdk/ag;->h(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v2}, Lcom/asyx/jdsdk/ag;->i(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v3}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    const-string v1, "Message"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asyx/jdsdk/ag;->a(Lcom/asyx/jdsdk/ag;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    const-string v1, "Success"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ag;->dismiss()V

    const-string v1, "isbind"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v1}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v3

    const-string v1, "PlayerID"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Loginname"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Lcom/asyx/jdsdk/LoginResultListener;->loginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "PlayerID"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "Loginname"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/asyx/jdsdk/l;

    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v3}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "AsyxDialogStyle"

    invoke-static {v3, v4}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "PlayerID"

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Loginname"

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/asyx/jdsdk/l;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/asyx/jdsdk/l;->show()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/asyx/jdsdk/am;->a:Lcom/asyx/jdsdk/ag;

    const-string v1, "Message"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asyx/jdsdk/ag;->a(Lcom/asyx/jdsdk/ag;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/ao;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
