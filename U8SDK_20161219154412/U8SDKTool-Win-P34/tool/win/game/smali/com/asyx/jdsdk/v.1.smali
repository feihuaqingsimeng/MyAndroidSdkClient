.class final Lcom/asyx/jdsdk/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/u;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/u;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/v;->a:Lcom/asyx/jdsdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/L;

    iget-object v1, p0, Lcom/asyx/jdsdk/v;->a:Lcom/asyx/jdsdk/u;

    invoke-static {v1}, Lcom/asyx/jdsdk/u;->a(Lcom/asyx/jdsdk/u;)Lcom/asyx/jdsdk/s;

    move-result-object v1

    invoke-static {v1}, Lcom/asyx/jdsdk/s;->b(Lcom/asyx/jdsdk/s;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->g()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/v;->a:Lcom/asyx/jdsdk/u;

    invoke-static {v2}, Lcom/asyx/jdsdk/u;->a(Lcom/asyx/jdsdk/u;)Lcom/asyx/jdsdk/s;

    move-result-object v2

    invoke-static {v2}, Lcom/asyx/jdsdk/s;->b(Lcom/asyx/jdsdk/s;)Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->g()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "AsyxWindowStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/L;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/L;->show()V

    iget-object v0, p0, Lcom/asyx/jdsdk/v;->a:Lcom/asyx/jdsdk/u;

    invoke-static {v0}, Lcom/asyx/jdsdk/u;->a(Lcom/asyx/jdsdk/u;)Lcom/asyx/jdsdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/s;->dismiss()V

    return-void
.end method
