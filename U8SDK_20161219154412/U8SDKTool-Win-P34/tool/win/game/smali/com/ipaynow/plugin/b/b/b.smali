.class public final Lcom/ipaynow/plugin/b/b/b;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private u:Lcom/ipaynow/plugin/d/a/a;

.field private v:Lcom/ipaynow/plugin/b/b/b/a;

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/d/a/a;ILandroid/app/ProgressDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->u:Lcom/ipaynow/plugin/d/a/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->a:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->v:Lcom/ipaynow/plugin/b/b/b/a;

    iput-object p1, p0, Lcom/ipaynow/plugin/b/b/b;->u:Lcom/ipaynow/plugin/d/a/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/b/b/b;->w:I

    iput p2, p0, Lcom/ipaynow/plugin/b/b/b;->x:I

    iput-object p3, p0, Lcom/ipaynow/plugin/b/b/b;->a:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/ipaynow/plugin/b/b/a;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/b/b/a;-><init>(Lcom/ipaynow/plugin/b/b/b;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->v:Lcom/ipaynow/plugin/b/b/b/a;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/b/b/b;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->v:Lcom/ipaynow/plugin/b/b/b/a;

    iget v1, p0, Lcom/ipaynow/plugin/b/b/b;->x:I

    invoke-interface {v0, v1, p1}, Lcom/ipaynow/plugin/b/b/b/a;->a(I[Ljava/lang/String;)Lcom/ipaynow/plugin/b/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/ipaynow/plugin/b/b/a/a;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "ipaynow"

    const-string v1, "\u6536\u5230\u7ed3\u679c"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "ipaynow"

    const-string v1, "\u7a7a\u6307\u9488-IpaynowPluginTask-59"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/ipaynow/plugin/b/b/a/a;->x:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ipaynow/plugin/b/b/b;->w:I

    iput v0, p1, Lcom/ipaynow/plugin/b/b/a/a;->y:I

    iget v0, p0, Lcom/ipaynow/plugin/b/b/b;->x:I

    iput v0, p1, Lcom/ipaynow/plugin/b/b/a/a;->x:I

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->u:Lcom/ipaynow/plugin/d/a/a;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/d/a/a;->b(Lcom/ipaynow/plugin/b/b/a/a;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/b/b/b;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
