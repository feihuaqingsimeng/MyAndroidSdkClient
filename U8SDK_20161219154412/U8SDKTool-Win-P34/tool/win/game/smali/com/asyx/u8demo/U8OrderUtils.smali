.class public Lcom/asyx/u8demo/U8OrderUtils;
.super Ljava/lang/Object;
.source "U8OrderUtils.java"


# static fields
.field public static final ORDER_PRIKEY:Ljava/lang/String; = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAItDcJhOI2YqGQwLclUoFIvn2Jsa3xDBKn4stJypdmfD8b2cioPDzGOUe6+PUvn4LZoQW/FPmX+Rbjasq+MmeMhyZUHwfqaVKgeF7ABXn0UIOmeBdX7NuxqFuoNMhBrXqsYN08ji9pJlIZARWjyb5TGNskBZZRcEhDq8HaqdcmU7AgMBAAECgYAF6nd+ANPAI0mtGU9iDrHQv6iT7jBLpekIMx35Cbnd7pT2WRAJSOgF0ujuLEh6FfDZ+pftSFRc9vCXof4rSBcZXKUv+yJG7iZoltPJysAj07OLGjYUm9ZYXYhX/Ur2Cqyd7UT6D2Viccqj12jutuuclkiWSYk6338CBBVJj0vXAQJBAM++r7sRuAYeQo5W/nqUG6mLMoMnvgiLn45/wa3QGpKb/AxD94Wv2lryvd8xLNpfQo5B0XJ2xvS7H5NsEIjWQ4cCQQCrnJUfJh8SO7OQ7Tnn5oLDhh8hgVsToGGZAN6G5D8EE+Ibxw1IuseQVgb5E+aS9uX+9qIzeyYQWSalFGSxieWtAkAQt824hjKC+4hroACWqLiZKkSEXXxjf6j1dL6HWEnrJnZgHlAbCA3QZ9xzy6dKY4QdoppSVdCo/S4LVRT3jhadAkEAlGCWLpBvXPxxjWUPJAqSFSvpzrZhYN7Sg8/UlxzRv1zRquK4AaI82fcHoGQsf/UpdwEXzRs1Ff1/BExVo4tvIQJAEse0KzqaIIduq5zScXPk3f1nQWTRLr+lljLVD+7hU+9jFpX4iJTI6QrIvHrkJ4N+JGqB9AE2BR6dpn/U2DT/Pw=="

.field public static final ORDER_PUBKEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCLQ3CYTiNmKhkMC3JVKBSL59ibGt8QwSp+LLScqXZnw/G9nIqDw8xjlHuvj1L5+C2aEFvxT5l/kW42rKvjJnjIcmVB8H6mlSoHhewAV59FCDpngXV+zbsahbqDTIQa16rGDdPI4vaSZSGQEVo8m+UxjbJAWWUXBIQ6vB2qnXJlOwIDAQAB"

