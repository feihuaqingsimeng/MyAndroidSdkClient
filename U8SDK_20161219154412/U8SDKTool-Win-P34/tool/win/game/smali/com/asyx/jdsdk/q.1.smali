.class final Lcom/asyx/jdsdk/q;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/l;


# direct methods
.method public constructor <init>(Lcom/asyx/jdsdk/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v0}, Lcom/asyx/jdsdk/l;->d(Lcom/asyx/jdsdk/l;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v0}, Lcom/asyx/jdsdk/l;->d(Lcom/asyx/jdsdk/l;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/l;->dismiss()V

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v0}, Lcom/asyx/jdsdk/l;->e(Lcom/asyx/jdsdk/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    iget-object v1, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v1}, Lcom/asyx/jdsdk/l;->f(Lcom/asyx/jdsdk/l;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/l;->a(Lcom/asyx/jdsdk/l;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    iget-object v1, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v1}, Lcom/asyx/jdsdk/l;->g(Lcom/asyx/jdsdk/l;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/l;->b(Lcom/asyx/jdsdk/l;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v1}, Lcom/asyx/jdsdk/l;->h(Lcom/asyx/jdsdk/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v2}, Lcom/asyx/jdsdk/l;->i(Lcom/asyx/jdsdk/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v1}, Lcom/asyx/jdsdk/l;->j(Lcom/asyx/jdsdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v0}, Lcom/asyx/jdsdk/l;->k(Lcom/asyx/jdsdk/l;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v1}, Lcom/asyx/jdsdk/l;->j(Lcom/asyx/jdsdk/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    invoke-static {v2}, Lcom/asyx/jdsdk/l;->l(Lcom/asyx/jdsdk/l;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/asyx/jdsdk/LoginResultListener;->loginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/asyx/jdsdk/q;->a:Lcom/asyx/jdsdk/l;

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/l;->c(Lcom/asyx/jdsdk/l;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
