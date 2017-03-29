.class public final Lcom/asyx/jdsdk/Q;
.super Landroid/app/Dialog;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/asyx/jdsdk/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/asyx/jdsdk/Q;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/asyx/jdsdk/Q;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/asyx/jdsdk/Q;->c:Ljava/lang/String;

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/Q;->d:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/Q;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/Q;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/asyx/jdsdk/Q;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/Q;->d:Lcom/asyx/jdsdk/a;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_notice"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/Q;->setContentView(I)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_notice_title"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/Q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asyx/jdsdk/Q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_notice_content"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/Q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asyx/jdsdk/Q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/Q;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_notice_submit"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/Q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/asyx/jdsdk/R;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/R;-><init>(Lcom/asyx/jdsdk/Q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
