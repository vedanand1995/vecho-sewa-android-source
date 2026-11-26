.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;
.super Ljava/lang/Object;
.source "LmsBookmarksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->showPopUpWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

.field final synthetic val$note:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/PopupWindow;)V
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

    .line 179
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->val$note:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 182
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->val$note:Lcom/google/android/material/textfield/TextInputLayout;

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

    if-nez p1, :cond_1

    .line 183
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->val$note:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;->setFileName(Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->saveBookmark(Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/BookmarkDataBean;)V

    .line 188
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$600(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$700(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$800(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->access$402(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enter bookmark note"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
