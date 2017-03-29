.class Lcom/asyx/issue/ASYXSDK$3;
.super Ljava/lang/Object;
.source "ASYXSDK.java"

# interfaces
.implements Lcom/asyx/jdsdk/PayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asyx/issue/ASYXSDK;->pay(Landroid/app/Activity;Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asyx/issue/ASYXSDK;

.field private final synthetic val$data:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/asyx/issue/ASYXSDK;Lcom/u8/sdk/PayParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/asyx/issue/ASYXSDK$3;->this$0:Lcom/asyx/issue/ASYXSDK;

    iput-object p2, p0, Lcom/asyx/issue/ASYXSDK$3;->val$data:Lcom/u8/sdk/PayParams;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payFail()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "asyx sdk pay failed."

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public paySuccess()V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/16 v2, 0xa

    const-string v3, "asyx sdk pay success."

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 126
    new-instance v0, Lcom/u8/sdk/PayResult;

    invoke-direct {v0}, Lcom/u8/sdk/PayResult;-><init>()V

    .line 127
    .local v0, "payResult":Lcom/u8/sdk/PayResult;
    iget-object v1, p0, Lcom/asyx/issue/ASYXSDK$3;->val$data:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayResult;->setProductID(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/asyx/issue/ASYXSDK$3;->val$data:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayResult;->setProductName(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/asyx/issue/ASYXSDK$3;->val$data:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayResult;->setExtension(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/u8/sdk/U8SDK;->onPayResult(Lcom/u8/sdk/PayResult;)V

    .line 131
    return-void
.end method
