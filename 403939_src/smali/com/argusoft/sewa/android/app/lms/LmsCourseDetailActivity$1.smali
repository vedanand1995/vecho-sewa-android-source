.class Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$1;
.super Ljava/lang/Object;
.source "LmsCourseDetailActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/lang/String;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 430
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Some error occurred. Please refresh and try again."

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$1;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->deleteFile(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
