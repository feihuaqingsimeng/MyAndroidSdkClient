.class public final Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)V
    .locals 1

    .prologue
    .line 238
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method


# virtual methods
.method public clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 287
    monitor-exit p0

    return-object p0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 15

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 295
    const/4 v5, 0x0

    .line 296
    .local v5, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 298
    .local v8, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;>;"
    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->access$0()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 299
    :try_start_0
    iget-object v14, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v14}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$0(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 300
    .local v1, "hasListeners":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 301
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    .end local v5    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v9, Ljava/util/HashSet;

    .line 303
    iget-object v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v12}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$0(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 302
    invoke-direct {v9, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v8    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;>;"
    .local v9, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;>;"
    move-object v8, v9

    .end local v9    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;>;"
    .restart local v8    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;>;"
    move-object v5, v6

    .line 306
    .end local v6    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    :try_start_3
    iget-boolean v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v12, :cond_1

    .line 308
    iget-object v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v12}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$1(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 309
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 312
    :cond_1
    iget-object v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 326
    iget-object v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 306
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    :try_start_4
    iget-object v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # invokes: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->writeFileLocked()Z
    invoke-static {v12}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$2(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z

    move-result v10

    .line 329
    .local v10, "returnValue":Z
    if-eqz v10, :cond_3

    .line 330
    iget-object v12, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->setHasChange(Z)V

    .line 298
    :cond_3
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    if-eqz v1, :cond_4

    .line 335
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_2
    if-gez v2, :cond_8

    .line 346
    .end local v2    # "i":I
    :cond_4
    return v10

    .end local v1    # "hasListeners":Z
    .end local v10    # "returnValue":Z
    :cond_5
    move v1, v12

    .line 299
    goto :goto_0

    .line 312
    .restart local v1    # "hasListeners":Z
    :cond_6
    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    .local v3, "k":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 315
    .local v11, "v":Ljava/lang/Object;
    if-ne v11, p0, :cond_7

    .line 316
    iget-object v14, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v14}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$1(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :goto_3
    if-eqz v1, :cond_2

    .line 322
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "k":Ljava/lang/String;
    .end local v11    # "v":Ljava/lang/Object;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v12

    .line 298
    .end local v1    # "hasListeners":Z
    :catchall_1
    move-exception v12

    :goto_4
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v12

    .line 318
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "hasListeners":Z
    .restart local v3    # "k":Ljava/lang/String;
    .restart local v11    # "v":Ljava/lang/Object;
    :cond_7
    :try_start_7
    iget-object v14, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v14}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$1(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 336
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "k":Ljava/lang/String;
    .end local v11    # "v":Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v10    # "returnValue":Z
    :cond_8
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 337
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_a

    .line 335
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 337
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;

    .line 338
    .local v7, "listener":Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v7, :cond_9

    .line 340
    iget-object v13, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$1:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .line 339
    invoke-interface {v7, v13, v4}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Ljava/lang/String;)V

    goto :goto_5

    .line 298
    .end local v2    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "listener":Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;
    .end local v10    # "returnValue":Z
    .restart local v6    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit p0

    return-object p0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit p0

    return-object p0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit p0

    return-object p0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit p0

    return-object p0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit p0

    return-object p0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit p0

    return-object p0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
