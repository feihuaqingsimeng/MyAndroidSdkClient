.class final Lcom/asyx/jdsdk/f;
.super Ljava/util/TimerTask;


# instance fields
.field private final synthetic a:Lcom/asyx/jdsdk/j;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/e;Lcom/asyx/jdsdk/j;)V
    .locals 0

    iput-object p2, p0, Lcom/asyx/jdsdk/f;->a:Lcom/asyx/jdsdk/j;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/asyx/jdsdk/f;->a:Lcom/asyx/jdsdk/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/j;->sendEmptyMessage(I)Z

    return-void
.end method
