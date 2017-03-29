.class Lcom/asyx/u8demo/MainActivity$OrderTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asyx/u8demo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/u8/sdk/PayParams;",
        "Ljava/lang/Void;",
        "Lcom/asyx/u8demo/U8Order;",
        ">;"
    }
.end annotation


# instance fields
.field private payParams:Lcom/u8/sdk/PayParams;

.field final synthetic this$0:Lcom/asyx/u8demo/MainActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/asyx/u8demo/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->this$0:Lcom/asyx/u8demo/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/u8/sdk/PayParams;)Lcom/asyx/u8demo/U8Order;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-static {v0, v1}, Lcom/asyx/u8demo/U8OrderUtils;->getOrder(Ljava/lang/String;Lcom/u8/sdk/PayParams;)Lcom/asyx/u8demo/U8Order;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/u8/sdk/PayParams;

    invoke-virtual {p0, p1}, Lcom/asyx/u8demo/MainActivity$OrderTask;->doInBackground([Lcom/u8/sdk/PayParams;)Lcom/asyx/u8demo/U8Order;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/asyx/u8demo/U8Order;)V
    .locals 3

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->this$0:Lcom/asyx/u8demo/MainActivity;

    # getter for: Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity;->access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u8ba2\u5355\u6210\u529f\uff1aOrder:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/asyx/u8demo/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nExtension:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/asyx/u8demo/U8Order;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-virtual {p1}, Lcom/asyx/u8demo/U8Order;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-virtual {p1}, Lcom/asyx/u8demo/U8Order;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Pay;->getInstance()Lcom/u8/sdk/plugin/U8Pay;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8Pay;->pay(Lcom/u8/sdk/PayParams;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/asyx/u8demo/U8Order;

    invoke-virtual {p0, p1}, Lcom/asyx/u8demo/MainActivity$OrderTask;->onPostExecute(Lcom/asyx/u8demo/U8Order;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$OrderTask;->this$0:Lcom/asyx/u8demo/MainActivity;

    # getter for: Lcom/asyx/u8demo/MainActivity;->debugView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity;->access$0(Lcom/asyx/u8demo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u83b7\u53d6\u8ba2\u5355!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
