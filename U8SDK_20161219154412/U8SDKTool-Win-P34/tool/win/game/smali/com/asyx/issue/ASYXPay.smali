.class public Lcom/asyx/issue/ASYXPay;
.super Ljava/lang/Object;
.source "ASYXPay.java"

# interfaces
.implements Lcom/u8/sdk/IPay;


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/asyx/issue/ASYXPay;->context:Landroid/app/Activity;

    .line 13
    return-void
.end method


# virtual methods
.method public isSupportMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .locals 2
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 24
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->getInstance()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/issue/ASYXPay;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/asyx/issue/ASYXSDK;->pay(Landroid/app/Activity;Lcom/u8/sdk/PayParams;)V

    .line 25
    return-void
.end method
