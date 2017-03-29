.class final Lcom/asyx/jdsdk/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/S;

.field private final synthetic b:Lcom/asyx/jdsdk/V;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/S;Lcom/asyx/jdsdk/V;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/T;->a:Lcom/asyx/jdsdk/S;

    iput-object p2, p0, Lcom/asyx/jdsdk/T;->b:Lcom/asyx/jdsdk/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/asyx/jdsdk/T;->a:Lcom/asyx/jdsdk/S;

    invoke-static {v0}, Lcom/asyx/jdsdk/S;->a(Lcom/asyx/jdsdk/S;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/T;->a:Lcom/asyx/jdsdk/S;

    invoke-static {v1}, Lcom/asyx/jdsdk/S;->a(Lcom/asyx/jdsdk/S;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/T;->a:Lcom/asyx/jdsdk/S;

    invoke-static {v2}, Lcom/asyx/jdsdk/S;->a(Lcom/asyx/jdsdk/S;)Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/asyx/jdsdk/T;->b:Lcom/asyx/jdsdk/V;

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/V;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
