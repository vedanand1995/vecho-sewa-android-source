.class Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;
.super Ljava/lang/Object;
.source "BackgroundDownloadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->showAlert(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$buttonType:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    iput p4, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$buttonType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 115
    const-string v0, "BackgroundDownloadUtils"

    const-string v1, "Show Alert called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$msg:Ljava/lang/String;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    iget v7, p0, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils$1;->val$buttonType:I

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->access$002(Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 118
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/BackgroundDownloadUtils;->access$000()Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
