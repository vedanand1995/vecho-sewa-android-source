.class Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;
.super Ljava/lang/Object;
.source "LmsProgressReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->addQuizDetailsForEachQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;

.field final synthetic val$quizArrow:Landroid/widget/ImageView;

.field final synthetic val$quizContent:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->val$quizContent:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->val$quizArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 350
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->val$quizContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->val$quizArrow:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_down:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->val$quizContent:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->val$quizArrow:Landroid/widget/ImageView;

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_up:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$3;->val$quizContent:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
