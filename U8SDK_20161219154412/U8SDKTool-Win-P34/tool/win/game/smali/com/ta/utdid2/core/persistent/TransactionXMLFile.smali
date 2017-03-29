.class public Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    }
.end annotation


# static fields
.field private static final GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1

.field public static final MODE_WORLD_WRITEABLE:I = 0x2


# instance fields
.field private mPreferencesDir:Ljava/io/File;

.field private final mSync:Ljava/lang/Object;

.field private sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    .line 36
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Directory can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 58
    invoke-direct/range {p0 .. p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 59
    .local v6, "f":Ljava/io/File;
    sget-object v13, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 60
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .line 61
    .local v8, "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasFileChanged()Z

    move-result v12

    if-nez v12, :cond_0

    .line 62
    monitor-exit v13

    move-object v9, v8

    .line 120
    .end local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .local v9, "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :goto_0
    return-object v9

    .line 59
    .end local v9    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :cond_0
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    const/4 v10, 0x0

    .line 67
    .local v10, "str":Ljava/io/FileInputStream;
    invoke-static {v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, "backup":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 69
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 70
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 73
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    .line 75
    :cond_2
    const/4 v7, 0x0

    .line 76
    .local v7, "map":Ljava/util/Map;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 78
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 79
    .end local v10    # "str":Ljava/io/FileInputStream;
    .local v11, "str":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v11}, Lcom/ta/utdid2/core/persistent/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v7

    .line 80
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object v10, v11

    .line 108
    .end local v11    # "str":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    :cond_3
    :goto_1
    sget-object v13, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 109
    if-eqz v8, :cond_5

    .line 112
    :try_start_3
    invoke-virtual {v8, v7}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->replace(Ljava/util/Map;)V

    .line 120
    :cond_4
    :goto_2
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v8

    .end local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v9    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    goto :goto_0

    .line 59
    .end local v1    # "backup":Ljava/io/File;
    .end local v7    # "map":Ljava/util/Map;
    .end local v9    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .end local v10    # "str":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 81
    .restart local v1    # "backup":Ljava/io/File;
    .restart local v7    # "map":Ljava/util/Map;
    .restart local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    move-object v11, v10

    .line 83
    .end local v10    # "str":Ljava/io/FileInputStream;
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "str":Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 84
    .end local v11    # "str":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    new-array v2, v12, [B

    .line 85
    .local v2, "buf":[B
    invoke-virtual {v10, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 86
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    array-length v14, v2

    const-string v15, "UTF-8"

    invoke-direct {v12, v2, v13, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_1

    .line 87
    .end local v2    # "buf":[B
    :catch_1
    move-exception v4

    .line 88
    .local v4, "e1":Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    .end local v10    # "str":Ljava/io/FileInputStream;
    .restart local v11    # "str":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v10, v11

    .line 90
    .end local v11    # "str":Ljava/io/FileInputStream;
    .local v5, "e2":Ljava/io/IOException;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    :goto_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "e2":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v3

    .line 95
    .local v3, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/Exception;
    :goto_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    move-object v8, v0

    .line 115
    if-nez v8, :cond_4

    .line 116
    new-instance v9, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    move/from16 v0, p2

    invoke-direct {v9, v6, v0, v7}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 117
    .end local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v9    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v12, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v8, v9

    .end local v9    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v12

    :goto_9
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v12

    .end local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v9    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v8    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    goto :goto_9

    .line 102
    .end local v10    # "str":Ljava/io/FileInputStream;
    .restart local v11    # "str":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v10, v11

    .end local v11    # "str":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    goto :goto_8

    .line 94
    .end local v10    # "str":Ljava/io/FileInputStream;
    .restart local v11    # "str":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v10, v11

    .end local v11    # "str":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    goto :goto_7

    .line 92
    .end local v10    # "str":Ljava/io/FileInputStream;
    .restart local v11    # "str":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v10, v11

    .end local v11    # "str":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    goto :goto_6

    .line 89
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9
    move-exception v5

    goto :goto_5

    .line 87
    .end local v10    # "str":Ljava/io/FileInputStream;
    .restart local v11    # "str":Ljava/io/FileInputStream;
    :catch_a
    move-exception v4

    move-object v10, v11

    .end local v11    # "str":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/io/FileInputStream;
    goto :goto_4

    .line 81
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "str":Ljava/io/FileInputStream;
    .restart local v11    # "str":Ljava/io/FileInputStream;
    :catch_b
    move-exception v3

    goto :goto_3
.end method
