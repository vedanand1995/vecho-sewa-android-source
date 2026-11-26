.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;
.super Ljava/lang/Object;
.source "LmsBookmarksAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->deleteBookmark(Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)V

    .line 147
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    iget v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->notifyDataSetInvalidated()V

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method
