.class public final Lcom/asyx/jdsdk/s;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/app/Dialog;

.field private h:Lcom/asyx/jdsdk/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->h:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/s;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lcom/asyx/jdsdk/s;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 1

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/s;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/ao;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/asyx/jdsdk/ao;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/asyx/jdsdk/s;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->h:Lcom/asyx/jdsdk/a;

    return-object v0
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/s;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/asyx/jdsdk/L;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxWindowStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/L;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/L;->show()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/s;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u4f60\u6240\u9700\u8981\u4fee\u6539\u5bc6\u7801\u7684\u8d26\u53f7\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/s;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/asyx/jdsdk/s;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u65e7\u5bc6\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/s;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/asyx/jdsdk/s;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/s;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/asyx/jdsdk/s;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u4e00\u81f4\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/s;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u4eb2,\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/s;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_6
    const-string v1, "\u8bf7\u7a0d\u540e..."

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->g:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id_wait_progressbar_message"

    invoke-static {v5, v6}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v5, Lcom/asyx/jdsdk/u;

    invoke-direct {v5, p0}, Lcom/asyx/jdsdk/u;-><init>(Lcom/asyx/jdsdk/s;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/asyx/jdsdk/t;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/asyx/jdsdk/t;-><init>(Lcom/asyx/jdsdk/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asyx/jdsdk/u;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x3f666666    # 0.9f

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_change_password"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->setContentView(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v5}, Lcom/asyx/jdsdk/s;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_change_password_close"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_change_submit"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_change_username"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_change_old_password"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_change_new_password"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_change_confirm_password"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->f:Landroid/widget/EditText;

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asyx/jdsdk/s;->g:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->g:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/s;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "asyx_wait_progressdialog"

    invoke-static {v1, v2}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/s;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_0
.end method
