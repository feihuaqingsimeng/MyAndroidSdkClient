.class final Lcom/asyx/jdsdk/Z;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/RechargeActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/asyx/jdsdk/af;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;Lcom/asyx/jdsdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/Z;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iput-object p2, p0, Lcom/asyx/jdsdk/Z;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/asyx/jdsdk/Z;->c:Lcom/asyx/jdsdk/af;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/asyx/jdsdk/Z;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/Z;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v1}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/Z;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/asyx/jdsdk/w;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/asyx/jdsdk/Z;->c:Lcom/asyx/jdsdk/af;

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/af;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
