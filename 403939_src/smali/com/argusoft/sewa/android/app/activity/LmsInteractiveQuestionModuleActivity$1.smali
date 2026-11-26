.class Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$1;
.super Ljava/lang/Object;
.source "LmsInteractiveQuestionModuleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setQuizStartScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 211
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity;->setSectionQuestionsScreen()V

    return-void
.end method
