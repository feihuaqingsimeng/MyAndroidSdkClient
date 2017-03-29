.class final Lcom/asyx/jdsdk/G;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/F;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/F;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/G;->a:Lcom/asyx/jdsdk/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/L;

    iget-object v1, p0, Lcom/asyx/jdsdk/G;->a:Lcom/asyx/jdsdk/F;

    invoke-static {v1}, Lcom/asyx/jdsdk/F;->a(Lcom/asyx/jdsdk/F;)Lcom/asyx/jdsdk/B;

    move-result-object v1

    invoke-static {v1}, Lcom/asyx/jdsdk/B;->e(Lcom/asyx/jdsdk/B;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->g()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/G;->a:Lcom/asyx/jdsdk/F;

    invoke-static {v2}, Lcom/asyx/jdsdk/F;->a(Lcom/asyx/jdsdk/F;)Lcom/asyx/jdsdk/B;

    move-result-object v2

    invoke-static {v2}, Lcom/asyx/jdsdk/B;->e(Lcom/asyx/jdsdk/B;)Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->g()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "AsyxWindowStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/L;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/L;->show()V

    iget-object v0, p0, Lcom/asyx/jdsdk/G;->a:Lcom/asyx/jdsdk/F;

    invoke-static {v0}, Lcom/asyx/jdsdk/F;->a(Lcom/asyx/jdsdk/F;)Lcom/asyx/jdsdk/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/B;->dismiss()V

    return-void
.end method
