.class public final Lcom/ipaynow/plugin/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private N:Landroid/content/Context;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ipaynow/plugin/c/a/a;->N:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "so"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    const-string v0, "arm64-v8a"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->P:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->Q:Ljava/lang/String;

    const-string v0, "armeabi"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->R:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->S:Ljava/lang/String;

    const-string v0, "armeabi-v7a"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->T:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->U:Ljava/lang/String;

    const-string v0, "mips"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->V:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->W:Ljava/lang/String;

    const-string v0, "mips64"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->X:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->Y:Ljava/lang/String;

    const-string v0, "x86"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->Z:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->aa:Ljava/lang/String;

    const-string v0, "x86_64"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ab:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->O:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ac:Ljava/lang/String;

    const-string v0, "libplugin_phone.so"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ad:Ljava/lang/String;

    iput-object v2, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/plugin/c/a/a;-><init>()V

    return-void
.end method

.method public static e()Lcom/ipaynow/plugin/c/a/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/plugin/c/a/b;->i()Lcom/ipaynow/plugin/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method private g()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "armeabi"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->N:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "libplugin_phone.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "armeabi-v7a"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mips"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mips64"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->Y:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "x86"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->aa:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "x86_64"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ac:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "arm64-v8a"

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->N:Landroid/content/Context;

    const-string v2, "lib"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "libplugin_phone.so"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ipaynow/plugin/c/a/a;->N:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ipaynow/plugin/c/a/a;->ae:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "libplugin_phone.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/ipaynow/plugin/c/a/a;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/c/a/a;->N:Landroid/content/Context;

    return-object p0
.end method

.method public final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/ipaynow/plugin/c/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ipaynow/plugin/c/a/a;->h()Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    :try_start_0
    const-string v0, "plugin_phone"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
