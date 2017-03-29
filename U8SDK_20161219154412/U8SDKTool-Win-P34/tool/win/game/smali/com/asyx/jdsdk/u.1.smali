.class final Lcom/asyx/jdsdk/u;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/s;


# direct methods
.method public constructor <init>(Lcom/asyx/jdsdk/s;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/u;->a:Lcom/asyx/jdsdk/s;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/u;)Lcom/asyx/jdsdk/s;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/u;->a:Lcom/asyx/jdsdk/s;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/asyx/jdsdk/u;->a:Lcom/asyx/jdsdk/s;

    invoke-static {v0}, Lcom/asyx/jdsdk/s;->a(Lcom/asyx/jdsdk/s;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/u;->a:Lcom/asyx/jdsdk/s;

    invoke-static {v0}, Lcom/asyx/jdsdk/s;->a(Lcom/asyx/jdsdk/s;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
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

    iget-object v0, p0, Lcom/asyx/jdsdk/u;->a:Lcom/asyx/jdsdk/s;

    const-string v1, "\u4fee\u6539\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/s;->a(Lcom/asyx/jdsdk/s;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    new-instance v1, Lcom/asyx/jdsdk/v;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/v;-><init>(Lcom/asyx/jdsdk/u;)V

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/ao;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/asyx/jdsdk/u;->a:Lcom/asyx/jdsdk/s;

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/s;->a(Lcom/asyx/jdsdk/s;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0
.end method
