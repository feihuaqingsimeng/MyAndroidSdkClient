.class final Lcom/asyx/jdsdk/R;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/Q;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/Q;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-static {v0}, Lcom/asyx/jdsdk/Q;->a(Lcom/asyx/jdsdk/Q;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

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

    iget-object v1, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/ag;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ag;->show()V

    :goto_0
    iget-object v0, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/Q;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Lcom/asyx/jdsdk/e;

    iget-object v1, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/Q;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/e;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/asyx/jdsdk/R;->a:Lcom/asyx/jdsdk/Q;

    invoke-static {v0}, Lcom/asyx/jdsdk/Q;->b(Lcom/asyx/jdsdk/Q;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/LoginResultListener;->loginFail()V

    goto :goto_0
.end method
