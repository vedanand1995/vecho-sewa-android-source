.class Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$1;
.super Ljava/lang/Object;
.source "LmsQuestionModuleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setQuizStartScreen()V
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

    .line 201
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 206
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity;->setSectionQuestionsScreen()V

    return-void
.end method
