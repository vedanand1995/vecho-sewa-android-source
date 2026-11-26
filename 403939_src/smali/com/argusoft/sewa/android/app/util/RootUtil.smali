.class public Lcom/argusoft/sewa/android/app/util/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkRootMethod1()Z
    .locals 2

    .line 23
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkRootMethod2()Z
    .locals 23

    .line 28
    const-string v21, "/sbin"

    const-string v22, "/system/bin/failsafe"

    const-string v0, "Superuser"

    const-string v1, "Supersu"

    const-string v2, "/su"

    const-string v3, "/system/app/Superuser.apk"

    const-string v4, "/sbin/su"

    const-string v5, "/system/bin/su"

    const-string v6, "/system/xbin/su"

    const-string v7, "/system/xbin"

    const-string v8, "/data/local/xbin/su"

    const-string v9, "/data/local/bin/su"

    const-string v10, "/system/sd/xbin/su"

    const-string v11, "/system/sd/xbin"

    const-string v12, "/system/bin/failsafe/su"

    const-string v13, "/data/local/su"

    const-string v14, "/su/bin/su"

    const-string v15, "/system/su"

    const-string v16, "/system/bin/.ext/.su"

    const-string v17, "/data/local/bin"

    const-string v18, "/data/local/xbin"

    const-string v19, "/data/local"

    const-string v20, "/vendor/bin"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 53
    aget-object v3, v0, v2

    .line 54
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static checkRootMethod3()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/xbin/which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 70
    :cond_2
    throw v0

    :catch_0
    nop

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_3
    return v0
.end method

.method public static isDeviceRooted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
