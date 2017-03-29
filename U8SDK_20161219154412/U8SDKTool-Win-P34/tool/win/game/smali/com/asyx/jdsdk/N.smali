.class final Lcom/asyx/jdsdk/N;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/L;


# direct methods
.method public constructor <init>(Lcom/asyx/jdsdk/L;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-static {v0}, Lcom/asyx/jdsdk/L;->a(Lcom/asyx/jdsdk/L;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-static {v0}, Lcom/asyx/jdsdk/L;->a(Lcom/asyx/jdsdk/L;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/HashMap;

    const-string v0, "Success"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/L;->dismiss()V

    const-string v0, "isbind"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-static {v0}, Lcom/asyx/jdsdk/L;->b(Lcom/asyx/jdsdk/L;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v2

    const-string v0, "PlayerID"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Loginname"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/asyx/jdsdk/LoginResultListener;->loginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-static {v0}, Lcom/asyx/jdsdk/L;->c(Lcom/asyx/jdsdk/L;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-static {v1}, Lcom/asyx/jdsdk/L;->d(Lcom/asyx/jdsdk/L;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/L;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, v3}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/L;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "PlayerID"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/asyx/jdsdk/l;

    iget-object v1, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/L;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/L;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "AsyxDialogStyle"

    invoke-static {v2, v4}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v4, "PlayerID"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Loginname"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/asyx/jdsdk/l;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/l;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/asyx/jdsdk/N;->a:Lcom/asyx/jdsdk/L;

    const-string v0, "Message"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/L;->a(Lcom/asyx/jdsdk/L;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_1
.end method
