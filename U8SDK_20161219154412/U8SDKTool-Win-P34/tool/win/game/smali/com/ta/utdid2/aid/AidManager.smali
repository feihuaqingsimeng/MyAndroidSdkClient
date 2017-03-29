.class public Lcom/ta/utdid2/aid/AidManager;
.super Ljava/lang/Object;
.source "AidManager.java"


# static fields
.field private static final NUM_DAY_OUT_OF_DATE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sAidManager:Lcom/ta/utdid2/aid/AidManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;

    .line 23
    const-class v0, Lcom/ta/utdid2/aid/AidManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private declared-synchronized genAidValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "utdid"    # Ljava/lang/String;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 92
    sget-object v2, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    const-string v3, "no context!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-object v1

    .line 96
    :cond_0
    :try_start_1
    const-string v1, ""

    .line 98
    .local v1, "aidValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/utdid2/aid/AidRequester;->getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;

    move-result-object v0

    .line 100
    .local v0, "aidHelper":Lcom/ta/utdid2/aid/AidRequester;
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/ta/utdid2/aid/AidRequester;->postRest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .end local v0    # "aidHelper":Lcom/ta/utdid2/aid/AidRequester;
    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v1    # "aidValue":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v1, Lcom/ta/utdid2/aid/AidManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/ta/utdid2/aid/AidManager;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/aid/AidManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "utdid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 70
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    :cond_0
    sget-object v4, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "mContext:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "; has appName:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string v5, "; has token:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, ""

    .line 85
    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move v1, v3

    .line 71
    goto :goto_0

    :cond_3
    move v2, v3

    .line 72
    goto :goto_1

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 79
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v3}, Lcom/ta/utdid2/android/utils/TimeUtils;->isUpToDate(JI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_5
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/ta/utdid2/aid/AidManager;->genAidValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public requestAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "utdid"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ut/device/AidCallback;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    if-nez p4, :cond_0

    .line 43
    sget-object v1, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    const-string v2, "callback is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    :cond_1
    sget-object v5, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "mContext:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; callback:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    const-string v6, "; has appName:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; has token:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/16 v1, 0x3ea

    const-string v2, ""

    invoke-interface {p4, v1, v2}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 47
    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    .line 52
    :cond_4
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7, v3}, Lcom/ta/utdid2/android/utils/TimeUtils;->isUpToDate(JI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    const/16 v1, 0x3e9

    invoke-interface {p4, v1, v4}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/aid/AidRequester;->getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;

    move-result-object v0

    .local v0, "aidHelper":Lcom/ta/utdid2/aid/AidRequester;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/ta/utdid2/aid/AidRequester;->postRestAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V

    goto/16 :goto_0

    .line 63
    .end local v0    # "aidHelper":Lcom/ta/utdid2/aid/AidRequester;
    :cond_6
    const/16 v1, 0x3eb

    invoke-interface {p4, v1, v4}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
