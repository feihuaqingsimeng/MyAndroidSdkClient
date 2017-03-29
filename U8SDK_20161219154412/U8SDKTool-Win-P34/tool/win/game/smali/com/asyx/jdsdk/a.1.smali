.class public final Lcom/asyx/jdsdk/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/asyx/jdsdk/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/app/Activity;

.field private f:Lcom/asyx/jdsdk/LoginResultListener;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/asyx/jdsdk/PayResultListener;

.field private o:Lcom/asyx/jdsdk/ExitGameListener;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/asyx/jdsdk/a;->a:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asyx/jdsdk/a;->g:Ljava/lang/String;

    return-void
.end method

.method static a()Lcom/asyx/jdsdk/a;
    .locals 1

    sget-object v0, Lcom/asyx/jdsdk/a;->a:Lcom/asyx/jdsdk/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/asyx/jdsdk/a;

    invoke-direct {v0}, Lcom/asyx/jdsdk/a;-><init>()V

    sput-object v0, Lcom/asyx/jdsdk/a;->a:Lcom/asyx/jdsdk/a;

    :cond_0
    sget-object v0, Lcom/asyx/jdsdk/a;->a:Lcom/asyx/jdsdk/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->e:Landroid/app/Activity;

    return-void
.end method

.method public final a(Lcom/asyx/jdsdk/ExitGameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->o:Lcom/asyx/jdsdk/ExitGameListener;

    return-void
.end method

.method public final a(Lcom/asyx/jdsdk/LoginResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->f:Lcom/asyx/jdsdk/LoginResultListener;

    return-void
.end method

.method public final a(Lcom/asyx/jdsdk/PayResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->n:Lcom/asyx/jdsdk/PayResultListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->p:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->q:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->g:Ljava/lang/String;

    return-void
.end method

.method public final g()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->h:Ljava/lang/String;

    return-void
.end method

.method public final h()Lcom/asyx/jdsdk/LoginResultListener;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->f:Lcom/asyx/jdsdk/LoginResultListener;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->i:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/a;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u5145\u503c\u91d1\u989d\u5f02\u5e38\uff01"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->k:Ljava/lang/String;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->l:Ljava/lang/String;

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/a;->m:Ljava/lang/String;

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Lcom/asyx/jdsdk/PayResultListener;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->n:Lcom/asyx/jdsdk/PayResultListener;

    return-object v0
.end method

.method public final q()Lcom/asyx/jdsdk/ExitGameListener;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/a;->o:Lcom/asyx/jdsdk/ExitGameListener;

    return-object v0
.end method
