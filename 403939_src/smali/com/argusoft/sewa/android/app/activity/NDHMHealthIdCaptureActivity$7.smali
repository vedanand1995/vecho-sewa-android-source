.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;
.super Ljava/util/TimerTask;
.source "NDHMHealthIdCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1615
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity$7()V
    .locals 6

    .line 1620
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    const-string v2, "in %ds"

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1621
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)[I

    move-result-object v0

    aget v1, v0, v3

    sub-int/2addr v1, v4

    aput v1, v0, v3

    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-NDHMHealthIdCaptureActivity$7()V
    .locals 2

    .line 1625
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 1626
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setEnabled(Z)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1618
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1628
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCaptureActivity$7;->cancel()Z

    :goto_0
    return-void
.end method
