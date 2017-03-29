.class final Lcom/asyx/jdsdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/e;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/i;->a:Lcom/asyx/jdsdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/ag;

    iget-object v1, p0, Lcom/asyx/jdsdk/i;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/i;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/ag;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ag;->show()V

    iget-object v0, p0, Lcom/asyx/jdsdk/i;->a:Lcom/asyx/jdsdk/e;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/e;->dismiss()V

    return-void
.end method
