.class public final Lcom/ipaynow/plugin/a/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Landroid/content/Context;

.field public static e:Ljava/util/ArrayList;

.field public static f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/a/a;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/a/a;->e:Ljava/util/ArrayList;

    const-string v1, "mhtOrderTimeOut"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/a/a;->e:Ljava/util/ArrayList;

    const-string v1, "payChannelType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/a/a;->e:Ljava/util/ArrayList;

    const-string v1, "mhtReserved"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/a/a;->e:Ljava/util/ArrayList;

    const-string v1, "consumerId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/plugin/a/a;->e:Ljava/util/ArrayList;

    const-string v1, "consumerName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/a/a;->f:Ljava/util/HashMap;

    const-string v1, "tips_bg.9.png"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/a/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/ipaynow/plugin/a/a;->d:Landroid/content/Context;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ipaynow/plugin/a/c;->h:Z

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/a/a;->d:Landroid/content/Context;

    return-object v0
.end method
