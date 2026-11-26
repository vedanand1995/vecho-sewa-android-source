.class public Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;
.super Ljava/lang/Object;
.source "BackgroundDownloadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundDownloadUtils"

.field private static myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private static receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 1

    .line 30
    sget-object v0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 30
    sput-object p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 30
    sget-object v0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static clearSharedPref(Landroid/content/Context;)V
    .locals 2

    .line 140
    const-string v0, "APP_DOWNLOAD_PREF"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 141
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 142
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V
    .locals 5

    .line 125
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->clearSharedPref(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 128
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 129
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 133
    :cond_0
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isApkExistsOnLocal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 41
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Checking file exists : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackgroundDownloadUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isDownloadNotInProgress(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    .line 49
    const-string v0, "BackgroundDownloadUtils"

    .line 0
    const-string v1, "Download Completed. Success. : "

    const/4 v2, 0x1

    .line 49
    :try_start_0
    const-string v3, "APP_DOWNLOAD_PREF"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50
    const-string v5, "downloadId"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_0

    return v2

    .line 56
    :cond_0
    const-string v3, "download"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 57
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 58
    new-array v6, v2, [J

    aput-wide v8, v6, v4

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 60
    invoke-virtual {v3, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .line 61
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 62
    const-string v5, "status"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v5, v2, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    const/16 v4, 0x8

    if-eq v5, v4, :cond_2

    const/16 p1, 0x10

    if-eq v5, p1, :cond_1

    goto/16 :goto_0

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " *** failed ****"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    return v2

    .line 82
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED_TEMP:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string p1, "Temp File not found!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 90
    :cond_3
    const-string v3, "Moving file from Temp to techo_app Directory"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 92
    const-string p1, "File moved!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 73
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " *** paused ****"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 69
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " *** running ****"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 65
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " *** pending ****"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 99
    :cond_7
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_1
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    return v2
.end method

.method public static registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    .line 173
    new-instance v0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$2;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$2;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->receiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 2

    .line 111
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 214
    const-string v0, "BackgroundDownloadUtils"

    const-string v1, "Install App Popup called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "New application is available. Please update now. Contact helpline in case of any help required."

    .line 216
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, -0x69

    .line 215
    invoke-static {p0, v0, v1, p1}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showAlert(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public static startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 147
    const-string v0, "Starting to Download latest App"

    const-string v1, "BackgroundDownloadUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 154
    const-string v0, "************Downloading started ***********"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 156
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 157
    const-string p2, "application/vnd.android.package-archive"

    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x3

    .line 158
    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object p2

    const/4 v3, 0x1

    .line 159
    invoke-virtual {p2, v3}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED_TEMP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    .line 164
    const-string v0, "APP_DOWNLOAD_PREF"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    const-string v2, "downloadId"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    const-string p1, "Registering the Broadcast"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->registerBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method
