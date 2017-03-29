.class final Lcom/asyx/jdsdk/A;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/x;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/A;->a:Lcom/asyx/jdsdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/A;->a:Lcom/asyx/jdsdk/x;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/x;->dismiss()V

    iget-object v0, p0, Lcom/asyx/jdsdk/A;->a:Lcom/asyx/jdsdk/x;

    invoke-static {v0}, Lcom/asyx/jdsdk/x;->a(Lcom/asyx/jdsdk/x;)Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->q()Lcom/asyx/jdsdk/ExitGameListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/ExitGameListener;->exitGameFail()V

    return-void
.end method
