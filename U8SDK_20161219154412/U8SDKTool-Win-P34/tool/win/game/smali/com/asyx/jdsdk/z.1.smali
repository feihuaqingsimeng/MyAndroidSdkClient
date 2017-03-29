.class final Lcom/asyx/jdsdk/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/x;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/z;->a:Lcom/asyx/jdsdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "http://app.23youxi.com/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/z;->a:Lcom/asyx/jdsdk/x;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/x;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
