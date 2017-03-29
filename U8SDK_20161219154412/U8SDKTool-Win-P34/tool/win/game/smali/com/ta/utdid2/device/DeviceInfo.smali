.class public Lcom/ta/utdid2/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static final CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

.field static HMAC_KEY:Ljava/lang/String; = null

.field static final UTDID_VERSION_CODE:B = 0x1t

.field private static mDevice:Lcom/ta/utdid2/device/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    .line 13
    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->HMAC_KEY:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 12
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 47
    if-eqz p0, :cond_2

    .line 48
    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    .line 49
    .local v0, "device":Lcom/ta/utdid2/device/Device;
    sget-object v8, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "utdid":Ljava/lang/String;
    invoke-static {v6}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 53
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 54
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 56
    :cond_0
    new-instance v1, Lcom/ta/utdid2/device/Device;

    invoke-direct {v1}, Lcom/ta/utdid2/device/Device;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v0    # "device":Lcom/ta/utdid2/device/Device;
    .local v1, "device":Lcom/ta/utdid2/device/Device;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    .local v4, "timestamp":J
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "imei":Ljava/lang/String;
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "imsi":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v2}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v4, v5}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    .line 63
    invoke-virtual {v1, v3}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v6}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Lcom/ta/utdid2/device/DeviceInfo;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/ta/utdid2/device/Device;->setCheckSum(J)V

    .line 66
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .end local v1    # "device":Lcom/ta/utdid2/device/Device;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "timestamp":J
    .end local v6    # "utdid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 49
    .restart local v0    # "device":Lcom/ta/utdid2/device/Device;
    .restart local v6    # "utdid":Ljava/lang/String;
    :cond_1
    :try_start_2
    monitor-exit v8

    .line 70
    .end local v0    # "device":Lcom/ta/utdid2/device/Device;
    .end local v6    # "utdid":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 49
    .restart local v0    # "device":Lcom/ta/utdid2/device/Device;
    :catchall_0
    move-exception v7

    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .end local v0    # "device":Lcom/ta/utdid2/device/Device;
    .restart local v1    # "device":Lcom/ta/utdid2/device/Device;
    .restart local v6    # "utdid":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "device":Lcom/ta/utdid2/device/Device;
    .restart local v0    # "device":Lcom/ta/utdid2/device/Device;
    goto :goto_1
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v2, Lcom/ta/utdid2/device/DeviceInfo;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    if-eqz v1, :cond_0

    .line 81
    sget-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit v2

    return-object v0

    .line 83
    :cond_0
    if-eqz p0, :cond_1

    .line 84
    :try_start_1
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->_initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object v0

    .line 85
    .local v0, "device":Lcom/ta/utdid2/device/Device;
    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    .end local v0    # "device":Lcom/ta/utdid2/device/Device;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .locals 10
    .param p0, "device"    # Lcom/ta/utdid2/device/Device;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 25
    const-string v4, "%s%s%s%s%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 27
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 28
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 25
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "checkSumContent":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 31
    .local v0, "adler32":Ljava/util/zip/Adler32;
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 33
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    .line 37
    .end local v0    # "adler32":Ljava/util/zip/Adler32;
    .end local v1    # "checkSumContent":Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
