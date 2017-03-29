.class final Landroid/support/multidex/MultiDex$V19;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/support/multidex/MultiDex$V19;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v8, "pathList"

    # invokes: Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    invoke-static {p0, v8}, Landroid/support/multidex/MultiDex;->access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "dexElements"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v9, p2, v6}, Landroid/support/multidex/MultiDex$V19;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v9

    # invokes: Landroid/support/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v2, v8, v9}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    const-string v8, "MultiDex"

    const-string v9, "Exception in makeDexElement"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v8, "dexElementsSuppressedExceptions"

    # invokes: Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    invoke-static {p0, v8}, Landroid/support/multidex/MultiDex;->access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/io/IOException;

    move-object v1, v8

    check-cast v1, [Ljava/io/IOException;

    if-nez v1, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/io/IOException;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/IOException;

    :goto_1
    invoke-virtual {v7, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v1

    add-int/2addr v8, v9

    new-array v0, v8, [Ljava/io/IOException;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    array-length v10, v1

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_1
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "makeDexElements"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    aput-object v3, v2, v5

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v2, v6

    # invokes: Landroid/support/multidex/MultiDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p0, v1, v2}, Landroid/support/multidex/MultiDex;->access$500(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method
