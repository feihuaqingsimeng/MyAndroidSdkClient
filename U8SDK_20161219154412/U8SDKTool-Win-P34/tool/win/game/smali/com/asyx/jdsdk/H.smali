.class final Lcom/asyx/jdsdk/H;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/B;


# direct methods
.method public constructor <init>(Lcom/asyx/jdsdk/B;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v0}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;)B

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;B)V

    iget-object v0, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v0}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;)B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;Z)V

    iget-object v0, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v0}, Lcom/asyx/jdsdk/B;->b(Lcom/asyx/jdsdk/B;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v0}, Lcom/asyx/jdsdk/B;->c(Lcom/asyx/jdsdk/B;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;B)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u91cd\u65b0\u83b7\u53d6("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v1}, Lcom/asyx/jdsdk/B;->a(Lcom/asyx/jdsdk/B;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/H;->a:Lcom/asyx/jdsdk/B;

    invoke-static {v1}, Lcom/asyx/jdsdk/B;->b(Lcom/asyx/jdsdk/B;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
