.class public Lcom/ta/utdid2/aid/AidRequester;
.super Ljava/lang/Object;
.source "AidRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
    }
.end annotation


# static fields
.field private static final AIDFUNCNAME:Ljava/lang/String; = "/get_aid/"

.field private static final AIDSERVER:Ljava/lang/String; = "http://hydra.alibaba.com/"

.field private static final NAME_AID:Ljava/lang/String; = "&aid="

.field private static final NAME_ID:Ljava/lang/String; = "&id="

.field private static final NAME_RESULT_ACTION:Ljava/lang/String; = "action"

.field private static final NAME_RESULT_AID:Ljava/lang/String; = "aid"

.field private static final NAME_RESULT_ISERROR:Ljava/lang/String; = "isError"

.field private static final NAME_RESULT_STATUS:Ljava/lang/String; = "status"

.field private static final NAME_RESUTL_DATA:Ljava/lang/String; = "data"

.field private static final NAME_TOKEN:Ljava/lang/String; = "auth[token]="

.field private static final NAME_TYPE:Ljava/lang/String; = "&type="

.field private static final RSP_ACTION_CHANGED:Ljava/lang/String; = "changed"

.field private static final RSP_ACTION_NEW:Ljava/lang/String; = "new"

.field private static final RSP_ACTION_UNCHANGED:Ljava/lang/String; = "unchanged"

.field private static final RSP_ISERROR_FALSE:Ljava/lang/String; = "false"

.field private static final RSP_ISERROR_TRUE:Ljava/lang/String; = "true"

.field private static final RSP_STATUS_INVALID_APP:Ljava/lang/String; = "404"

.field private static final RSP_STATUS_INVALID_TOKEN:Ljava/lang/String; = "401"

.field private static final RSP_STATUS_OK:Ljava/lang/String; = "200"

.field private static final SESSION_TIME_OUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_UTDID:Ljava/lang/String; = "utdid"

.field private static final WEAK_SESSION_TIME_OUT:I = 0xbb8

.field private static sAidRequester:Lcom/ta/utdid2/aid/AidRequester;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/ta/utdid2/aid/AidRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    .line 176
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    .line 177
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    invoke-static {p0, p1}, Lcom/ta/utdid2/aid/AidRequester;->getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "jsonData"    # Ljava/lang/String;
    .param p1, "oldAid"    # Ljava/lang/String;

    .prologue
    .line 222
    move-object v1, p1

    .line 223
    .local v1, "aid":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 225
    const-string v0, ""

    .line 227
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .local v5, "jObject":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 229
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 232
    .local v2, "data":Lorg/json/JSONObject;
    const-string v7, "action"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "aid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 233
    const-string v7, "action"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v7, "new"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 235
    const-string v7, "changed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 236
    :cond_0
    const-string v7, "aid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v5    # "jObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v1

    .line 241
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v5    # "jObject":Lorg/json/JSONObject;
    :cond_2
    const-string v7, "isError"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    const-string v7, "isError"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "isError":Ljava/lang/String;
    const-string v7, "status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "status":Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 247
    const-string v7, "404"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 248
    const-string v7, "401"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    :cond_3
    sget-boolean v7, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v7, :cond_4

    .line 250
    sget-object v7, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "remove the AID, status:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_4
    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 256
    .end local v4    # "isError":Ljava/lang/String;
    .end local v5    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 259
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const-class v1, Lcom/ta/utdid2/aid/AidRequester;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/aid/AidRequester;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;

    .line 172
    :cond_0
    sget-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .param p3, "oldAid"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    .local v1, "encodedUtdid":Ljava/lang/String;
    :goto_0
    const-string v3, "http://hydra.alibaba.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/get_aid/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    const-string v4, "auth[token]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    const-string v4, "&type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "utdid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 283
    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    const-string v4, "&aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    return-object v3

    .line 274
    .end local v1    # "encodedUtdid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 276
    move-object v1, p2

    .restart local v1    # "encodedUtdid":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public postRest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "utdid"    # Ljava/lang/String;
    .param p4, "oldAid"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v0, ""

    .line 194
    .local v0, "aid":Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/ta/utdid2/aid/AidRequester;->getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnectedToWeakNetwork(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    const/16 v4, 0xbb8

    .line 198
    .local v4, "timeout":I
    :goto_0
    sget-boolean v6, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v6, :cond_0

    .line 199
    sget-object v6, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "url:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; timeout:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;

    invoke-direct {v3, p0, v2}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;-><init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V

    .line 204
    .local v3, "prThread":Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
    invoke-virtual {v3}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->start()V

    .line 206
    :try_start_0
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    iget-object v6, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 206
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :goto_1
    invoke-virtual {v3}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->getResponseLine()Ljava/lang/String;

    move-result-object v0

    .line 213
    sget-boolean v6, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v6, :cond_1

    .line 214
    sget-object v6, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mLine:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    invoke-static {v0, p4}, Lcom/ta/utdid2/aid/AidRequester;->getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    return-object v0

    .line 196
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "prThread":Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
    .end local v4    # "timeout":I
    :cond_2
    const/16 v4, 0x3e8

    goto :goto_0

    .line 206
    .restart local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "prThread":Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
    .restart local v4    # "timeout":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public postRestAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "utdid"    # Ljava/lang/String;
    .param p4, "oldAid"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/ut/device/AidCallback;

    .prologue
    .line 181
    invoke-static {p1, p2, p3, p4}, Lcom/ta/utdid2/aid/AidRequester;->getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;

    move-object v1, p0

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;-><init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v0, "prThread":Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
    invoke-virtual {v0}, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->start()V

    .line 189
    return-void
.end method
