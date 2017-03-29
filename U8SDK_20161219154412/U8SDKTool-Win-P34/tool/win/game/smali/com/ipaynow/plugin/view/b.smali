.class public final Lcom/ipaynow/plugin/view/b;
.super Lcom/ipaynow/plugin/view/IpaynowLoading;


# instance fields
.field private an:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/high16 v2, 0x43480000    # 200.0f

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/IpaynowLoading;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/b;->an:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v1

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v7, -0x1

    const/4 v9, -0x2

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-super {p0, p1}, Lcom/ipaynow/plugin/view/IpaynowLoading;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v1

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v2

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v3

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    invoke-virtual {v2, v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {v0, v2}, Lcom/ipaynow/plugin/utils/f;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v2

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v3

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v4

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    sget-object v2, Lcom/ipaynow/plugin/a/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/ipaynow/plugin/utils/f;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v3

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v4

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v5

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setClickable(Z)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v6

    const/high16 v7, 0x42380000    # 46.0f

    invoke-static {v7}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/e;->a(F)I

    move-result v6

    invoke-virtual {v5, v8, v8, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/b;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ipaynow/plugin/view/b;->an:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ipaynow/plugin/view/b;->an:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/ipaynow/plugin/view/b;->an:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41880000    # 17.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/ipaynow/plugin/view/b;->an:Landroid/widget/TextView;

    const-string v7, "#ffffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/ipaynow/plugin/view/b;->an:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/b;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setLoadingMsg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/b;->an:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
