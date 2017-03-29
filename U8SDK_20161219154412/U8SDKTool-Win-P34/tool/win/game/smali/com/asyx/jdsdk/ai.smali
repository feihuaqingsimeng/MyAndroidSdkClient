.class final Lcom/asyx/jdsdk/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/ag;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/asyx/jdsdk/am;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/ag;Ljava/lang/String;Lcom/asyx/jdsdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/ai;->a:Lcom/asyx/jdsdk/ag;

    iput-object p2, p0, Lcom/asyx/jdsdk/ai;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/asyx/jdsdk/ai;->c:Lcom/asyx/jdsdk/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/asyx/jdsdk/ai;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v0}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ai;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v1}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/ai;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/asyx/jdsdk/w;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/asyx/jdsdk/ai;->c:Lcom/asyx/jdsdk/am;

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/am;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
