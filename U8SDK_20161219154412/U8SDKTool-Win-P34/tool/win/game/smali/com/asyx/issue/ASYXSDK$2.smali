.class Lcom/asyx/issue/ASYXSDK$2;
.super Ljava/lang/Object;
.source "ASYXSDK.java"

# interfaces
.implements Lcom/asyx/jdsdk/ExitGameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asyx/issue/ASYXSDK;->exit(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asyx/issue/ASYXSDK;

.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/asyx/issue/ASYXSDK;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/asyx/issue/ASYXSDK$2;->this$0:Lcom/asyx/issue/ASYXSDK;

    iput-object p2, p0, Lcom/asyx/issue/ASYXSDK$2;->val$context:Landroid/app/Activity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitGameFail()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public exitGameSuccess()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/asyx/issue/ASYXSDK$2;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 99
    return-void
.end method
