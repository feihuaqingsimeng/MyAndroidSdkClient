.class public Lcom/ipaynow/plugin/utils/PreSignMessageUtil;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field public consumerId:Ljava/lang/String;

.field public consumerName:Ljava/lang/String;

.field public mhtCharset:Ljava/lang/String;

.field public mhtCurrencyType:Ljava/lang/String;

.field public mhtOrderAmt:Ljava/lang/String;

.field public mhtOrderDetail:Ljava/lang/String;

.field public mhtOrderName:Ljava/lang/String;

.field public mhtOrderNo:Ljava/lang/String;

.field public mhtOrderStartTime:Ljava/lang/String;

.field public mhtOrderTimeOut:Ljava/lang/String;

.field public mhtOrderType:Ljava/lang/String;

.field public mhtReserved:Ljava/lang/String;

.field public notifyUrl:Ljava/lang/String;

.field public payChannelType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->consumerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->consumerName:Ljava/lang/String;

    return-void
.end method

.method private static createLinkString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8

    const-string v3, "="

    const-string v4, "&"

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private optionalParamsFilter(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public generatePreSignMessage()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-class v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_0

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, v7}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->optionalParamsFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
