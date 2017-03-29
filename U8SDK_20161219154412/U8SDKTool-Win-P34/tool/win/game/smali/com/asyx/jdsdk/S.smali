.class public final Lcom/asyx/jdsdk/S;
.super Landroid/app/Dialog;


# instance fields
.field private a:Lcom/asyx/jdsdk/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/S;->a:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/S;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/S;->a:Lcom/asyx/jdsdk/a;

    return-object v0
.end method

.method static synthetic a(Lcom/asyx/jdsdk/S;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/S;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/S;Ljava/util/HashMap;)V
    .locals 7

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "IsShow"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->d(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/asyx/jdsdk/ag;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxWindowStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/ag;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ag;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->dismiss()V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/asyx/jdsdk/e;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/e;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "Title"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "Content"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v0, "IntoGame"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v0, Lcom/asyx/jdsdk/Q;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "AsyxDialogStyle"

    invoke-static {v2, v6}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Lcom/asyx/jdsdk/Q;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/Q;->show()V

    goto :goto_0

    :cond_2
    const-string v0, "Message"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/S;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/ao;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/asyx/jdsdk/ao;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v1, Lcom/asyx/jdsdk/U;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/U;-><init>(Lcom/asyx/jdsdk/S;)V

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/ao;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->dismiss()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_wait_progressdialog"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/S;->setContentView(I)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id_wait_progressbar_message"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/S;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/asyx/jdsdk/S;->setCancelable(Z)V

    new-instance v0, Lcom/asyx/jdsdk/V;

    invoke-direct {v0, p0, v2}, Lcom/asyx/jdsdk/V;-><init>(Lcom/asyx/jdsdk/S;B)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/S;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/T;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/T;-><init>(Lcom/asyx/jdsdk/S;Lcom/asyx/jdsdk/V;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/V;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
