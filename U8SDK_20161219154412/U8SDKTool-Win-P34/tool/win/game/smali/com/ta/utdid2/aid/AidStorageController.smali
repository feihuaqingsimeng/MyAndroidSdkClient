.class public Lcom/ta/utdid2/aid/AidStorageController;
.super Ljava/lang/Object;
.source "AidStorageController.java"


# static fields
.field private static final KEY_PREF_AID_GEN_TIME:Ljava/lang/String; = "rKrMJgyAEbVtSQGi"

.field private static final KEY_PREF_AID_VALUE:Ljava/lang/String; = "EvQwnbilKezpOJey"

.field private static final PREF_AID:Ljava/lang/String; = "OfJbkLdFbPOMbGyP"

.field private static final TAG:Ljava/lang/String;

.field private static sAidGenTimeMapInSP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sAidMapInSP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/ta/utdid2/aid/AidStorageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ta/utdid2/aid/AidStorageController;->sAidMapInSP:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ta/utdid2/aid/AidStorageController;->sAidGenTimeMapInSP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 75
    if-nez p0, :cond_0

    .line 76
    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    const-string v4, "no context!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-wide v6

    .line 80
    :cond_0
    invoke-static {p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "encodedAppName":Ljava/lang/String;
    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->sAidGenTimeMapInSP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->sAidGenTimeMapInSP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 81
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 84
    .local v0, "aidGenTimeInSP":Ljava/lang/Long;
    sget-boolean v3, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cache AIDGenTime:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 87
    const-string v3, "OfJbkLdFbPOMbGyP"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 88
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "rKrMJgyAEbVtSQGi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 89
    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->sAidGenTimeMapInSP:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    .end local v0    # "aidGenTimeInSP":Ljava/lang/Long;
    :cond_3
    move-wide v4, v6

    .line 82
    goto :goto_1
.end method

.method public static getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p0, :cond_1

    .line 56
    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    const-string v4, "no context!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, ""

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    invoke-static {p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "encodedAppName":Ljava/lang/String;
    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->sAidMapInSP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "aidInSP":Ljava/lang/String;
    sget-boolean v3, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cache AID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "OfJbkLdFbPOMbGyP"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 67
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "EvQwnbilKezpOJey"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v3, Lcom/ta/utdid2/aid/AidStorageController;->sAidMapInSP:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 96
    const-string v0, ""

    .line 99
    .local v0, "encodedName":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3}, Lcom/ta/utdid2/android/utils/Base64Helper;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    sget-boolean v1, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encodedName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-object v0

    .line 102
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "aidValue"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    sget-object v4, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    const-string v5, "no context!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {p1, p3}, Lcom/ta/utdid2/aid/AidStorageController;->getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "encodedAppName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 41
    .local v2, "timeStamp":J
    sget-object v4, Lcom/ta/utdid2/aid/AidStorageController;->sAidMapInSP:Ljava/util/Map;

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v4, Lcom/ta/utdid2/aid/AidStorageController;->sAidGenTimeMapInSP:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v4, "OfJbkLdFbPOMbGyP"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "EvQwnbilKezpOJey"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v4}, Lcom/ta/utdid2/android/utils/SharedPreferenceHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 47
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "rKrMJgyAEbVtSQGi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v4}, Lcom/ta/utdid2/android/utils/SharedPreferenceHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "EvQwnbilKezpOJey"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "rKrMJgyAEbVtSQGi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