.field public static final SECRET_KEY:Ljava/lang/String; = "9227531d166e38dd44d339c8bf45e950"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateSign(Lcom/u8/sdk/verify/UToken;Ljava/lang/String;Lcom/u8/sdk/PayParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "productID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "productName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "productDesc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "money="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "roleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "roleName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extension="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "&notifyUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The encoded getOrderID sign is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "md5"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/u8/sdk/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string v3, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAItDcJhOI2YqGQwLclUoFIvn2Jsa3xDBKn4stJypdmfD8b2cioPDzGOUe6+PUvn4LZoQW/FPmX+Rbjasq+MmeMhyZUHwfqaVKgeF7ABXn0UIOmeBdX7NuxqFuoNMhBrXqsYN08ji9pJlIZARWjyb5TGNskBZZRcEhDq8HaqdcmU7AgMBAAECgYAF6nd+ANPAI0mtGU9iDrHQv6iT7jBLpekIMx35Cbnd7pT2WRAJSOgF0ujuLEh6FfDZ+pftSFRc9vCXof4rSBcZXKUv+yJG7iZoltPJysAj07OLGjYUm9ZYXYhX/Ur2Cqyd7UT6D2Viccqj12jutuuclkiWSYk6338CBBVJj0vXAQJBAM++r7sRuAYeQo5W/nqUG6mLMoMnvgiLn45/wa3QGpKb/AxD94Wv2lryvd8xLNpfQo5B0XJ2xvS7H5NsEIjWQ4cCQQCrnJUfJh8SO7OQ7Tnn5oLDhh8hgVsToGGZAN6G5D8EE+Ibxw1IuseQVgb5E+aS9uX+9qIzeyYQWSalFGSxieWtAkAQt824hjKC+4hroACWqLiZKkSEXXxjf6j1dL6HWEnrJnZgHlAbCA3QZ9xzy6dKY4QdoppSVdCo/S4LVRT3jhadAkEAlGCWLpBvXPxxjWUPJAqSFSvpzrZhYN7Sg8/UlxzRv1zRquK4AaI82fcHoGQsf/UpdwEXzRs1Ff1/BExVo4tvIQJAEse0KzqaIIduq5zScXPk3f1nQWTRLr+lljLVD+7hU+9jFpX4iJTI6QrIvHrkJ4N+JGqB9AE2BR6dpn/U2DT/Pw=="

    const-string v4, "UTF-8"

    const-string v5, "SHA1withRSA"

    invoke-static {v0, v3, v4, v5}, Lcom/u8/sdk/utils/RSAUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The getOrderID sign is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOrder(Ljava/lang/String;Lcom/u8/sdk/PayParams;)Lcom/asyx/u8demo/U8Order;
    .locals 13

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getUToken()Lcom/u8/sdk/verify/UToken;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "U8SDK"

    const-string v11, "The user now not logined. the token is null"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    :goto_0
    return-object v2

    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "userID"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productID"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productDesc"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "money"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "roleID"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "roleName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serverID"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serverName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extension"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://issue.23youxi.com/pay/game"

    if-eqz v1, :cond_1

    const-string v2, "notifyUrl"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v11, "U8_SECRET_KEY"

    invoke-static {v2, v11}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v11, "U8_PRIVATE_KEY"

    invoke-static {v2, v11}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_2

    const-string v3, "9227531d166e38dd44d339c8bf45e950"

    :cond_2
    if-nez v4, :cond_3

    const-string v4, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAItDcJhOI2YqGQwLclUoFIvn2Jsa3xDBKn4stJypdmfD8b2cioPDzGOUe6+PUvn4LZoQW/FPmX+Rbjasq+MmeMhyZUHwfqaVKgeF7ABXn0UIOmeBdX7NuxqFuoNMhBrXqsYN08ji9pJlIZARWjyb5TGNskBZZRcEhDq8HaqdcmU7AgMBAAECgYAF6nd+ANPAI0mtGU9iDrHQv6iT7jBLpekIMx35Cbnd7pT2WRAJSOgF0ujuLEh6FfDZ+pftSFRc9vCXof4rSBcZXKUv+yJG7iZoltPJysAj07OLGjYUm9ZYXYhX/Ur2Cqyd7UT6D2Viccqj12jutuuclkiWSYk6338CBBVJj0vXAQJBAM++r7sRuAYeQo5W/nqUG6mLMoMnvgiLn45/wa3QGpKb/AxD94Wv2lryvd8xLNpfQo5B0XJ2xvS7H5NsEIjWQ4cCQQCrnJUfJh8SO7OQ7Tnn5oLDhh8hgVsToGGZAN6G5D8EE+Ibxw1IuseQVgb5E+aS9uX+9qIzeyYQWSalFGSxieWtAkAQt824hjKC+4hroACWqLiZKkSEXXxjf6j1dL6HWEnrJnZgHlAbCA3QZ9xzy6dKY4QdoppSVdCo/S4LVRT3jhadAkEAlGCWLpBvXPxxjWUPJAqSFSvpzrZhYN7Sg8/UlxzRv1zRquK4AaI82fcHoGQsf/UpdwEXzRs1Ff1/BExVo4tvIQJAEse0KzqaIIduq5zScXPk3f1nQWTRLr+lljLVD+7hU+9jFpX4iJTI6QrIvHrkJ4N+JGqB9AE2BR6dpn/U2DT/Pw=="

    :cond_3
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v11, "U8_ORDER_SIGN_TYPE"

    invoke-static {v2, v11}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, "RSA"

    :cond_4
    const-string v2, "signType"

    invoke-interface {v8, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/asyx/u8demo/U8OrderUtils;->generateSign(Lcom/u8/sdk/verify/UToken;Ljava/lang/String;Lcom/u8/sdk/PayParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sign"

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v8}, Lcom/u8/sdk/utils/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "orderResult"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "The order result is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/asyx/u8demo/U8OrderUtils;->parseOrderResult(Ljava/lang/String;)Lcom/asyx/u8demo/U8Order;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v10

    goto/16 :goto_0
.end method

.method private static parseOrderResult(Ljava/lang/String;)Lcom/asyx/u8demo/U8Order;
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "state"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    const-string v5, "U8SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get order failed. the state is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v5, Lcom/asyx/u8demo/U8Order;

    const-string v6, "orderID"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "extension"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/asyx/u8demo/U8Order;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
