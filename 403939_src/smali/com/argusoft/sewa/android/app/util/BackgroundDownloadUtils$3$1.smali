.class Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;
.super Ljava/lang/Object;
.source "BackgroundDownloadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;->this$0:Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 223
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->access$000()Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 224
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_APK_DOWNLOADED:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;->this$0:Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$apkName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 227
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;->this$0:Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;->this$0:Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;

    iget-object v3, v3, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 230
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    const-string v2, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;->this$0:Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;->this$0:Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
