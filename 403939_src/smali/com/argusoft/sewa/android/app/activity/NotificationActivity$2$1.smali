.class Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;
.super Ljava/util/TimerTask;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;Ljava/lang/CharSequence;)V
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

    .line 814
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-NotificationActivity$2$1(Ljava/lang/CharSequence;)V
    .locals 8

    .line 821
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)J

    move-result-wide v6

    const-wide/16 v4, 0x1e

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-NotificationActivity$2$1()V
    .locals 8

    .line 825
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->showProcessDialog()V

    .line 826
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR_VACCINATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)J

    move-result-wide v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveChildListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto :goto_0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)J

    move-result-wide v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    .line 831
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->clearFocus()V

    return-void
.end method

.method public run()V
    .locals 8

    .line 817
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 818
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR_VACCINATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->val$s:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/NotificationActivity;)J

    move-result-wide v6

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->retrieveChildListFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NotificationActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NotificationActivity$2$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NotificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
