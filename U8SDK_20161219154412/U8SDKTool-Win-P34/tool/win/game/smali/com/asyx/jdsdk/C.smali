.class final Lcom/asyx/jdsdk/C;
.super Ljava/util/TimerTask;


# instance fields
.field private final synthetic a:Lcom/asyx/jdsdk/H;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/B;Lcom/asyx/jdsdk/H;)V
    .locals 0

    iput-object p2, p0, Lcom/asyx/jdsdk/C;->a:Lcom/asyx/jdsdk/H;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/asyx/jdsdk/C;->a:Lcom/asyx/jdsdk/H;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
