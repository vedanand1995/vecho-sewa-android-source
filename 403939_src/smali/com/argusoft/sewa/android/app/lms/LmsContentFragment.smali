.class public Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;
.super Landroidx/fragment/app/Fragment;
.source "LmsContentFragment.java"


# instance fields
.field private activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private expandableListAdaptor:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

.field private expandableListView:Landroid/widget/ExpandableListView;

.field private lastExpandedGroupPosition:I

.field private selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

.field private selectedLessonChildIndex:I

.field private selectedLessonGroupIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->lastExpandedGroupPosition:I

    .line 47
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedLessonChildIndex:I

    .line 48
    iput v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedLessonGroupIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListAdaptor:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedLessonGroupIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedLessonGroupIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedLessonChildIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedLessonChildIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->lastExpandedGroupPosition:I

    return p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->lastExpandedGroupPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListView:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method private getChildClickListener()Landroid/widget/ExpandableListView$OnChildClickListener;
    .locals 1

    .line 154
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)V

    return-object v0
.end method

.method private getOnCollapseGroupListener()Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    .locals 1

    .line 204
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$3;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)V

    return-object v0
.end method

.method private getOnExpandGroupListener()Landroid/widget/ExpandableListView$OnGroupExpandListener;
    .locals 1

    .line 183
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;)V

    return-object v0
.end method

.method public static newInstance()Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;
    .locals 1

    .line 61
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;-><init>()V

    return-object v0
.end method

.method private openLmsTestModule(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 126
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 127
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v4, v4, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 137
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;->getProvideInteractiveFeedbackAfterEachQuestion()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LmsInteractiveQuestionModuleActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 140
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->getQuestionSetType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9a4

    if-ne v0, v1, :cond_4

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 143
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LmsQuestionModuleActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    :goto_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "questionSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string p1, "testFor"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    const/16 p2, 0x3f8

    invoke-virtual {p1, v0, p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 149
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please complete previous lessons first"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedCourse()Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    if-nez v0, :cond_1

    return-void

    .line 83
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 86
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;-><init>()V

    .line 87
    const-string v3, "LMS_GROUP"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->setGroupType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->setModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V

    .line 89
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;-><init>()V

    .line 92
    const-string v3, "LMS_GROUP_QUIZ"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->setGroupType(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->setModule(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V

    .line 94
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 99
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;-><init>()V

    .line 100
    const-string v3, "LMS_COURSE"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->setGroupType(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;->setQuestionSet(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)V

    .line 102
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v0, v7}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->setListDataBeans(Ljava/util/List;)V

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->expandable_list_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListView:Landroid/widget/ExpandableListView;

    .line 109
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    .line 110
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 112
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonList()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Ljava/util/List;Lcom/argusoft/sewa/android/app/core/SewaFhsService;Lcom/argusoft/sewa/android/app/core/LmsService;Ljava/util/List;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListAdaptor:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    .line 116
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getChildClickListener()Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getOnExpandGroupListener()Landroid/widget/ExpandableListView$OnGroupExpandListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getOnCollapseGroupListener()Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 68
    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->fragment_lms_content:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->bodyLayoutContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->activity:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    .line 71
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsContentFragment;->initView()V

    return-object p1
.end method
