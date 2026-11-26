.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/treeview/model/TreeNode$TreeNodeClickListener;


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

    .line 397
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V
    .locals 0

    .line 400
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2102(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 401
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$6;->val$lesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2500(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;)V

    return-void
.end method
