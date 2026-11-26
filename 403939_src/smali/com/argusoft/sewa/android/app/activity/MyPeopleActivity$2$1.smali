.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;
.super Ljava/util/TimerTask;
.source "MyPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;Ljava/lang/CharSequence;)V
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

    .line 981
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-argusoft-sewa-android-app-activity-MyPeopleActivity$2$1(Ljava/lang/CharSequence;)V
    .locals 7

    .line 986
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/argusoft/sewa/android/app/component/SearchComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method synthetic lambda$run$1$com-argusoft-sewa-android-app-activity-MyPeopleActivity$2$1()V
    .locals 7

    .line 989
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 990
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 991
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/argusoft/sewa/android/app/component/SearchComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 984
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 985
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 986
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->val$s:Ljava/lang/CharSequence;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2$1;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
