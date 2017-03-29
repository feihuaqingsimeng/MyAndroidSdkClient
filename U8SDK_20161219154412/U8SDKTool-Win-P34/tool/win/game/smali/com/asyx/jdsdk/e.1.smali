.class public final Lcom/asyx/jdsdk/e;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Landroid/widget/Button;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/asyx/jdsdk/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asyx/jdsdk/e;->a:Ljava/util/Timer;

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/e;->f:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/e;)V
    .locals 3

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u4eb2\uff0c\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/asyx/jdsdk/j;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/j;-><init>(Lcom/asyx/jdsdk/e;)V

    iget-boolean v1, p0, Lcom/asyx/jdsdk/e;->e:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/g;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/g;-><init>(Lcom/asyx/jdsdk/e;Lcom/asyx/jdsdk/j;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/h;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/h;-><init>(Lcom/asyx/jdsdk/e;Lcom/asyx/jdsdk/j;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/asyx/jdsdk/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/ao;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/asyx/jdsdk/ao;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v1, Lcom/asyx/jdsdk/i;

    invoke-direct {v1, p0}, Lcom/asyx/jdsdk/i;-><init>(Lcom/asyx/jdsdk/e;)V

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/ao;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/asyx/jdsdk/e;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/e;->f:Lcom/asyx/jdsdk/a;

    return-object v0
.end method

.method static synthetic c(Lcom/asyx/jdsdk/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/asyx/jdsdk/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/e;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/e;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/e;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Lcom/asyx/jdsdk/ag;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/ag;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ag;->show()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->dismiss()V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x3f4ccccd    # 0.8f

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/asyx/jdsdk/e;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_automatic_login"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/e;->setContentView(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/e;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_automatic_change"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/e;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/e;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->d(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "username"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asyx/jdsdk/e;->c:Ljava/lang/String;

    const-string v0, "password"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asyx/jdsdk/e;->d:Ljava/lang/String;

    const-string v0, "isVisit"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asyx/jdsdk/e;->e:Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_automatic_account"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/asyx/jdsdk/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/asyx/jdsdk/j;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/j;-><init>(Lcom/asyx/jdsdk/e;)V

    new-instance v1, Lcom/asyx/jdsdk/f;

    invoke-direct {v1, p0, v0}, Lcom/asyx/jdsdk/f;-><init>(Lcom/asyx/jdsdk/e;Lcom/asyx/jdsdk/j;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v5}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/asyx/jdsdk/e;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/asyx/jdsdk/e;->a:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0
.end method
