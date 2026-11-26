.class Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;
.super Ljava/lang/Object;
.source "LmsPendingCourseListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->onMenuClick(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;Landroid/widget/PopupMenu;I)V
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

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->val$popupMenu:Landroid/widget/PopupMenu;

    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onMenuItemClick$0$com-argusoft-sewa-android-app-lms-LmsPendingCourseListFragment$2$1(Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;ILandroid/view/View;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 182
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 183
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-result-object p3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->makeCourseArchive(Ljava/lang/Integer;Z)V

    .line 184
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    move-result-object p3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->deleteCourseMedia(Ljava/lang/Integer;)V

    .line 185
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->removeItem(I)V

    .line 186
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/argusoft/sewa/android/app/R$string;->msg_course_archived:I

    .line 188
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$600(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "No course to display at this time. Please check back later"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    const/16 p2, 0x14

    .line 192
    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 193
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$600(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .line 178
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 179
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->getData()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

    .line 180
    iget v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->val$position:I

    new-instance v5, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;I)V

    .line 198
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "We insist you to complete the course before proceeding to archive. Are you sure you want to continue?"

    .line 199
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x97

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 198
    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$302(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
