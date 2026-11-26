.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;
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

.field final synthetic val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V
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

    .line 360
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/argusoft/sewa/android/app/treeview/model/TreeNode;Ljava/lang/Object;)V
    .locals 0

    .line 363
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1700(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->val$course:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2300(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
