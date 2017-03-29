.class final Lcom/asyx/jdsdk/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/ag;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/asyx/jdsdk/am;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/ag;Ljava/lang/String;Ljava/lang/String;Lcom/asyx/jdsdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/ak;->a:Lcom/asyx/jdsdk/ag;

    iput-object p2, p0, Lcom/asyx/jdsdk/ak;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/asyx/jdsdk/ak;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/asyx/jdsdk/ak;->d:Lcom/asyx/jdsdk/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/asyx/jdsdk/ak;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v0}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ak;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v1}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/ak;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v2}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asyx/jdsdk/ak;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/asyx/jdsdk/ak;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/asyx/jdsdk/ak;->a:Lcom/asyx/jdsdk/ag;

    invoke-static {v5}, Lcom/asyx/jdsdk/ag;->e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asyx/jdsdk/a;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/asyx/jdsdk/ak;->a:Lcom/asyx/jdsdk/ag;

    invoke-virtual {v6}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/asyx/jdsdk/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/asyx/jdsdk/ak;->d:Lcom/asyx/jdsdk/am;

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/am;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
