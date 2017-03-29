.class Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
.super Ljava/lang/Thread;
.source "AidRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/aid/AidRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostRestThread"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mCallback:Lcom/ut/device/AidCallback;

.field mOldAid:Ljava/lang/String;

.field mPost:Lorg/apache/http/client/methods/HttpPost;

.field mRspLine:Ljava/lang/String;

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/ta/utdid2/aid/AidRequester;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 1
    .param p2, "post"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "post"    # Lorg/apache/http/client/methods/HttpPost;
    .param p3, "callback"    # Lcom/ut/device/AidCallback;
    .param p4, "oldAid"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    .line 82
    iput-object p3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    .line 83
    iput-object p4, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mAppName:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getResponseLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x3ea

    .line 89
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v7, :cond_0

    .line 90
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    const/16 v8, 0x3e8

    iget-object v9, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 93
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 94
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const/4 v6, 0x0

    .line 96
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 104
    :goto_0
    const/4 v4, 0x0

    .line 106
    .local v4, "rd":Ljava/io/BufferedReader;
    if-eqz v6, :cond_3

    .line 107
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 108
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 107
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "rd":Ljava/io/BufferedReader;
    .local v5, "rd":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 119
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "rd":Ljava/io/BufferedReader;
    :goto_1
    const-string v3, ""

    .line 121
    .local v3, "line":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 122
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    if-nez v3, :cond_5

    .line 138
    :goto_3
    if-eqz v4, :cond_1

    .line 140
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 141
    sget-boolean v7, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v7, :cond_1

    .line 142
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    const-string v8, "close the bufferreader"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 150
    :cond_1
    :goto_4
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-nez v7, :cond_9

    .line 151
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    # getter for: Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/ta/utdid2/aid/AidRequester;->access$1(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 152
    :try_start_4
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    # getter for: Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/ta/utdid2/aid/AidRequester;->access$1(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    :goto_5
    return-void

    .line 97
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v7, :cond_2

    .line 99
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v8, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 101
    :cond_2
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "rd":Ljava/io/BufferedReader;
    :cond_3
    :try_start_5
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    const-string v8, "response is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 112
    :catch_1
    move-exception v2

    .line 113
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v7, :cond_4

    .line 114
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v8, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 116
    :cond_4
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_5
    :try_start_6
    sget-boolean v7, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v7, :cond_6

    .line 124
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_6
    iput-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 131
    :catch_2
    move-exception v2

    .line 132
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v7, :cond_7

    .line 133
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v8, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 135
    :cond_7
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_7
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BufferredReader is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 144
    :catch_3
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v7

    .line 156
    :cond_9
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    iget-object v8, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    # invokes: Lcom/ta/utdid2/aid/AidRequester;->getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/ta/utdid2/aid/AidRequester;->access$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "aid":Ljava/lang/String;
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    const/16 v8, 0x3e9

    invoke-interface {v7, v8, v0}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 158
    iget-object v7, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    # getter for: Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/ta/utdid2/aid/AidRequester;->access$3(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mAppName:Ljava/lang/String;

    iget-object v9, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    invoke-static {v7, v8, v0, v9}, Lcom/ta/utdid2/aid/AidStorageController;->setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
