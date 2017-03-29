.class public Lcom/unionpay/UPPayAssistEx;
.super Ljava/lang/Object;


# static fields
.field public static final PLUGIN_NOT_FOUND:I = -0x1

.field public static final PLUGIN_VALID:I

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SpId"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->a:Ljava/lang/String;

    const-string v0, "paydata"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->b:Ljava/lang/String;

    const-string v0, "SysProvide"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->c:Ljava/lang/String;

    const-string v0, "UseTestMode"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->d:Ljava/lang/String;

    const-string v0, "SecurityChipType"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->e:Ljava/lang/String;

    const-string v0, "uppayuri"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->f:Ljava/lang/String;

    const-string v0, "resultIntentAction"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->g:Ljava/lang/String;

    const-string v0, "reqOriginalId"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->h:Ljava/lang/String;

    const-string v0, "com.unionpay.uppay"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->i:Ljava/lang/String;

    const-string v0, "com.unionpay.uppay.PayActivity"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->j:Ljava/lang/String;

    const-string v0, "ex_mode"

    sput-object v0, Lcom/unionpay/UPPayAssistEx;->k:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lcom/unionpay/UPPayAssistEx;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/unionpay/UPPayAssistEx;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/unionpay/UPPayAssistEx;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/unionpay/UPPayAssistEx;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/UPPayAssistEx;->i:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/UPPayAssistEx;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v2, p4}, Lcom/unionpay/UPPayAssistEx;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    sget-object v3, Lcom/unionpay/UPPayAssistEx;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/unionpay/UPPayAssistEx;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/unionpay/UPPayAssistEx;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/unionpay/UPPayAssistEx;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/unionpay/UPPayAssistEx;->h:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v2, Lcom/unionpay/UPPayAssistEx;->i:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/UPPayAssistEx;->j:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Lcom/unionpay/UPPayAssistEx;->l:I

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unionpay/UPPayAssistEx;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/unionpay/UPPayAssistEx;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/unionpay/UPPayAssistEx;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "com.unionpay.uppay"

    const/16 v3, 0x1b

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "30820267308201d0a00302010202044"

    aput-object v3, v4, v1

    const-string v3, "ecb7d98300d06092a8"

    aput-object v3, v4, v0

    const/4 v3, 0x2

    const-string v5, "64886f70d01010505003078310b30090603550"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "406130238363111300f060355040813085"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "368616e676"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "861693111300f060355040713085368616e67686169311730"

    aput-object v5, v4, v3

    const/4 v3, 0x6

    const-string v5, "15060355040a130e4368696e6120556e696f6e50617931173015060355040b130e4"

    aput-object v5, v4, v3

    const/4 v3, 0x7

    const-string v5, "368696e612055"

    aput-object v5, v4, v3

    const/16 v3, 0x8

    const-string v5, "6e696f6e5061793111300f06035504031308556e696f6e5061"

    aput-object v5, v4, v3

    const/16 v3, 0x9

    const-string v5, "79301e170d3131313132323130343634385a170d333631313135313034"

    aput-object v5, v4, v3

    const/16 v3, 0xa

    const-string v5, "3634385a3078310b300906035504061302383631"

    aput-object v5, v4, v3

    const/16 v3, 0xb

    const-string v5, "11300f060355040813085368616e67686169311130"

    aput-object v5, v4, v3

    const/16 v3, 0xc

    const-string v5, "0f060355040713085368616e676861693117"

    aput-object v5, v4, v3

    const/16 v3, 0xd

    const-string v5, "3015060355040a130e4368696e6120556e696"

    aput-object v5, v4, v3

    const/16 v3, 0xe

    const-string v5, "f6e50617931173015060355040b130e4368696e6120556e696"

    aput-object v5, v4, v3

    const/16 v3, 0xf

    const-string v5, "f6e5061793111300f06035504031308556e696f6e50617930819f300d060"

    aput-object v5, v4, v3

    const/16 v3, 0x10

    const-string v5, "92a864886f70d010101050003818d0030818902818100c42e6236d5054ffccaa"

    aput-object v5, v4, v3

    const/16 v3, 0x11

    const-string v5, "a430ecd929d562"

    aput-object v5, v4, v3

    const/16 v3, 0x12

    const-string v5, "b1ff56cef0e21c87260c63ce3ca868bf5974c14"

    aput-object v5, v4, v3

    const/16 v3, 0x13

    const-string v5, "d9255940da7b6cd07483f4b4243fd1825b2705"

    aput-object v5, v4, v3

    const/16 v3, 0x14

    const-string v5, "08eb9b5c67474d027fa03ce35109b11604083ab6bb4df2c46240f879f"

    aput-object v5, v4, v3

    const/16 v3, 0x15

    const-string v5, "8cc1d6ed5e1b2cc00489215aec3fc2eac008e767b0215981cb5e"

    aput-object v5, v4, v3

    const/16 v3, 0x16

    const-string v5, "e94ddc285669ec06b8a405dd4341eac4ea7030203010001300d06092a864886f70d010105050003818"

    aput-object v5, v4, v3

    const/16 v3, 0x17

    const-string v5, "1001a3e74c601e3beb1b7ae4f9ab2872a0aaf1dbc2cba89c7528cd"

    aput-object v5, v4, v3

    const/16 v3, 0x18

    const-string v5, "54aa526e7a37d8ba2311a1d3d2ab79b3fbeaf3ebb9e7da9e7cdd9be1ae5a53595f47"

    aput-object v5, v4, v3

    const/16 v3, 0x19

    const-string v5, "b1fdf62b0f540fca5458b063af9354925a6c3505a18ff164b6b195f6e517eaee1fb783"

    aput-object v5, v4, v3

    const/16 v3, 0x1a

    const-string v5, "64c2f89fdffa16729c9779f99562bc189d2ce4722ba0faedb11aa22d0d9db228fda"

    aput-object v5, v4, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x2000

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const/16 v5, 0x1040

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v2, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    array-length v7, v4

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_0

    aget-object v8, v4, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static installUPPayPlugin(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "UPPayPluginEx.apk"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UPPayPluginEx.apk"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UPPayPluginEx.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static startPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static startPayByJAR(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p4, v0, p5}, Lcom/unionpay/UPPayAssistEx;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/UPPayAssistEx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/UPPayAssistEx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/UPPayAssistEx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/UPPayAssistEx;->h:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget v0, Lcom/unionpay/UPPayAssistEx;->l:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startPayFromBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
