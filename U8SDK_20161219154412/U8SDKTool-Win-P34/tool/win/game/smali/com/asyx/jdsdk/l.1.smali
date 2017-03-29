.class public final Lcom/asyx/jdsdk/l;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Z

.field private i:B

.field private j:Ljava/util/Timer;

.field private k:Landroid/app/Dialog;

.field private l:Lcom/asyx/jdsdk/a;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asyx/jdsdk/l;->h:Z

    const/16 v0, 0x3c

    iput-byte v0, p0, Lcom/asyx/jdsdk/l;->i:B

    iput-boolean p3, p0, Lcom/asyx/jdsdk/l;->a:Z

    iput-object p5, p0, Lcom/asyx/jdsdk/l;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/asyx/jdsdk/l;->n:Ljava/lang/String;

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->l:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/l;)B
    .locals 1

    iget-byte v0, p0, Lcom/asyx/jdsdk/l;->i:B

    return v0
.end method

.method private a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/ao;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/asyx/jdsdk/ao;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/asyx/jdsdk/l;B)V
    .locals 0

    iput-byte p1, p0, Lcom/asyx/jdsdk/l;->i:B

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/l;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/l;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asyx/jdsdk/l;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/asyx/jdsdk/l;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/asyx/jdsdk/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asyx/jdsdk/l;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/asyx/jdsdk/l;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 1

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/asyx/jdsdk/l;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->j:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/asyx/jdsdk/l;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->k:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic e(Lcom/asyx/jdsdk/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/asyx/jdsdk/l;->a:Z

    return v0
.end method

.method static synthetic f(Lcom/asyx/jdsdk/l;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/asyx/jdsdk/l;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/asyx/jdsdk/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/asyx/jdsdk/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/asyx/jdsdk/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/asyx/jdsdk/l;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->l:Lcom/asyx/jdsdk/a;

    return-object v0
.end method

.method static synthetic l(Lcom/asyx/jdsdk/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/l;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/l;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->l:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/asyx/jdsdk/l;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/asyx/jdsdk/l;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/asyx/jdsdk/LoginResultListener;->loginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/l;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/asyx/jdsdk/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u4eb2,\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/asyx/jdsdk/l;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asyx/jdsdk/l;->h:Z

    new-instance v0, Lcom/asyx/jdsdk/r;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/r;-><init>(Lcom/asyx/jdsdk/l;)V

    new-instance v1, Lcom/asyx/jdsdk/m;

    invoke-direct {v1, p0, v0}, Lcom/asyx/jdsdk/m;-><init>(Lcom/asyx/jdsdk/l;Lcom/asyx/jdsdk/r;)V

    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->j:Ljava/util/Timer;

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->j:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v0, Lcom/asyx/jdsdk/q;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/q;-><init>(Lcom/asyx/jdsdk/l;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/n;

    invoke-direct {v2, p0, v6, v0}, Lcom/asyx/jdsdk/n;-><init>(Lcom/asyx/jdsdk/l;Ljava/lang/String;Lcom/asyx/jdsdk/q;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/l;->g:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v3}, Lcom/asyx/jdsdk/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/asyx/jdsdk/l;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/asyx/jdsdk/l;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/asyx/jdsdk/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "\\d{6}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "\u8bf7\u8f93\u51656\u4f4d\u6709\u6548\u9a8c\u8bc1\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->d(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\u4eb2,\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/l;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_b
    const-string v1, "\u8bf7\u7a0d\u540e..."

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->k:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "id_wait_progressbar_message"

    invoke-static {v6, v7}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v6, Lcom/asyx/jdsdk/q;

    invoke-direct {v6, p0}, Lcom/asyx/jdsdk/q;-><init>(Lcom/asyx/jdsdk/l;)V

    iget-boolean v0, p0, Lcom/asyx/jdsdk/l;->a:Z

    if-eqz v0, :cond_c

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/asyx/jdsdk/o;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/asyx/jdsdk/o;-><init>(Lcom/asyx/jdsdk/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asyx/jdsdk/q;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_c
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/asyx/jdsdk/p;

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/asyx/jdsdk/p;-><init>(Lcom/asyx/jdsdk/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asyx/jdsdk/q;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x3f666666    # 0.9f

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_binding_phone"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->setContentView(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v5}, Lcom/asyx/jdsdk/l;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_binding_phone_number"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_binding_password"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_binding_sms_code"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_binding_close"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_binding_sms"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_binding_submit"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->k:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->k:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "asyx_wait_progressdialog"

    invoke-static {v1, v2}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->k:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v0, p0, Lcom/asyx/jdsdk/l;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/l;->c:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/asyx/jdsdk/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->d(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "username"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->o:Ljava/lang/String;

    const-string v0, "password"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asyx/jdsdk/l;->p:Ljava/lang/String;

    return-void

    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0
.end method
