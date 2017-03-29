.class public Lcom/ta/utdid2/android/utils/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 81
    .local v3, "lPM":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "lPackageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 84
    const/4 v5, 0x1

    .line 83
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 86
    .local v2, "lPI":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .end local v2    # "lPI":Landroid/content/pm/PackageInfo;
    .end local v3    # "lPM":Landroid/content/pm/PackageManager;
    .end local v4    # "lPackageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 92
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .locals 10

    .prologue
    .line 19
    const/4 v7, 0x0

    .line 20
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 21
    .local v4, "localFileReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 23
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .local v5, "localFileReader":Ljava/io/FileReader;
    if-eqz v5, :cond_1

    .line 26
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 27
    const/16 v8, 0x400

    .line 26
    invoke-direct {v2, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 28
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v2, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 30
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 39
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    :goto_0
    if-eqz v7, :cond_0

    .line 40
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 41
    .local v0, "i":I
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 44
    .end local v0    # "i":I
    :goto_1
    return-object v8

    .line 31
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v6

    .line 32
    .local v6, "localIOException":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "Could not read from file /proc/cpuinfo"

    .line 33
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    .line 32
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .line 35
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_0

    .end local v6    # "localIOException":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 36
    .local v3, "localFileNotFoundException":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v8, "BaseParameter-Could not open file /proc/cpuinfo"

    .line 37
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    .end local v3    # "localFileNotFoundException":Ljava/io/FileNotFoundException;
    :cond_0
    const-string v8, ""

    goto :goto_1

    .line 35
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 31
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .restart local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    :cond_1
    move-object v4, v5

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localFileReader":Ljava/io/FileReader;
    goto :goto_0
.end method

.method public static getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "folderName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "sdCardFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    .line 68
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "rootFolder":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    .end local v0    # "rootFolder":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSystemVersion()I
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x2

    .line 50
    .local v0, "SDK_INT":I
    :try_start_0
    const-class v3, Landroid/os/Build$VERSION;

    const-string v4, "SDK_INT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 51
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-class v3, Landroid/os/Build$VERSION;

    .line 56
    const-string v4, "SDK"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 54
    goto :goto_0

    .line 57
    :catch_1
    move-exception v2

    .line 58
    .local v2, "e2":Ljava/lang/Exception;
    const/4 v0, 0x2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
