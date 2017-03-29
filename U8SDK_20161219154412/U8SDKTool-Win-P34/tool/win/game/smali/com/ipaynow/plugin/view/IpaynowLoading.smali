.class public abstract Lcom/ipaynow/plugin/view/IpaynowLoading;
.super Landroid/app/AlertDialog;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/IpaynowLoading;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public abstract setLoadingMsg(Ljava/lang/String;)V
.end method
