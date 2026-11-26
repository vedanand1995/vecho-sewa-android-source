.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->addModuleTestInTreeView(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

.field final synthetic val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

.field final synthetic val$topic:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V
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

    .line 563
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;->val$topic:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V
    .locals 6

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;->val$topic:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$10;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2600(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    return-void
.end method
