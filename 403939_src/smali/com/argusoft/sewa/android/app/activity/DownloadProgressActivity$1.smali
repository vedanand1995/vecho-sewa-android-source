.class Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;
.super Ljava/lang/Thread;
.source "DownloadProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

.field final synthetic val$downloadId:J

.field final synthetic val$mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic val$manager:Landroid/app/DownloadManager;

.field final synthetic val$percent:Landroid/widget/TextView;

.field final synthetic val$roundProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;JLandroid/app/DownloadManager;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    iput-wide p2, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$downloadId:J

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$manager:Landroid/app/DownloadManager;

    iput-object p5, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$mProgressBar:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$roundProgressBar:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$percent:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 61
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 62
    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$downloadId:J

    new-array v5, v0, [J

    const/4 v6, 0x0

    aput-wide v3, v5, v6

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 63
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$manager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    const-string v3, "bytes_so_far"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 67
    const-string v4, "total_size"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v7, v3

    const-wide/16 v9, 0x64

    mul-long v7, v7, v9

    int-to-long v3, v4

    .line 69
    div-long/2addr v7, v3

    long-to-int v3, v7

    .line 71
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    new-instance v5, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$1;

    invoke-direct {v5, p0, v3}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;I)V

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    .line 82
    :try_start_0
    const-string v5, "status"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v7, 0x8

    if-ne v5, v7, :cond_0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    new-instance v5, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;

    invoke-direct {v5, p0, v3}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;-><init>(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;I)V

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    const-class v1, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "#### Download Completed. Showing App Install Dialog. (DPA)"

    invoke-virtual {v1, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v3

    move v6, v1

    move-object v1, v3

    .line 97
    :goto_1
    const-class v3, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v6

    .line 100
    :cond_0
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-wide/16 v2, 0x3e8

    .line 103
    :try_start_2
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .line 105
    const-class v3, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :cond_1
    return-void
.end method
