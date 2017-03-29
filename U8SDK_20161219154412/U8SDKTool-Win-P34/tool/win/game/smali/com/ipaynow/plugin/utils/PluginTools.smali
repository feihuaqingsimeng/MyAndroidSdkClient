.class public Lcom/ipaynow/plugin/utils/PluginTools;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/d;->a([B)Lcom/ipaynow/plugin/utils/d;

    move-result-object v4

    iget-object v4, v4, Lcom/ipaynow/plugin/utils/d;->ai:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;ZZ)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/PluginTools;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v2

    move v0, v1

    move-object v3, v4

    :goto_0
    if-lt v6, v7, :cond_0

    invoke-static {v8, v0, v3, v5, p1}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_2

    invoke-static {v8, v0, v3, v5, p1}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v3, v0

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-object v0, v5

    goto :goto_1
.end method

.method private static a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, ""

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/PluginTools;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static native getConstant(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
