.class public final Lcom/asyx/jdsdk/x;
.super Landroid/app/Dialog;


# instance fields
.field private a:Lcom/asyx/jdsdk/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/x;->a:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/x;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/x;->a:Lcom/asyx/jdsdk/a;

    return-object v0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->dismiss()V

    iget-object v0, p0, Lcom/asyx/jdsdk/x;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->q()Lcom/asyx/jdsdk/ExitGameListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/ExitGameListener;->exitGameFail()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/x;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_exit_game"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/x;->setContentView(I)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_exitgame_submit"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/asyx/jdsdk/y;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/y;-><init>(Lcom/asyx/jdsdk/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_exitgame_moregame"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/asyx/jdsdk/z;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/z;-><init>(Lcom/asyx/jdsdk/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_exitgame_closedialog"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/asyx/jdsdk/A;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/A;-><init>(Lcom/asyx/jdsdk/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Lcom/asyx/jdsdk/x;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/x;->setCancelable(Z)V

    return-void

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method
