.class Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;
.super Ljava/lang/Object;
.source "LMSActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSActivity;->generateTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

.field final synthetic val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field final synthetic val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V
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

    .line 204
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$102(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 208
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getAllowedMediaMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->context:Landroid/content/Context;

    const-string p2, "Please complete previous lessons first"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
