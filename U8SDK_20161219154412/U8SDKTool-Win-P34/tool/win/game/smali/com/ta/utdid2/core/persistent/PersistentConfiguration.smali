.class public Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# static fields
.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "t"

.field private static final KEY_TIMESTAMP2:Ljava/lang/String; = "t2"


# instance fields
.field private mCanRead:Z

.field private mCanWrite:Z

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFolderName:Ljava/lang/String;

.field private mIsLessMode:Z

.field private mIsSafety:Z

.field private mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "isSafety"    # Z
    .param p5, "isLessMode"    # Z

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 21
    const-string v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 22
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 23
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 24
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    .line 25
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 26
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 27
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 28
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 29
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    .line 30
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 31
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 35
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 36
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 37
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 38
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 39
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    .line 40
    const-wide/16 v8, 0x0

    .line 41
    .local v8, "spT":J
    const-wide/16 v6, 0x0

    .line 42
    .local v6, "mySPT":J
    if-eqz p1, :cond_0

    .line 44
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 43
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 45
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 47
    :cond_0
    const/4 v4, 0x0

    .line 49
    .local v4, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    :goto_0
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 54
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 66
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v12, :cond_2

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    .line 68
    invoke-static/range {p2 .. p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 70
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v12, :cond_2

    .line 72
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 74
    const/4 v13, 0x0

    .line 73
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    .line 72
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 76
    if-nez p5, :cond_c

    .line 77
    cmp-long v12, v8, v6

    if-lez v12, :cond_a

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 82
    const/4 v13, 0x0

    .line 80
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_2
    :goto_2
    cmp-long v12, v8, v6

    if-nez v12, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    .line 132
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 133
    .local v10, "timestamp":J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v12, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v12, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 137
    .local v3, "editorTmp":Landroid/content/SharedPreferences$Editor;
    const-string v12, "t2"

    invoke-interface {v3, v12, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    .end local v3    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v12, :cond_6

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v12}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v5

    .line 143
    .local v5, "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    const-string v12, "t2"

    invoke-interface {v5, v12, v10, v11}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 144
    invoke-interface {v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    .end local v5    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .end local v10    # "timestamp":J
    :cond_6
    :goto_3
    return-void

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v12, "mounted"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 57
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto/16 :goto_1

    .line 59
    :cond_8
    const-string v12, "mounted_ro"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 60
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 61
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    goto/16 :goto_1

    .line 63
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto/16 :goto_1

    .line 83
    :cond_a
    cmp-long v12, v8, v6

    if-gez v12, :cond_b

    .line 85
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 87
    const/4 v12, 0x0

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 124
    :catch_1
    move-exception v12

    goto/16 :goto_2

    .line 88
    :cond_b
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 92
    const/4 v13, 0x0

    .line 90
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    .line 95
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 96
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 97
    cmp-long v12, v8, v6

    if-gez v12, :cond_d

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_d

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 102
    const/4 v13, 0x0

    .line 100
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    .line 103
    :cond_d
    cmp-long v12, v8, v6

    if-lez v12, :cond_e

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_e

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 107
    const/4 v12, 0x0

    .line 106
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 108
    :cond_e
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_f

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_f

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 111
    const/4 v12, 0x0

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 112
    :cond_f
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_10

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_10

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 116
    const/4 v13, 0x0

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    .line 117
    :cond_10
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 121
    const/4 v13, 0x0

    .line 119
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 146
    .restart local v10    # "timestamp":J
    :catch_2
    move-exception v12

    goto/16 :goto_3
.end method

.method private checkSDCardXMLFile()Z
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->checkFile()Z

    move-result v0

    .line 234
    .local v0, "isExist":Z
    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 239
    .end local v0    # "isExist":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "sp1"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .param p2, "sp2"    # Landroid/content/SharedPreferences;

    .prologue
    .line 204
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 205
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    .local v1, "editorTmp":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 209
    .local v2, "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 226
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    .end local v1    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    return-void

    .line 210
    .restart local v1    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 213
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 214
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 215
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 216
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 217
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 218
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 219
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 220
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 221
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 223
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 222
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
    .locals 8
    .param p1, "sp1"    # Landroid/content/SharedPreferences;
    .param p2, "sp2"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .prologue
    .line 176
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 177
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v3

    .line 178
    .local v3, "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    if-eqz v3, :cond_1

    .line 179
    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 180
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 198
    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    .line 201
    .end local v1    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    :cond_1
    return-void

    .line 182
    .restart local v1    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v3    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 185
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 186
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v3, v2, v4}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 187
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 188
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 189
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 190
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v2, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 191
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 192
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 193
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 195
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 194
    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0
.end method

.method private getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 164
    .local v1, "sdCardFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 165
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "rootFolder":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 172
    .end local v0    # "rootFolder":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getRootFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "rootFolder":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 157
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initEditor()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 250
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    .local v0, "t":J
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 359
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 363
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 365
    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 368
    const/4 v2, 0x1

    .line 369
    .local v2, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 370
    .local v4, "t":J
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v6, :cond_1

    .line 371
    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v6, :cond_0

    .line 372
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_0

    .line 373
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "t"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    :cond_0
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-nez v6, :cond_1

    .line 377
    const/4 v2, 0x0

    .line 380
    :cond_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_2

    .line 381
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 386
    :cond_2
    const/4 v1, 0x0

    .line 388
    .local v1, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 392
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 393
    const-string v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 394
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-nez v6, :cond_7

    .line 396
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v3

    .line 397
    .local v3, "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    if-eqz v3, :cond_3

    .line 398
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 400
    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v6, :cond_6

    .line 401
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v6, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 405
    :goto_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v6}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 415
    .end local v3    # "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    :cond_3
    :goto_2
    const-string v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 417
    const-string v6, "mounted_ro"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 418
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v6, :cond_5

    .line 420
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v6, :cond_5

    .line 421
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 422
    const/4 v8, 0x0

    .line 421
    invoke-virtual {v6, v7, v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    :cond_5
    :goto_3
    return v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    :cond_6
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v6, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 408
    .end local v3    # "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    :cond_7
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v6, :cond_3

    .line 409
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v6}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    move-result v6

    if-nez v6, :cond_3

    .line 410
    const/4 v2, 0x0

    goto :goto_2

    .line 424
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 488
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 493
    :goto_0
    return-object v0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 478
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 468
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 448
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 457
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 458
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 463
    :cond_0
    :goto_0
    return-wide v0

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 434
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 277
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 279
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 286
    :cond_1
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 289
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 291
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 298
    :cond_1
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 253
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 255
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 262
    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 265
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 267
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 274
    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 303
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 310
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 325
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 331
    :cond_0
    const/4 v1, 0x0

    .line 333
    .local v1, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 337
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_2

    .line 343
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 345
    const/4 v4, 0x0

    .line 344
    invoke-virtual {v2, v3, v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :cond_2
    :goto_1
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 315
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 322
    :cond_1
    return-void
.end method
