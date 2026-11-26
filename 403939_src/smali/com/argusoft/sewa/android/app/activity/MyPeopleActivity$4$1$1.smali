.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;
.super Ljava/lang/Object;
.source "MyPeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1205
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "leprosySurvey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    .line 1213
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    return-void
.end method
