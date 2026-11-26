.class public final synthetic Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/argusoft/sewa/android/app/receiver/UploadResultReceiver$Receiver;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;

    return-void
.end method


# virtual methods
.method public final onUploadFinished()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/WorkLogActivity$1;->lambda$retryUploading$0$com-argusoft-sewa-android-app-activity-WorkLogActivity$1()V

    return-void
.end method
