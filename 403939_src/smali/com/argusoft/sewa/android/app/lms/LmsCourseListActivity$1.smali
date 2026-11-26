.class Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;
.super Ljava/lang/Object;
.source "LmsCourseListActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setCourseScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)V

    .line 125
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    .line 139
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->resetList(Ljava/util/List;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    .line 134
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;->resetList(Ljava/util/List;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    .line 129
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->resetList(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
