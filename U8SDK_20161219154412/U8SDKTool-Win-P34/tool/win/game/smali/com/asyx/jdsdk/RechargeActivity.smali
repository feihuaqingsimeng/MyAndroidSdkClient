.class public Lcom/asyx/jdsdk/RechargeActivity;
.super Landroid/app/Activity;


# static fields
.field private static w:Lcom/asyx/jdsdk/RechargeActivity;


# instance fields
.field private a:Lcom/asyx/jdsdk/a;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/app/Dialog;

.field private t:Z

.field private u:I

.field private v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/RechargeActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->s:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 2

    new-instance v0, Lcom/asyx/jdsdk/ao;

    const-string v1, "AsyxDialogStyle"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/asyx/jdsdk/ao;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/widget/Button;)V
    .locals 2

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->b:Landroid/widget/Button;

    const-string v1, "asyx_type_button_shape"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->c:Landroid/widget/Button;

    const-string v1, "asyx_type_button_shape"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->d:Landroid/widget/Button;

    const-string v1, "asyx_type_button_shape"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->e:Landroid/widget/Button;

    const-string v1, "asyx_type_button_shape"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->f:Landroid/widget/Button;

    const-string v1, "asyx_type_button_shape"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v0, "asyx_recharge_selected_bg"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/asyx/jdsdk/af;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/ac;

    invoke-direct {v2, p0, p1, v0}, Lcom/asyx/jdsdk/ac;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;Lcom/asyx/jdsdk/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V
    .locals 4

    const-string v0, "asyx_recharge_platform_balance"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "asyx_recharge_withdrawal"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Success"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountMoney"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentMoney"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5143"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u7231\u4e0a\u6e38\u620f"

    const-string v1, "\u7528\u6237\u5e73\u53f0\u5e01\u4f59\u989d\u4e0e\u53ef\u63d0\u73b0\u4f59\u989d\u83b7\u53d6\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/asyx/jdsdk/RechargeActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    return-void
.end method

.method static synthetic b(Lcom/asyx/jdsdk/RechargeActivity;)Lcom/asyx/jdsdk/a;
    .locals 1

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    return-object v0
.end method

