.class final Lcom/asyx/jdsdk/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/RechargeActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/asyx/jdsdk/af;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;Lcom/asyx/jdsdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/ac;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iput-object p2, p0, Lcom/asyx/jdsdk/ac;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/asyx/jdsdk/ac;->c:Lcom/asyx/jdsdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/asyx/jdsdk/ac;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/asyx/jdsdk/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/asyx/jdsdk/ac;->c:Lcom/asyx/jdsdk/af;

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/af;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
