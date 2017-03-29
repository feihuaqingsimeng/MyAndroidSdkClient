.class public Lcom/asyx/jdsdk/ASGameSDK;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitGame(Landroid/app/Activity;Lcom/asyx/jdsdk/ExitGameListener;)V
    .locals 2

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asyx/jdsdk/a;->a(Lcom/asyx/jdsdk/ExitGameListener;)V

    new-instance v0, Lcom/asyx/jdsdk/x;

    const-string v1, "AsyxDialogStyle"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/asyx/jdsdk/x;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/x;->show()V

    return-void
.end method

.method public static loadGame(Landroid/app/Activity;Lcom/asyx/jdsdk/LoadingListener;)V
    .locals 2

    new-instance v0, Lcom/asyx/jdsdk/I;

    const-string v1, "AsyxWindowStyle"

    invoke-static {p0, v1}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/asyx/jdsdk/I;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/asyx/jdsdk/b;

    invoke-direct {v1, p1}, Lcom/asyx/jdsdk/b;-><init>(Lcom/asyx/jdsdk/LoadingListener;)V

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/I;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/I;->show()V

    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/asyx/jdsdk/LoginResultListener;)V
    .locals 3

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/asyx/jdsdk/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/asyx/jdsdk/a;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/asyx/jdsdk/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/asyx/jdsdk/a;->a(Landroid/app/Activity;)V

    invoke-virtual {v0, p4}, Lcom/asyx/jdsdk/a;->a(Lcom/asyx/jdsdk/LoginResultListener;)V

    invoke-static {p3}, Lcom/asyx/jdsdk/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asyx/jdsdk/a;->f(Ljava/lang/String;)V

    new-instance v0, Lcom/asyx/jdsdk/S;

    const-string v1, "AsyxDialogStyle"

    invoke-static {p3, v1}, Lcom/asyx/jdsdk/P;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p3, v1}, Lcom/asyx/jdsdk/S;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/asyx/jdsdk/S;->show()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    invoke-static {p3, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/asyx/jdsdk/PayResultListener;)V
    .locals 2

    invoke-static {}, Lcom/asyx/jdsdk/a;->a()Lcom/asyx/jdsdk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/asyx/jdsdk/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/asyx/jdsdk/a;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/asyx/jdsdk/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/asyx/jdsdk/a;->g(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/asyx/jdsdk/a;->h(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/asyx/jdsdk/a;->i(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/asyx/jdsdk/a;->j(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/asyx/jdsdk/a;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p8}, Lcom/asyx/jdsdk/a;->l(Ljava/lang/String;)V

    invoke-virtual {v0, p9}, Lcom/asyx/jdsdk/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p10}, Lcom/asyx/jdsdk/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p11}, Lcom/asyx/jdsdk/a;->a(Landroid/app/Activity;)V

    invoke-virtual {v0, p12}, Lcom/asyx/jdsdk/a;->a(Lcom/asyx/jdsdk/PayResultListener;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asyx/jdsdk/RechargeActivity;

    invoke-direct {v0, p11, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p11, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
