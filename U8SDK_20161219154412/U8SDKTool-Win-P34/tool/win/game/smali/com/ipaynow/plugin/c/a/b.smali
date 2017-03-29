.class final Lcom/ipaynow/plugin/c/a/b;
.super Ljava/lang/Object;


# static fields
.field private static ag:Lcom/ipaynow/plugin/c/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/plugin/c/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/c/a/a;-><init>(B)V

    sput-object v0, Lcom/ipaynow/plugin/c/a/b;->ag:Lcom/ipaynow/plugin/c/a/a;

    return-void
.end method

.method static synthetic i()Lcom/ipaynow/plugin/c/a/a;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/c/a/b;->ag:Lcom/ipaynow/plugin/c/a/a;

    return-object v0
.end method
