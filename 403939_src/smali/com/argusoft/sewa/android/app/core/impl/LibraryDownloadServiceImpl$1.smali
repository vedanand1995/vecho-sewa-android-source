.class Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "LibraryDownloadServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;->registerBroadcastReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### Received the Download Broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### RB: download completed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 165
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 167
    const-string v2, "LIBRARY_DOWNLOAD_PREF"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 168
    const-string v2, "downloadId"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 169
    const-string v2, "actualId"

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 170
    const-string v2, "fileName"

    const/4 v8, 0x0

    invoke-interface {p1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    const-string v2, "extra_download_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p2, v6, v8

    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "#### DOWNLOAD IDs ARE NOT SAME."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 179
    new-array p2, p2, [J

    aput-wide v6, p2, v3

    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 180
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p2

    .line 182
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 186
    :cond_2
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 187
    const-string v1, "description"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "#### Downloaded file name: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#### Download failed, Deleting all the files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;->deleteFile(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;->retrieveNotDownloadedAndStartDownload()V

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#### Downloaded successful ! "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY_TEMP:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;->access$000(Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;->retrieveNotDownloadedAndStartDownload()V

    .line 206
    :cond_5
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void
.end method
