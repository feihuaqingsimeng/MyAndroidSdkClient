.class public final Lcom/ipaynow/plugin/b/b/c/a;
.super Ljava/lang/Object;


# instance fields
.field private q:Lcom/ipaynow/plugin/b/b/a/a;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/b/b/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    iput-object p1, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/plugin/b/b/a/a;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "A002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "responseMsg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "responseMsg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v2, "02"

    iput-object v2, v1, Lcom/ipaynow/plugin/b/b/a/a;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    iput-object p1, v1, Lcom/ipaynow/plugin/b/b/a/a;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    aget-object v2, v0, v3

    iput-object v2, v1, Lcom/ipaynow/plugin/b/b/a/a;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    aget-object v0, v0, v4

    iput-object v0, v1, Lcom/ipaynow/plugin/b/b/a/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    iput-object p2, v0, Lcom/ipaynow/plugin/b/b/a/a;->D:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A002"

    aput-object v1, v0, v3

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/plugin/b/b/a/a;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v1, "02"

    iput-object v1, v0, Lcom/ipaynow/plugin/b/b/a/a;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v1, "02"

    iput-object v1, v0, Lcom/ipaynow/plugin/b/b/a/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    iput-object p1, v0, Lcom/ipaynow/plugin/b/b/a/a;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    iput-object p2, v0, Lcom/ipaynow/plugin/b/b/a/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/plugin/b/b/a/a;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v1, "00"

    iput-object v1, v0, Lcom/ipaynow/plugin/b/b/a/a;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    iput-object p1, v0, Lcom/ipaynow/plugin/b/b/a/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    iput-object p2, v0, Lcom/ipaynow/plugin/b/b/a/a;->D:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    return-object v0
.end method

.method public final c()Lcom/ipaynow/plugin/b/b/a/a;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v1, "01"

    iput-object v1, v0, Lcom/ipaynow/plugin/b/b/a/a;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v1, "01"

    iput-object v1, v0, Lcom/ipaynow/plugin/b/b/a/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v1, "PE002"

    iput-object v1, v0, Lcom/ipaynow/plugin/b/b/a/a;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    const-string v1, "\u7f51\u7edc\u901a\u8baf\u8d85\u65f6"

    iput-object v1, v0, Lcom/ipaynow/plugin/b/b/a/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/c/a;->q:Lcom/ipaynow/plugin/b/b/a/a;

    return-object v0
.end method
