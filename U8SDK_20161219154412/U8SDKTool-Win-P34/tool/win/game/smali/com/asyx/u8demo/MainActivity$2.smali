.class Lcom/asyx/u8demo/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asyx/u8demo/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asyx/u8demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/asyx/u8demo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/u8demo/MainActivity$2;->this$0:Lcom/asyx/u8demo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/asyx/u8demo/MainActivity$2;->this$0:Lcom/asyx/u8demo/MainActivity;

    # invokes: Lcom/asyx/u8demo/MainActivity;->pay()V
    invoke-static {v0}, Lcom/asyx/u8demo/MainActivity;->access$2(Lcom/asyx/u8demo/MainActivity;)V

    return-void
.end method
