.class Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;
.super Ljava/lang/Object;
.source "LMSFeedbackComponent.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 2

    .line 101
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->access$100(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->access$000(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLessonId()Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->access$000(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getModuleId()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->access$000(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->storeUserFeedbackOfMedia(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 102
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->dismiss()V

    .line 103
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent$1;->this$0:Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;->access$200(Lcom/argusoft/sewa/android/app/component/LMSFeedbackComponent;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Your feedback has been submitted successfully"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
