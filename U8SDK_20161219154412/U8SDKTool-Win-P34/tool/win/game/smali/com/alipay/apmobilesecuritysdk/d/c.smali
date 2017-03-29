.class public final Lcom/alipay/apmobilesecuritysdk/d/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->a()Lcom/alipay/b/a/a/b/b;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/f/e;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/f/f;

    move-result-object v5

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_6

    invoke-static {v0}, Lcom/alipay/b/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/f/f;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/alipay/b/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/f/f;->b()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v2}, Lcom/alipay/b/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/f/f;->c()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v3}, Lcom/alipay/b/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/f/f;->d()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v4}, Lcom/alipay/b/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/f/f;->e()Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/f/f;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/apmobilesecuritysdk/f/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "imei"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/f;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "imsi"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/f;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "mac"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/f;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "bluetoothmac"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/f;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "gsi"

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/f/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "device_feature_file_name"

    const-string v9, "device_feature_file_key"

    invoke-static {v8, v9, v0}, Lcom/alipay/apmobilesecuritysdk/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "device_feature_prefs_name"

    const-string v9, "device_feature_prefs_key"

    invoke-static {p0, v8, v9, v0}, Lcom/alipay/apmobilesecuritysdk/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    const-string v0, "AD1"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD2"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD3"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD5"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD6"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD7"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD8"

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD9"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD10"

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD11"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD12"

    invoke-virtual {v6}, Lcom/alipay/b/a/a/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD13"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD14"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD15"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD16"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD17"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD18"

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD19"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD20"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD21"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD22"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD23"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD24"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/b/a/a/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD26"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD27"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD28"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD29"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD30"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD31"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD32"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD33"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD34"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD35"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD36"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD37"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD38"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD39"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD40"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD41"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AD42"

    invoke-static {}, Lcom/alipay/b/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AL3"

    invoke-static {p0}, Lcom/alipay/b/a/a/b/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0
.end method
