.class public Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "LmsOverviewFragment.java"


# instance fields
.field private activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field private selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field private selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getDataFromActivity()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedCourse()Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedModule()Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedLesson()Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;
    .locals 1

    .line 37
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;-><init>()V

    return-object v0
.end method

.method private setBodyLayout()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    const-string v1, " - "

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Course"

    .line 75
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Module"

    .line 84
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedModule:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-eqz v0, :cond_5

    .line 91
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lesson"

    .line 93
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->selectedLesson:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getDataFromActivity()V

    .line 59
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->setBodyLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->fragment_lms_overview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->bodyLayoutContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    .line 47
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->initView()V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsOverviewFragment;->initView()V

    return-void
.end method
