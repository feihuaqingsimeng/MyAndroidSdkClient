.class final Lcom/asyx/jdsdk/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/RechargeActivity;

.field private final synthetic b:Lcom/asyx/jdsdk/af;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/RechargeActivity;Lcom/asyx/jdsdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/X;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iput-object p2, p0, Lcom/asyx/jdsdk/X;->b:Lcom/asyx/jdsdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/asyx/jdsdk/X;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/X;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v1}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/X;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v2}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/asyx/jdsdk/w;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/asyx/jdsdk/X;->b:Lcom/asyx/jdsdk/af;

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/af;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
