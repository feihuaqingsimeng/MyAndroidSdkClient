.class final Lcom/asyx/jdsdk/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/I;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/I;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/K;->a:Lcom/asyx/jdsdk/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/asyx/jdsdk/K;->a:Lcom/asyx/jdsdk/I;

    invoke-static {v0}, Lcom/asyx/jdsdk/I;->a(Lcom/asyx/jdsdk/I;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
