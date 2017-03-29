.class final Lcom/asyx/jdsdk/d;
.super Ljava/util/TimerTask;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/asyx/jdsdk/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/asyx/jdsdk/d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/asyx/jdsdk/c;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/asyx/jdsdk/d;->b:Ljava/lang/String;

    invoke-static {}, Lcom/asyx/jdsdk/c;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "login"

    invoke-static/range {v0 .. v7}, Lcom/asyx/jdsdk/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
