.class public Lcom/ta/utdid2/device/UTUtdid;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static final CREATE_LOCK:Ljava/lang/Object;

.field private static final HMAC_KEY:Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field private static final S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_KEY:Ljava/lang/String; = "Alvin2"

.field private static final S_LOCAL_STORAGE_KEY:Ljava/lang/String; = "ContextData"

.field private static final S_LOCAL_STORAGE_NAME:Ljava/lang/String; = ".DataStorage"

.field static final UM_SETTINGS_STORAGE:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static s_umutdid:Lcom/ta/utdid2/device/UTUtdid;


# instance fields
.field private mCBDomain:Ljava/lang/String;

.field private mCBKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mUtdid:Ljava/lang/String;

.field private mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 32
    const-string v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    .line 33
    const-string v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 39
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 43
    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 48
    sget-object v2, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string v3, "Alvin2"

    move-object v1, p1

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 50
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, ".DataStorage"

    .line 51
    const-string v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 50
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 52
    new-instance v0, Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdidHelper;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 53
    const-string v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    .line 54
    const-string v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static _calcHmac([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    .line 462
    .local v0, "key":Ljava/lang/String;
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 463
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 464
    .local v3, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 465
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 466
    .local v2, "result":[B
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private final _generateUtdid()[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v12, v0

    .line 428
    .local v12, "timestamp":I
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    invoke-virtual {v15}, Ljava/util/Random;->nextInt()I

    move-result v13

    .line 429
    .local v13, "uniqueID":I
    const/4 v14, 0x3

    .line 430
    .local v14, "version":B
    const/4 v11, 0x0

    .line 431
    .local v11, "reserve":B
    invoke-static {v12}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v4

    .line 432
    .local v4, "bTimestamp":[B
    invoke-static {v13}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v5

    .line 433
    .local v5, "bUniqueID":[B
    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v4, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v5, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 435
    invoke-virtual {v6, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    const/4 v10, 0x0

    .line 439
    .local v10, "imei":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 443
    :goto_0
    invoke-static {v10}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v8

    .line 444
    .local v8, "hashCode":I
    invoke-static {v8}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v3

    .line 445
    .local v3, "bHashCode":[B
    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v3, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 446
    const-string v9, ""

    .line 447
    .local v9, "hmac":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-static {v15}, Lcom/ta/utdid2/device/UTUtdid;->_calcHmac([B)Ljava/lang/String;

    move-result-object v9

    .line 448
    invoke-static {v9}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    .line 449
    .local v2, "bCheckSum":[B
    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 450
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    return-object v15

    .line 440
    .end local v2    # "bCheckSum":[B
    .end local v3    # "bHashCode":[B
    .end local v8    # "hashCode":I
    .end local v9    # "hmac":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 441
    .local v7, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v16, Ljava/util/Random;

    invoke-direct/range {v16 .. v16}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextInt()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private _removeIllegalKeys()V
    .locals 7

    .prologue
    .line 61
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v5, :cond_4

    .line 62
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "UTDID2"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "lUtdid":Ljava/lang/String;
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "UTDID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 70
    .local v2, "lNeedSync":Z
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "DID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "lDID":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 72
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "DID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x1

    .line 76
    :cond_1
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "EI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "lEI":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 78
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "EI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    .line 82
    :cond_2
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "SI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "lSI":Ljava/lang/String;
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 84
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v6, "SI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x1

    .line 88
    :cond_3
    if-eqz v2, :cond_4

    .line 89
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 93
    .end local v0    # "lDID":Ljava/lang/String;
    .end local v1    # "lEI":Ljava/lang/String;
    .end local v2    # "lNeedSync":Z
    .end local v3    # "lSI":Ljava/lang/String;
    .end local v4    # "lUtdid":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private getUtdidFromTaoPPC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "UTDID2"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "lUTDID":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v2, v1}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "lPackedUtdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 243
    .end local v0    # "lPackedUtdid":Ljava/lang/String;
    .end local v1    # "lUTDID":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    if-eqz p0, :cond_1

    .line 97
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_1

    .line 98
    sget-object v1, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/device/UTUtdid;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    .line 101
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdid;->_removeIllegalKeys()V

    .line 98
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isValidUTDID(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pUTDID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 253
    if-eqz p1, :cond_1

    .line 255
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_0
    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 259
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 261
    .local v0, "lMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    const/4 v1, 0x1

    .line 266
    .end local v0    # "lMatcher":Ljava/util/regex/Matcher;
    :cond_1
    return v1
.end method

.method private saveUtdidToLocalStorage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "lPackedUtdid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 145
    .end local v0    # "lPackedUtdid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveUtdidToNewSettings(Ljava/lang/String;)V
    .locals 4
    .param p1, "lUtdid"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 156
    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "lPermission":I
    if-nez v1, :cond_1

    .line 159
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 163
    :cond_0
    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 164
    const/4 v0, 0x0

    .line 167
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 168
    const-string v3, "mqBRboGZkQPcAkyk"

    .line 166
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 173
    :goto_0
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 177
    const-string v3, "mqBRboGZkQPcAkyk"

    .line 175
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 178
    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 169
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private saveUtdidToSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "lPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 220
    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "lPermission":I
    if-nez v0, :cond_0

    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->syncUTDIDToSettings(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method private saveUtdidToTaoPPC(Ljava/lang/String;)V
    .locals 2
    .param p1, "pUtdid"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 128
    :cond_1
    return-void
.end method

.method private syncUTDIDToSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 197
    const-string v2, "dxCRMxhQkdGePGnp"

    .line 196
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 201
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 204
    const-string v2, "dxCRMxhQkdGePGnp"

    .line 203
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :cond_0
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v1

    goto :goto_1

    .line 198
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 17

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 277
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v8

    .line 286
    :cond_1
    :try_start_1
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .local v8, "lNewSettingsUtdid":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 289
    const-string v16, "mqBRboGZkQPcAkyk"

    .line 288
    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 295
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 300
    new-instance v6, Lcom/ta/utdid2/device/UTUtdidHelper2;

    invoke-direct {v6}, Lcom/ta/utdid2/device/UTUtdidHelper2;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    .local v6, "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    const/4 v7, 0x0

    .line 306
    .local v7, "lNeedUpdateSettings":Z
    const/4 v1, 0x0

    .line 308
    .local v1, "data":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 309
    const-string v16, "dxCRMxhQkdGePGnp"

    .line 308
    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 313
    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 315
    invoke-virtual {v6, v1}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 316
    .local v13, "lTmpUtdidBase64":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    move-object v8, v13

    .line 319
    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {v6, v1}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, "lTmpUtdid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v12}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, "lPTmpUtdid":Ljava/lang/String;
    invoke-static {v9}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 327
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "dxCRMxhQkdGePGnp"

    .line 330
    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    .line 338
    .end local v9    # "lPTmpUtdid":Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v1}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "lDePackedUtdid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 340
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    goto/16 :goto_0

    .line 352
    .end local v5    # "lDePackedUtdid":Ljava/lang/String;
    .end local v12    # "lTmpUtdid":Ljava/lang/String;
    .end local v13    # "lTmpUtdidBase64":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    .line 356
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/ta/utdid2/device/UTUtdid;->getUtdidFromTaoPPC()Ljava/lang/String;

    move-result-object v11

    .line 357
    .local v11, "lSUtdid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v11}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 359
    .local v10, "lPackedUtdid":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 361
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 364
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object v8, v11

    .line 368
    goto/16 :goto_0

    .line 372
    .end local v10    # "lPackedUtdid":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "lContent":Ljava/lang/String;
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 374
    invoke-virtual {v6, v4}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 375
    .local v14, "lUtdid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v4}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 378
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v14}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "lBUtdid":Ljava/lang/String;
    invoke-static {v14}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 381
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 382
    if-eqz v7, :cond_9

    .line 384
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 387
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 396
    .end local v3    # "lBUtdid":Ljava/lang/String;
    .end local v14    # "lUtdid":Ljava/lang/String;
    :cond_a
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/ta/utdid2/device/UTUtdid;->_generateUtdid()[B

    move-result-object v14

    .line 397
    .local v14, "lUtdid":[B
    if-eqz v14, :cond_d

    .line 399
    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 400
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v14}, Lcom/ta/utdid2/device/UTUtdidHelper;->pack([B)Ljava/lang/String;

    move-result-object v10

    .line 403
    .restart local v10    # "lPackedUtdid":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 404
    if-eqz v7, :cond_b

    .line 406
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 409
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 411
    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 413
    .end local v10    # "lPackedUtdid":Ljava/lang/String;
    .end local v14    # "lUtdid":[B
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 276
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "lContent":Ljava/lang/String;
    .end local v6    # "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    .end local v7    # "lNeedUpdateSettings":Z
    .end local v8    # "lNewSettingsUtdid":Ljava/lang/String;
    .end local v11    # "lSUtdid":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 332
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v6    # "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    .restart local v7    # "lNeedUpdateSettings":Z
    .restart local v8    # "lNewSettingsUtdid":Ljava/lang/String;
    .restart local v9    # "lPTmpUtdid":Ljava/lang/String;
    .restart local v12    # "lTmpUtdid":Ljava/lang/String;
    .restart local v13    # "lTmpUtdidBase64":Ljava/lang/String;
    :catch_1
    move-exception v15

    goto/16 :goto_3

    .line 310
    .end local v9    # "lPTmpUtdid":Ljava/lang/String;
    .end local v12    # "lTmpUtdid":Ljava/lang/String;
    .end local v13    # "lTmpUtdidBase64":Ljava/lang/String;
    :catch_2
    move-exception v15

    goto/16 :goto_2

    .line 290
    .end local v1    # "data":Ljava/lang/String;
    .end local v6    # "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    .end local v7    # "lNeedUpdateSettings":Z
    :catch_3
    move-exception v15

    goto/16 :goto_1
.end method
