.class public final Lcom/asyx/jdsdk/ag;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Z

.field private n:B

.field private o:Ljava/util/Timer;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/app/Dialog;

.field private s:Lcom/asyx/jdsdk/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asyx/jdsdk/ag;->m:Z

    const/16 v0, 0x3c

    iput-byte v0, p0, Lcom/asyx/jdsdk/ag;->n:B

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->s:Lcom/asyx/jdsdk/a;

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/ag;)B
    .locals 1

    iget-byte v0, p0, Lcom/asyx/jdsdk/ag;->n:B

    return v0
.end method

.method static synthetic a(Lcom/asyx/jdsdk/ag;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 1

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 4

    new-instance v0, Lcom/asyx/jdsdk/ao;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/asyx/jdsdk/ao;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/asyx/jdsdk/ag;B)V
    .locals 0

    iput-byte p1, p0, Lcom/asyx/jdsdk/ag;->n:B

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/ag;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asyx/jdsdk/ag;->m:Z

    return-void
.end method

.method static synthetic b(Lcom/asyx/jdsdk/ag;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->r:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id_wait_progressbar_message"

    invoke-static {v1, v2}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/asyx/jdsdk/ag;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->o:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/asyx/jdsdk/ag;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->r:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic e(Lcom/asyx/jdsdk/ag;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->s:Lcom/asyx/jdsdk/a;

    return-object v0
.end method

.method static synthetic f(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/asyx/jdsdk/ag;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->l:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->o:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->o:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0xb4

    const/16 v6, 0xb1

    const/16 v5, 0x52

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->a:Landroid/widget/Button;

    const/16 v1, 0xf5

    invoke-static {v5, v6, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->b:Landroid/widget/Button;

    const/16 v1, 0xb7

    const/16 v2, 0xb9

    invoke-static {v7, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->a:Landroid/widget/Button;

    const/16 v1, 0xb7

    const/16 v2, 0xb9

    invoke-static {v7, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->b:Landroid/widget/Button;

    const/16 v1, 0xf5

    invoke-static {v5, v6, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/asyx/jdsdk/L;

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->s:Lcom/asyx/jdsdk/a;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->g()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/asyx/jdsdk/ag;->s:Lcom/asyx/jdsdk/a;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->g()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "AsyxWindowStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/asyx/jdsdk/L;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/L;->show()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->dismiss()V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->s:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->h()Lcom/asyx/jdsdk/LoginResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/LoginResultListener;->loginFail()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->g:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-static {v6}, Lcom/asyx/jdsdk/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "\u4eb2,\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/asyx/jdsdk/ag;->m:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/asyx/jdsdk/ag;->m:Z

    new-instance v0, Lcom/asyx/jdsdk/an;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/an;-><init>(Lcom/asyx/jdsdk/ag;)V

    new-instance v1, Lcom/asyx/jdsdk/ah;

    invoke-direct {v1, p0, v0}, Lcom/asyx/jdsdk/ah;-><init>(Lcom/asyx/jdsdk/ag;Lcom/asyx/jdsdk/an;)V

    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->o:Ljava/util/Timer;

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->o:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    new-instance v0, Lcom/asyx/jdsdk/am;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/am;-><init>(Lcom/asyx/jdsdk/ag;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/ai;

    invoke-direct {v2, p0, v6, v0}, Lcom/asyx/jdsdk/ai;-><init>(Lcom/asyx/jdsdk/ag;Ljava/lang/String;Lcom/asyx/jdsdk/am;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->q:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->s:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "groupId\u5f02\u5e38\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Lcom/asyx/jdsdk/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->j:Landroid/widget/EditText;

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

    if-nez v0, :cond_d

    const-string v0, "\u8bf7\u8f93\u51656\u4f4d\u6709\u6548\u9a8c\u8bc1\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "\u4eb2,\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_e
    const-string v0, "\u63d0\u4ea4\u4e2d..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/asyx/jdsdk/am;

    invoke-direct {v5, p0}, Lcom/asyx/jdsdk/am;-><init>(Lcom/asyx/jdsdk/ag;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/asyx/jdsdk/aj;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/asyx/jdsdk/aj;-><init>(Lcom/asyx/jdsdk/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asyx/jdsdk/am;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    const-string v0, "\u8bf7\u8f93\u5165\u6ce8\u518c\u8d26\u53f7\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    const-string v0, "\u8bf7\u8bbe\u7f6e\u5bc6\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v0, "\u4eb2,\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_12
    const-string v2, "\u63d0\u4ea4\u4e2d..."

    invoke-direct {p0, v2}, Lcom/asyx/jdsdk/ag;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/asyx/jdsdk/am;

    invoke-direct {v2, p0}, Lcom/asyx/jdsdk/am;-><init>(Lcom/asyx/jdsdk/ag;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/asyx/jdsdk/ak;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/asyx/jdsdk/ak;-><init>(Lcom/asyx/jdsdk/ag;Ljava/lang/String;Ljava/lang/String;Lcom/asyx/jdsdk/am;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/ag;->p:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->s:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "groupId\u5f02\u5e38\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asyx/jdsdk/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "\u4eb2,\u7f51\u7edc\u597d\u50cf\u4e0d\u901a\u554a..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_15
    const-string v0, "\u767b\u5f55\u4e2d..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/ag;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/asyx/jdsdk/am;

    invoke-direct {v0, p0}, Lcom/asyx/jdsdk/am;-><init>(Lcom/asyx/jdsdk/ag;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/al;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/al;-><init>(Lcom/asyx/jdsdk/ag;Lcom/asyx/jdsdk/am;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x3f666666    # 0.9f

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_login_register"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->setContentView(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getWindow()Landroid/view/Window;

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
    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v5}, Lcom/asyx/jdsdk/ag;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_phone_button"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_normal_button"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_phone_layout"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_normal_layout"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_login"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_close"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_sms"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_submit"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_qucik_login"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_phonenumber"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_mobile_password"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->i:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_sms_code"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->j:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_username"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->k:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asyx_registered_normal_password"

    invoke-static {v0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->l:Landroid/widget/EditText;

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AsyxDialogStyle"

    invoke-static {v2, v3}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asyx/jdsdk/ag;->r:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->r:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/asyx/jdsdk/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "asyx_wait_progressdialog"

    invoke-static {v1, v2}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/ag;->r:Landroid/app/Dialog;

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