.method static synthetic b(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;)Lcom/asyx/jdsdk/ao;
    .locals 1

    invoke-direct {p0, p1}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/asyx/jdsdk/RechargeActivity;->finish()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->paySuccess()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Message"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->s:Landroid/app/Dialog;

    const-string v1, "id_wait_progressbar_message"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DataInfo"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "00"

    invoke-static {p0, v3, v3, v0, v1}, Lcom/unionpay/UPPayAssistEx;->startPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    invoke-static {p0}, Lcom/unionpay/UPPayAssistEx;->installUPPayPlugin(Landroid/content/Context;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u94f6\u8054\u8bf7\u6c42\u8ba2\u5355\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Message"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/asyx/jdsdk/RechargeActivity;->w:Lcom/asyx/jdsdk/RechargeActivity;

    const-string v0, "DataInfo"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u8ba2\u5355\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Message"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataInfo"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u67e5\u8be2\u4e2d..."

    invoke-direct {p0, v1}, Lcom/asyx/jdsdk/RechargeActivity;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/asyx/jdsdk/af;

    invoke-direct {v1, p0, v3}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v2, Lcom/asyx/jdsdk/Z;

    invoke-direct {v2, p0, v0, v1}, Lcom/asyx/jdsdk/Z;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;Lcom/asyx/jdsdk/af;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V

    const-wide/16 v4, 0x1f40

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5145\u503c\u5361\u652f\u4ed8\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Message"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/asyx/jdsdk/RechargeActivity;Ljava/util/HashMap;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u652f\u4ed8\u6210\u529f\uff01"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/asyx/jdsdk/RechargeActivity;->finish()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->paySuccess()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5145\u503c\u5361\u652f\u4ed8\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Message"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_6

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "respMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/asyx/jdsdk/RechargeActivity;->finish()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->paySuccess()V

    goto :goto_0

    :cond_3
    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "\u652f\u4ed8\u53d6\u6d88\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_4
    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff1a\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_5
    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto :goto_0

    :cond_6
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/asyx/jdsdk/RechargeActivity;->finish()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->paySuccess()V

    goto/16 :goto_0

    :cond_7
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "\u652f\u4ed8\u5931\u8d25\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u652f\u4ed8\u53d6\u6d88\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->payFail()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->b:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iput v4, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->e:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    iput v5, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->c:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->d:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    iput v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->f:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->k:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/asyx/jdsdk/RechargeActivity;->finish()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->payFail()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput v2, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->l:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/asyx/jdsdk/RechargeActivity;->finish()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->p()Lcom/asyx/jdsdk/PayResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/asyx/jdsdk/PayResultListener;->payFail()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->p:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    iget v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    if-ne v0, v3, :cond_c

    const-string v0, "\u8bf7\u7a0d\u540e..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/asyx/jdsdk/af;

    invoke-direct {v0, p0, v7}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/ab;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/ab;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Lcom/asyx/jdsdk/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    if-ne v0, v4, :cond_d

    const-string v0, "\u8bf7\u7a0d\u540e..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/asyx/jdsdk/af;

    invoke-direct {v0, p0, v7}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/aa;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/aa;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Lcom/asyx/jdsdk/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    if-ne v0, v5, :cond_0

    const-string v0, "\u8bf7\u7a0d\u540e..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/asyx/jdsdk/af;

    invoke-direct {v0, p0, v7}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/ad;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/ad;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Lcom/asyx/jdsdk/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->q:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    const-string v0, "\u8bf7\u7a0d\u540e..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/asyx/jdsdk/af;

    invoke-direct {v0, p0, v7}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/ae;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/ae;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Lcom/asyx/jdsdk/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->r:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/asyx/jdsdk/RechargeActivity;->t:Z

    const-string v0, "asyx_card_number"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "asyx_card_password"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "asyx_card_lines"

    invoke-static {p0, v2}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10

    const-string v0, "\u8bf7\u8f93\u5165\u5145\u503c\u5361\u989d\u5ea6\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_11

    const-string v0, "\u8bf7\u8f93\u5165\u5145\u503c\u5361\u53f7\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_12

    const-string v0, "\u8bf7\u8f93\u5165\u5145\u503c\u5361\u5bc6\u7801\uff01"

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->a(Ljava/lang/String;)Lcom/asyx/jdsdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asyx/jdsdk/ao;->show()V

    goto/16 :goto_0

    :cond_12
    const-string v5, "CM"

    iget v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    const-string v0, "\u8bf7\u7a0d\u540e..."

    invoke-direct {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->b(Ljava/lang/String;)V

    new-instance v6, Lcom/asyx/jdsdk/af;

    invoke-direct {v6, p0, v7}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/asyx/jdsdk/Y;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/asyx/jdsdk/Y;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asyx/jdsdk/af;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :pswitch_0
    const-string v5, "CM"

    goto :goto_1

    :pswitch_1
    const-string v5, "UC"

    goto :goto_1

    :pswitch_2
    const-string v5, "CT"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "asyx_activity_recharge"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->setContentView(I)V

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    const-string v0, "asyx_recharge_money"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "asyx_recharge_game"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "asyx_recharge_goods"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "asyx_recharge_account"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "asyx_recharge_platform_money"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "asyx_recharge_platform_account"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "asyx_recharge_pay_platform"

    invoke-static {p0, v2}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v1}, Lcom/asyx/jdsdk/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "asyx_recharge_alipay_button"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->b:Landroid/widget/Button;

    const-string v0, "asyx_recharge_weixin_button"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->e:Landroid/widget/Button;

    const-string v0, "asyx_recharge_bank_button"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->c:Landroid/widget/Button;

    const-string v0, "asyx_recharge_platform_button"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->d:Landroid/widget/Button;

    const-string v0, "asyx_recharge_cards_button"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->f:Landroid/widget/Button;

    const-string v0, "asyx_recharge_back"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->k:Landroid/widget/Button;

    const-string v0, "asyx_recharge_close"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->l:Landroid/widget/Button;

    const-string v0, "asyx_recharge_alipay_submit"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->p:Landroid/widget/Button;

    const-string v0, "asyx_recharge_platform_submit"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->q:Landroid/widget/Button;

    const-string v0, "asyx_recharge_card_submit"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->r:Landroid/widget/Button;

    const-string v0, "asyx_recharge_alipay_layout"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->g:Landroid/widget/LinearLayout;

    const-string v0, "asyx_recharge_platform_layout"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->h:Landroid/widget/LinearLayout;

    const-string v0, "asyx_recharge_cards_type_layout"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->i:Landroid/widget/LinearLayout;

    const-string v0, "asyx_recharge_card_layout"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->j:Landroid/widget/LinearLayout;

    const-string v0, "asyx_recharge_card_money"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->v:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v2}, Lcom/asyx/jdsdk/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "asyx_recharge_yidong_pay"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->m:Landroid/widget/ImageButton;

    const-string v0, "asyx_recharge_liantong_pay"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->n:Landroid/widget/ImageButton;

    const-string v0, "asyx_recharge_dianxin_pay"

    invoke-static {p0, v0}, Lcom/asyx/jdsdk/P;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asyx/jdsdk/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->o:Landroid/widget/ImageButton;

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "AsyxDialogStyle"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->s:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->s:Landroid/app/Dialog;

    const-string v1, "asyx_wait_progressdialog"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->s:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->u:I

    sput-object p0, Lcom/asyx/jdsdk/RechargeActivity;->w:Lcom/asyx/jdsdk/RechargeActivity;

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->a:Lcom/asyx/jdsdk/a;

    invoke-virtual {v0}, Lcom/asyx/jdsdk/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/asyx/jdsdk/af;

    invoke-direct {v0, p0, v4}, Lcom/asyx/jdsdk/af;-><init>(Lcom/asyx/jdsdk/RechargeActivity;B)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asyx/jdsdk/X;

    invoke-direct {v2, p0, v0}, Lcom/asyx/jdsdk/X;-><init>(Lcom/asyx/jdsdk/RechargeActivity;Lcom/asyx/jdsdk/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/asyx/jdsdk/RechargeActivity;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
