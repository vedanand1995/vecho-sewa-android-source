.class Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;
.super Ljava/lang/Object;
.source "LMSActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSActivity;->addCourseTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

.field final synthetic val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field final synthetic val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V
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

    .line 351
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;->val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V
    .locals 6

    .line 354
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;->val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$6;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    return-void
.end method
