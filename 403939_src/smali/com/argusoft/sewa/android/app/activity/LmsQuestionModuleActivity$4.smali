.class Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;
.super Ljava/lang/Object;
.source "LmsQuestionModuleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setSubmitScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 678
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;Ljava/lang/Boolean;)V

    .line 679
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "questionSet"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "testFor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    const/16 v1, 0x3f8

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
