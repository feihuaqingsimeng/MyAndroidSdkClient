.class public Lcom/ta/utdid2/android/utils/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field public static DBG:Z = false

.field private static final PROPERTY_DEBUG:Ljava/lang/String; = "alidebug"

.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetIntMethod:Ljava/lang/reflect/Method;

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 42
    const-string v2, "alidebug"

    invoke-static {v2, v1}, Lcom/ta/utdid2/android/utils/DebugUtils;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    .line 44
    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    .line 45
    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 46
    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetIntMethod:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    move v0, v1

    .line 42
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Lcom/ta/utdid2/android/utils/DebugUtils;->init()V

    .line 18
    const/4 v2, 0x0

    .line 21
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-object v2

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 30
    invoke-static {}, Lcom/ta/utdid2/android/utils/DebugUtils;->init()V

    .line 32
    move v2, p1

    .line 34
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetIntMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 35
    .local v1, "v":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 39
    .end local v1    # "v":Ljava/lang/Integer;
    :goto_0
    return v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static init()V
    .locals 6

    .prologue
    .line 49
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 50
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    .line 52
    sget-object v1, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 53
    sget-object v1, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 56
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
