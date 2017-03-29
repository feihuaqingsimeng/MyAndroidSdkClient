.class Lcom/asyx/u8demo/MainActivity$SDKlistener$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asyx/u8demo/MainActivity$SDKlistener;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

.field private final synthetic val$code:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asyx/u8demo/MainActivity$SDKlistener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

    iput p2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$code:I

    iput-object p3, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$code:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

    # getter for: Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity$SDKlistener;->access$1(Lcom/asyx/u8demo/MainActivity$SDKlistener;)Lcom/asyx/u8demo/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

    # getter for: Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity$SDKlistener;->access$1(Lcom/asyx/u8demo/MainActivity$SDKlistener;)Lcom/asyx/u8demo/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

    # getter for: Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity$SDKlistener;->access$1(Lcom/asyx/u8demo/MainActivity$SDKlistener;)Lcom/asyx/u8demo/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

    # getter for: Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity$SDKlistener;->access$1(Lcom/asyx/u8demo/MainActivity$SDKlistener;)Lcom/asyx/u8demo/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

    # getter for: Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity$SDKlistener;->access$1(Lcom/asyx/u8demo/MainActivity$SDKlistener;)Lcom/asyx/u8demo/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u4eab\u6210\u529f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->this$1:Lcom/asyx/u8demo/MainActivity$SDKlistener;

    # getter for: Lcom/asyx/u8demo/MainActivity$SDKlistener;->this$0:Lcom/asyx/u8demo/MainActivity;
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity$SDKlistener;->access$1(Lcom/asyx/u8demo/MainActivity$SDKlistener;)Lcom/asyx/u8demo/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u4eab\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/u8demo/MainActivity$SDKlistener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/u8/sdk/plugin/U8Analytics;->getInstance()Lcom/u8/sdk/plugin/U8Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8Analytics;->logout()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_5
        0x17 -> :sswitch_3
        0x18 -> :sswitch_4
    .end sparse-switch
.end method
