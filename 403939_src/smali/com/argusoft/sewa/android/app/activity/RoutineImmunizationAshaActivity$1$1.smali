.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;
.super Ljava/util/TimerTask;
.source "RoutineImmunizationAshaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;Ljava/lang/CharSequence;)V
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

    .line 686
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity$1$1(Ljava/lang/CharSequence;)V
    .locals 8

    .line 691
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)J

    move-result-wide v6

    const-wide/16 v4, 0x1e

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveMembersForDPTAlertFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity$1$1(Ljava/lang/CharSequence;)V
    .locals 8

    .line 693
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)J

    move-result-wide v6

    const-wide/16 v4, 0x1e

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method synthetic lambda$run$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity$1$1()V
    .locals 8

    .line 697
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 698
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;J)J

    .line 699
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)J

    move-result-wide v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveMembersForDPTAlertFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)J

    move-result-wide v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 690
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
