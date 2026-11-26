.class Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;
.super Ljava/util/TimerTask;
.source "LmsCourseDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setCaseStudyQuizInVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

.field final synthetic val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/util/Timer;)V
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

    .line 477
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuizAtSecond()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 481
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    .line 482
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$802(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;I)I

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    .line 485
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideInteractiveFeedbackAfterEachQuestion()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 488
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9a4

    if-ne v0, v1, :cond_1

    .line 489
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 491
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    :goto_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "questionSet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "testFor"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$3;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    return-void
.end method
