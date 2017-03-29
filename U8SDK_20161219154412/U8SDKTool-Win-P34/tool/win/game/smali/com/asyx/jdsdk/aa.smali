.class final Lcom/asyx/jdsdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/RechargeActivity;

.field private final synthetic b:Lcom/asyx/jdsdk/af;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/RechargeActivity;Lcom/asyx/jdsdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    iput-object p2, p0, Lcom/asyx/jdsdk/aa;->b:Lcom/asyx/jdsdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v1}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v2}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v3}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asyx/jdsdk/a;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v4}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asyx/jdsdk/a;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v5}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asyx/jdsdk/a;->o()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    iget-object v7, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v7}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/asyx/jdsdk/a;->l()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v8}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/asyx/jdsdk/a;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/asyx/jdsdk/aa;->a:Lcom/asyx/jdsdk/RechargeActivity;

    invoke-static {v9}, Lcom/asyx/jdsdk/RechargeActivity;->b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/asyx/jdsdk/a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/asyx/jdsdk/aa;->b:Lcom/asyx/jdsdk/af;

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/af;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
