.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->generateTreeView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

.field final synthetic val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
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

    .line 405
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)Z
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2102(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 409
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$7;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    return p1
.end method
