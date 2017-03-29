.class final Landroid/support/multidex/MultiDex$V4;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V4"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/support/multidex/MultiDex$V4;->install(Ljava/lang/ClassLoader;Ljava/util/List;)V

    return-void
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const-string v11, "path"

    # invokes: Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    invoke-static {p0, v11}, Landroid/support/multidex/MultiDex;->access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/String;

    new-array v3, v5, [Ljava/io/File;

    new-array v6, v5, [Ljava/util/zip/ZipFile;

    new-array v2, v5, [Ldalvik/system/DexFile;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x3a

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/ListIterator;->previousIndex()I

    move-result v7

    aput-object v1, v4, v7

    aput-object v0, v3, v7

    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v11, v6, v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".dex"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v1, v11, v12}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v11

    aput-object v11, v2, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, p0, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v11, "mPaths"

    # invokes: Landroid/support/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {p0, v11, v4}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "mFiles"

    # invokes: Landroid/support/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {p0, v11, v3}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "mZips"

    # invokes: Landroid/support/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {p0, v11, v6}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "mDexs"

    # invokes: Landroid/support/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {p0, v11, v2}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
