.class Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;
.super Ljava/util/TimerTask;
.source "NPCBScreeningOA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;Ljava/lang/CharSequence;)V
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

    .line 789
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-NPCBScreeningOA$1$1()V
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->showProcessDialog()V

    .line 795
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->access$102(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;I)I

    .line 796
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->access$200(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->access$304(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->retrieveMemberListFromOnline(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$1$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
