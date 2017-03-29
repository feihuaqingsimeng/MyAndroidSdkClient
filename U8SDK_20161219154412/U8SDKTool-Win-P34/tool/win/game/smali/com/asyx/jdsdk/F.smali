.class final Lcom/asyx/jdsdk/F;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/B;


# direct methods
.method public constructor <init>(Lcom/asyx/jdsdk/B;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/F;->a:Lcom/asyx/jdsdk/B;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/F;)Lcom/asyx/jdsdk/B;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/F;->a:Lcom/asyx/jdsdk/B;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/asyx/jdsdk/F;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v0}, Lcom/asyx/jdsdk/B;->d(Lcom/asyx/jdsdk/B;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/F;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v0}, Lcom/asyx/jdsdk/B;->d(Lcom/asyx/jdsdk/B;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/asyx/jdsdk/F;->a:Lcom/asyx/jdsdk/B;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/B;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

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

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/asyx/jdsdk/F;->a:Lcom/asyx/jdsdk/B;

    const-string v1, "\u627e\u56de\u5bc6\u7801\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    new-instance v1, Lcom/asyx/jdsdk/G;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/G;-><init>(Lcom/asyx/jdsdk/F;)V

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/ao;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/asyx/jdsdk/F;->a:Lcom/asyx/jdsdk/B;

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
