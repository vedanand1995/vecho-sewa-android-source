.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;
.super Ljava/util/TimerTask;
.source "NDHMHealthIdCreationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 900
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9$2;-><init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 922
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdCreationActivity$9;->cancel()Z

    :goto_0
    return-void
.end method
