.class Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;
.super Ljava/util/TimerTask;
.source "RoutineImmunizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;Ljava/lang/CharSequence;)V
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

    .line 798
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity$1$1(Ljava/lang/CharSequence;)V
    .locals 8

    .line 803
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Lcom/argusoft/sewa/android/app/component/SearchComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity$1$1(Ljava/lang/CharSequence;)V
    .locals 8

    .line 805
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)J

    move-result-wide v6

    const-wide/16 v4, 0x1e

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method synthetic lambda$run$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity$1$1()V
    .locals 8

    .line 809
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 810
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;J)J

    .line 811
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Lcom/argusoft/sewa/android/app/component/SearchComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)J

    move-result-wide v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 802
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 803
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
