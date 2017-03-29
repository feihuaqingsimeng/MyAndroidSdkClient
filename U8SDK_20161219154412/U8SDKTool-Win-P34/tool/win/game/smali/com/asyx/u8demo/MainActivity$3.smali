.class Lcom/asyx/u8demo/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asyx/u8demo/MainActivity;->login()V
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

    iput-object p1, p0, Lcom/asyx/u8demo/MainActivity$3;->this$0:Lcom/asyx/u8demo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->login()V

    return-void
.end method
