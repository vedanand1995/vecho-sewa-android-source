.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;
.super Ljava/lang/Object;
.source "LmsBookmarksAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

.field final synthetic val$note:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/PopupWindow;)V
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

    .line 182
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->val$note:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->val$note:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 186
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->setFileName(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->val$note:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;->setBookmarkNote(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->updateBookmark(Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)V

    .line 191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$502(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$position:I

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$3;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please enter bookmark note"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
