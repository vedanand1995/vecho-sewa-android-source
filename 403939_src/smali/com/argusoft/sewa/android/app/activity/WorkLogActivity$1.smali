.class Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;
.super Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;
.source "WorkLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->retrieveWorkLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;Landroid/content/Context;Ljava/util/List;)V
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

    .line 113
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;

    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/component/MyWorkLogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$retryUploading$0$com-argusoft-sewa-android-app-activity-WorkLogActivity$1()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->retrieveWorkLog()V

    return-void
.end method

.method public retryUploading(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V
    .locals 5

    .line 116
    sget-boolean v0, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;->isRunning:Z

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const-string v1, "U"

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->updateUploadFileDataBean(Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;)V

    .line 120
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;)V

    invoke-direct {v2, v3, v4}, Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver;-><init>(Landroid/os/Handler;Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;)V

    .line 124
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/model/UploadFileDataBean;->setStatus(Ljava/lang/String;)V

    .line 125
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/argusoft/sewa/android/app/service/FileUploadForegroundService_;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beans"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v0, "receiver"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
