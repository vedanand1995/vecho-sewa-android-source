.class Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;
.super Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;
.source "LmsPendingCourseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->setItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Landroid/content/Context;Ljava/util/List;ZZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;-><init>(Landroid/content/Context;Ljava/util/List;ZZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onAdapterItemClick(I)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->access$002(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 163
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->openLessonView()V

    return-void
.end method

.method public onMenuClick(ILandroid/view/View;)V
    .locals 3

    .line 168
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 171
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    sget v1, Lcom/argusoft/sewa/android/app/R$menu;->menu_archive:I

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    .line 173
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->menu_restore:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    new-instance p2, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;Landroid/widget/PopupMenu;I)V

    invoke-virtual {v0, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 206
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
