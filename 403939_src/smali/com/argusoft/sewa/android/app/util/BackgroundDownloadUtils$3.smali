.class Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;
.super Ljava/lang/Object;
.source "BackgroundDownloadUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showInstallAppDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$apkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3$1;-><init>(Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
