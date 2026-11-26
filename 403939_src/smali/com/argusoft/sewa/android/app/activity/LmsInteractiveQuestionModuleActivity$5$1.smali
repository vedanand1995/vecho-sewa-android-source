.class Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;
.super Ljava/lang/Object;
.source "LmsInteractiveQuestionModuleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 686
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->cancel()V

    .line 690
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 691
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V

    .line 692
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/lms/LmsAnswerViewActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "questionSet"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "testFor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    const/16 v1, 0x3f8

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
