.class Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;
.super Ljava/lang/Object;
.source "LmsCourseDetailActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->addVideoLesson(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 10

    .line 449
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markLessonCompleted(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 450
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateLastPausedOnForMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 451
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateEndDateForMedia(Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 452
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v4, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/util/Date;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v8

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->addSessionsForMedia(Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 453
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->setFullscreen(Z)V

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$602(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;I)I

    .line 457
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1, v3}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$302(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 458
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V

    return-void
.end method
