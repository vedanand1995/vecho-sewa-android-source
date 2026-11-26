.class Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;
.super Ljava/lang/Object;
.source "DownloadProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;

.field final synthetic val$dl_progress:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->this$1:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->val$dl_progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->this$1:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->val$dl_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 88
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->this$1:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$roundProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->val$dl_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download completed"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->val$dl_progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1$2;->this$1:Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity$1;->val$percent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
