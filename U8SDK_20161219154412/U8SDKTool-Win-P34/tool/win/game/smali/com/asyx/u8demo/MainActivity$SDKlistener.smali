.class Lcom/asyx/u8demo/MainActivity$SDKlistener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/u8/sdk/IU8SDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asyx/u8demo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKlistener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asyx/u8demo/MainActivity;


# direct methods
.method private constructor <init>(Lcom/asyx/u8demo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asyx/u8demo/MainActivity;Lcom/asyx/u8demo/MainActivity$SDKlistener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/asyx/u8demo/MainActivity$SDKlistener;-><init>(Lcom/asyx/u8demo/MainActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/asyx/u8demo/MainActivity$SDKlistener;)Lcom/asyx/u8demo/MainActivity;
    .locals 1

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onAuthResult(Lcom/u8/sdk/verify/UToken;)V
    .locals 3

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;

    # getter for: Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity;->access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;

    # getter for: Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/asyx/u8demo/MainActivity;->access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onAuthResult\uff1aSdkUsername\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getSdkUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Extension:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SdkUserID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getSdkUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UserID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitResult(Lcom/u8/sdk/InitResult;)V
    .locals 0

    return-void
.end method

.method public onLoginResult(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;

    # getter for: Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity;->access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;

    # getter for: Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/asyx/u8demo/MainActivity;->access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u767b\u5f55\u6210\u529f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLogout()V
    .locals 0

    return-void
.end method

.method public onPayResult(Lcom/u8/sdk/PayResult;)V
    .locals 3

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;

    # getter for: Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity;->access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u6210\u529f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayResult;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/PayResult;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/u8/sdk/PayResult;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;-><init>(Lcom/asyx/u8demo/MainActivity$SDKlistener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchAccount()V
    .locals 0

    return-void
.end method

.method public onSwitchAccount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
