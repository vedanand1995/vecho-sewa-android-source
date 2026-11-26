.class Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;
.super Ljava/lang/Object;
.source "HomeScreenMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->checkAuthenticityOfCurrentVersion(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$finalDownloadPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 740
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->val$apkName:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->val$finalDownloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 743
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 744
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->deleteAllFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 745
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->val$apkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->val$finalDownloadPath:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->startAppDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DownloadProgressActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 748
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->finish()V

    return-void
.end method
