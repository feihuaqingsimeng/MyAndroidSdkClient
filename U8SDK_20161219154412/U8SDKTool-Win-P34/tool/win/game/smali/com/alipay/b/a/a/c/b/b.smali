.class public final Lcom/alipay/b/a/a/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/b/a/a/c/b/a;


# static fields
.field private static a:Lcom/alipay/b/a/a/c/b/a;

.field private static b:Lcom/alipay/b/a/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/b/a/a/c/b/b;->a:Lcom/alipay/b/a/a/c/b/a;

    sput-object v0, Lcom/alipay/b/a/a/c/b/b;->b:Lcom/alipay/b/a/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/b/a/a/c/b/a;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/b/a/a/c/b/b;->a:Lcom/alipay/b/a/a/c/b/a;

    if-nez v1, :cond_1

    if-nez p0, :cond_2

    :goto_1
    sput-object v0, Lcom/alipay/b/a/a/c/b/b;->b:Lcom/alipay/b/a/a/c/a;

    new-instance v0, Lcom/alipay/b/a/a/c/b/b;

    invoke-direct {v0}, Lcom/alipay/b/a/a/c/b/b;-><init>()V

    sput-object v0, Lcom/alipay/b/a/a/c/b/b;->a:Lcom/alipay/b/a/a/c/b/a;

    :cond_1
    sget-object v0, Lcom/alipay/b/a/a/c/b/b;->a:Lcom/alipay/b/a/a/c/b/a;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/alipay/b/a/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/b/a/a/c/b;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/b/a/a/c/a/c;)Lcom/alipay/b/a/a/c/a/b;
    .locals 4

    new-instance v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->os:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->apdid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->pubApdid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->priApdid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->token:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->umidToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->version:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->lastTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/b/a/a/c/a/c;->i()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/b/a/a/c/b/b;->b:Lcom/alipay/b/a/a/c/a;

    invoke-interface {v1, v0}, Lcom/alipay/b/a/a/c/a;->a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v1

    new-instance v0, Lcom/alipay/b/a/a/c/a/b;

    invoke-direct {v0}, Lcom/alipay/b/a/a/c/a/b;-><init>()V

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->success:Z

    iput-boolean v2, v0, Lcom/alipay/b/a/a/c/a/b;->a:Z

    iget-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->c:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->e:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->version:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->vkeySwitch:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->g:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->appListVer:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->i:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->bugTrackSwitch:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->h:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, v0, Lcom/alipay/b/a/a/c/a/b;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/b/a/a/a/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/b/a/a/c/a/b;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alipay/b/a/a/c/b/b;->b:Lcom/alipay/b/a/a/c/a;

    invoke-interface {v0, p1}, Lcom/alipay/b/a/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
