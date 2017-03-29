.class Lcom/asyx/issue/ASYXSDK$1;
.super Ljava/lang/Object;
.source "ASYXSDK.java"

# interfaces
.implements Lcom/asyx/jdsdk/LoginResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asyx/issue/ASYXSDK;->login(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asyx/issue/ASYXSDK;


# direct methods
.method constructor <init>(Lcom/asyx/issue/ASYXSDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/asyx/issue/ASYXSDK$1;->this$0:Lcom/asyx/issue/ASYXSDK;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFail()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "asyx sdk login failed"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public loginSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 60
    # getter for: Lcom/asyx/issue/ASYXSDK;->instance:Lcom/asyx/issue/ASYXSDK;
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->access$0()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/asyx/issue/ASYXSDK;->access$1(Lcom/asyx/issue/ASYXSDK;Ljava/lang/String;)V

    .line 61
    # getter for: Lcom/asyx/issue/ASYXSDK;->instance:Lcom/asyx/issue/ASYXSDK;
    invoke-static {}, Lcom/asyx/issue/ASYXSDK;->access$0()Lcom/asyx/issue/ASYXSDK;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/asyx/issue/ASYXSDK;->access$2(Lcom/asyx/issue/ASYXSDK;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 64
    return-void
.end method
