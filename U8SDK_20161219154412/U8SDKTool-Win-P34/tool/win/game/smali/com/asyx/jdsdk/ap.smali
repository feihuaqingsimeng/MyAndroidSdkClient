.class final Lcom/asyx/jdsdk/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/asyx/jdsdk/ao;


# direct methods
.method constructor <init>(Lcom/asyx/jdsdk/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/ap;->a:Lcom/asyx/jdsdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ap;->a:Lcom/asyx/jdsdk/ao;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->dismiss()V

    return-void
.end method
