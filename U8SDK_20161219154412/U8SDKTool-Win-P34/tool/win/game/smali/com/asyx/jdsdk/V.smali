.class final Lcom/asyx/jdsdk/V;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/asyx/jdsdk/S;


# direct methods
.method private constructor <init>(Lcom/asyx/jdsdk/S;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/asyx/jdsdk/V;->a:Lcom/asyx/jdsdk/S;

    return-void
.end method

.method synthetic constructor <init>(Lcom/asyx/jdsdk/S;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/V;-><init>(Lcom/asyx/jdsdk/S;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/asyx/jdsdk/V;->a:Lcom/asyx/jdsdk/S;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/asyx/jdsdk/S;->a(Lcom/asyx/jdsdk/S;Ljava/util/HashMap;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/asyx/jdsdk/V;->a:Lcom/asyx/jdsdk/S;

    const-string v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff01"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/S;->a(Lcom/asyx/jdsdk/S;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
