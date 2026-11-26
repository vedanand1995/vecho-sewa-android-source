.class Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity$1;
.super Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;
.source "WorkStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->retrieveWorkLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;

    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public retryUploading(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V
    .locals 3

    .line 542
    sget-boolean v0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;->isRunning:Z

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 546
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beans"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/WorkStatusActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
