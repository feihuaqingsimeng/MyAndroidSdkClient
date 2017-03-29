.class public final Lcom/asyx/jdsdk/ao;
.super Landroid/app/Dialog;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/asyx/jdsdk/ao;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ao;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_user_prompt"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ao;->setContentView(I)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_user_prompt_box_submit"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ao;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_user_prompt_box_message"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asyx/jdsdk/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ao;->setCancelable(Z)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ao;->b:Landroid/widget/Button;

    new-instance v1, Lcom/asyx/jdsdk/ap;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/ap;-><init>(Lcom/asyx/jdsdk/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
