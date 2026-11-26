.class public Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;
.super Landroidx/fragment/app/Fragment;
.source "LmsPendingCourseListFragment.java"


# instance fields
.field private adapter:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

.field private alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroidx/recyclerview/widget/RecyclerView;

.field private lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

.field private lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private mainLayout:Landroid/widget/FrameLayout;

.field private pendingCourses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->setItems()V

    return-void
.end method

.method public static newInstance(Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;Ljava/util/List;)Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;",
            "Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;-><init>()V

    .line 71
    iput-object p0, v0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    .line 72
    iput-object p1, v0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    .line 73
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 74
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "courses"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setItems()V
    .locals 19

    move-object/from16 v7, p0

    .line 106
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->items:Ljava/util/List;

    .line 111
    :goto_0
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 112
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 116
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 118
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LMS:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/SewaConstants;->getDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;->getMediaName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getLMSFileName(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    move-object v9, v4

    .line 125
    iget-object v4, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v4

    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 127
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v15, v5

    goto :goto_3

    .line 131
    :cond_2
    iget-object v4, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 132
    iget-object v4, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    iget-object v4, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    .line 135
    :goto_4
    iget-object v5, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 136
    iget-object v5, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 137
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v4, v8

    .line 138
    iget-object v8, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 139
    iget-object v8, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 140
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    move v14, v4

    goto :goto_7

    :cond_6
    const/4 v14, 0x0

    .line 148
    :goto_7
    iget-object v4, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v11

    .line 149
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v12

    .line 150
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-object v6, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    invoke-virtual {v6, v3}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->getCourseSize(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v8, v5

    invoke-direct/range {v8 .. v17}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/Long;)V

    .line 148
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 159
    :cond_7
    new-instance v8, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->items:Ljava/util/List;

    const/4 v5, 0x1

    iget-object v6, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    const/4 v4, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Landroid/content/Context;Ljava/util/List;ZZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V

    iput-object v8, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    .line 210
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    .line 211
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 212
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 213
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 216
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No course to display at this time. Please check back later"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    const/16 v1, 0x14

    .line 217
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 218
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_9
    :goto_8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "courses"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;)V

    .line 85
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 84
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 94
    sget p3, Lcom/argusoft/sewa/android/app/R$layout;->fragment_pending_course_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    .line 95
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->setItems()V

    .line 98
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 99
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->markCourseViewed(Ljava/lang/Integer;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 249
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->adapter:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->updateList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public openLessonView()V
    .locals 3

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->selectedCourse:Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "courseId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public resetList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->mainLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 227
    new-instance v1, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment$3;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;Ljava/util/List;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->pendingCourses:Ljava/util/List;

    .line 236
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/lms/LmsPendingCourseListFragment;->setItems()V

    :cond_1
    :goto_0
    return-void
.end method
