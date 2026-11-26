.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->showPopUpWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/widget/PopupWindow;)V
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

    .line 716
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 719
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$3000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->context:Landroid/content/Context;

    const-string v0, "Please enter bookmark note"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_1
    :goto_0
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$3000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$3000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->setFileName(Ljava/lang/String;)V

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->saveBookmark(Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;)V

    .line 725
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Lcom/argusoft/sewa/android/app/component/PagingListView;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 726
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 727
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 728
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$3002(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 729
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$14;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_1
    return-void
.end method
