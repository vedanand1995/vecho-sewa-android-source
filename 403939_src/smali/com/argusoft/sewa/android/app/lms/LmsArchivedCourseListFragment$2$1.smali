.class Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;
.super Ljava/lang/Object;
.source "LmsArchivedCourseListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->onMenuClick(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;Landroid/widget/PopupMenu;I)V
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

    .line 165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->val$popupMenu:Landroid/widget/PopupMenu;

    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 169
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 170
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->getData()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->makeCourseArchive(Ljava/lang/Integer;Z)V

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Lcom/argusoft/sewa/android/app/core/LmsDownloadService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/argusoft/sewa/android/app/core/LmsDownloadService;->addCourseMediaToDownload(Ljava/lang/Integer;)V

    .line 173
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->removeItem(I)V

    .line 174
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 175
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$string;->msg_course_restored:I

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 179
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "No course to display at this time. Please check back later"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    const/16 v0, 0x14

    .line 180
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
