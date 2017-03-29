.class final Lcom/asyx/jdsdk/U;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/S;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/S;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/U;->a:Lcom/asyx/jdsdk/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/U;->a:Lcom/asyx/jdsdk/S;

    invoke-static {v0}, Lcom/asyx/jdsdk/S;->a(Lcom/asyx/jdsdk/S;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/LoginResultListener;->loginFail()V

    return-void
.end method
