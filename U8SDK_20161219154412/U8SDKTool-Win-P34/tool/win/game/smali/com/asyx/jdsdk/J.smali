.class final Lcom/asyx/jdsdk/J;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/I;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/I;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/J;->a:Lcom/asyx/jdsdk/I;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/J;->a:Lcom/asyx/jdsdk/I;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/I;->dismiss()V

    return-void
.end method
