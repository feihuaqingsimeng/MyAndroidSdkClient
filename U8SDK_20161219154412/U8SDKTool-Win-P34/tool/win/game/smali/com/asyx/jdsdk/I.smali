.class public final Lcom/asyx/jdsdk/I;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/asyx/jdsdk/J;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/J;-><init>(Lcom/asyx/jdsdk/I;)V

    iput-object v0, p0, Lcom/asyx/jdsdk/I;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/I;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/I;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/I;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/I;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_loading"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/I;->setContentView(I)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/I;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/I;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/I;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/asyx/jdsdk/I;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/asyx/jdsdk/I;->setCancelable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/asyx/jdsdk/K;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/K;-><init>(Lcom/asyx/jdsdk/I;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
