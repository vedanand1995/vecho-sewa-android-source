.class public Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LmsCourseListActivity.java"


# instance fields
.field private adapter:Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

.field private archivedCourseDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private completedCourseDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private pendingCourseDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setCourseList()V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->pendingCourseDataBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->completedCourseDataBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->archivedCourseDataBeans:Ljava/util/List;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 71
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->lms_toolbar:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 72
    const-string v1, "MY COURSES"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_menu_back:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setBodyDetail()V

    return-void
.end method

.method private setCourseList()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourses()Ljava/util/List;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->archivedCourseDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 95
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->pendingCourseDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 96
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->completedCourseDataBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 98
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->archivedCourseDataBeans:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 101
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->pendingCourseDataBeans:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->completedCourseDataBeans:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupTabIcons(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 2

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_pending_course:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_0
    const/4 v0, 0x1

    .line 177
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_completed_course:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_1
    const/4 v0, 0x2

    .line 182
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 184
    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_archive_course:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_2
    return-void
.end method

.method private setupViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 5

    .line 162
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->pendingCourseDataBeans:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->newInstance(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Ljava/util/List;)Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->completedCourseDataBeans:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;->newInstance(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Ljava/util/List;)Lcom/argusoft/sewa/android/app/lms/LmsCompletedCourseListFragment;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->archivedCourseDataBeans:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;->newInstance(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Ljava/util/List;)Lcom/argusoft/sewa/android/app/lms/LmsArchivedCourseListFragment;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    const-string v4, "Pending"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->addFrag(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    const-string v3, "Completed"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->addFrag(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    const-string v1, "Archived"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;->addFrag(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsFragmentPagerAdaptor;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    sget p1, Lcom/argusoft/sewa/android/app/R$layout;->activity_lms_course_list:I

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 61
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setBodyDetail()V
    .locals 1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->pendingCourseDataBeans:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->completedCourseDataBeans:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->archivedCourseDataBeans:Ljava/util/List;

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setCourseList()V

    .line 89
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setCourseScreen()V

    return-void
.end method

.method public setCourseScreen()V
    .locals 3

    .line 110
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->course_view_pager:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 111
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->course_tabs:I

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 113
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 114
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setupViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 118
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;->setupTabIcons(Lcom/google/android/material/tabs/TabLayout;)V

    .line 120
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListActivity;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method
