.class Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;
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

    .line 692
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 695
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;)V

    .line 709
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to lock the quiz and view answers? After this all the attempts for this quiz will be exhausted."

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 712
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method
