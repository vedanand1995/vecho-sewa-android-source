.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;
.super Ljava/util/TimerTask;
.source "MyPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;Ljava/lang/CharSequence;)V
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

    .line 1142
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-MyPeopleActivity$3$1(Ljava/lang/CharSequence;)V
    .locals 7

    .line 1147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addNewMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    .line 1148
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rchRegister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListForRchRegister(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 1149
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListForUpdateBySearch(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-MyPeopleActivity$3$1(Ljava/lang/CharSequence;)V
    .locals 6

    .line 1158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 1159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addNewMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    .line 1160
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rchRegister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListForRchRegister(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1168
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 1161
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1162
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1163
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1164
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 3

    .line 1145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
