.class final Lcom/asyx/jdsdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic a:Lcom/asyx/jdsdk/LoadingListener;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/LoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/b;->a:Lcom/asyx/jdsdk/LoadingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/b;->a:Lcom/asyx/jdsdk/LoadingListener;

    invoke-interface {v0}, Lcom/asyx/jdsdk/LoadingListener;->loadingFinsh()V

    return-void
.end method
