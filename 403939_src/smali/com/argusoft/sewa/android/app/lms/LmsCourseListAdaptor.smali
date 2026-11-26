.class public abstract Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LmsCourseListAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final archiveOption:Z

.field private final context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field private final showProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZLcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;",
            ">;ZZ",
            "Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->list:Ljava/util/List;

    .line 51
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->showProgress:Z

    .line 52
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->archiveOption:Z

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->adapterView:Ljava/util/Map;

    .line 54
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->context:Landroid/content/Context;

    return-object p0
.end method

.method private isCourseContentUpdated(Ljava/lang/Integer;)Z
    .locals 11

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->retrieveCourseByCourseId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedCourseById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    if-eqz v0, :cond_11

    .line 179
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    return v1

    .line 182
    :cond_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 183
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    return v1

    .line 186
    :cond_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 187
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 188
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getTopics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 191
    :cond_5
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 192
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->getTopics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 193
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 194
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_9

    .line 195
    :cond_8
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    :cond_9
    return v1

    .line 197
    :cond_a
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 198
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 199
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    return v1

    .line 202
    :cond_c
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 203
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 204
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_0

    .line 207
    :cond_d
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 208
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicMedias()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 209
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 210
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_10

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_10

    return v1

    .line 212
    :cond_10
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 213
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 214
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_f

    :cond_11
    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAvailableInternalMemorySize()J
    .locals 4

    .line 156
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 159
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->list:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract onAdapterItemClick(I)V
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 39
    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->onBindViewHolder(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;I)V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

    .line 81
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->icon_menu:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->archiveOption:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCompletionStatus()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 83
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->notification_badge:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->isCourseContentUpdated(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 85
    :cond_2
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->notification_badge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->courseImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    :cond_3
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_4
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 96
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getTopicSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getQuestionSetSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v0, "Lessons: %s, Quizzes: %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->numberOfLessonsAndQuizzes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_5
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseDesc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_6
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->isMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->isMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    :cond_7
    new-instance v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;)V

    .line 114
    iget-object v1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->warning_image:Landroidx/appcompat/widget/AppCompatImageView;

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->warning:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 115
    iget-object v1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->warning_image:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;

    invoke-direct {v4, p0, p2, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_8
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->showProgress:Z

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCompletionStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCompletionStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 133
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCompletionStatus()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_9

    .line 134
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 p2, -0x10000

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 136
    :cond_9
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCompletionStatus()I

    move-result v0

    const/16 v2, 0x50

    if-lt v0, v1, :cond_a

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCompletionStatus()I

    move-result v0

    if-ge v0, v2, :cond_a

    .line 137
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xff

    const/16 v0, 0xa5

    .line 138
    invoke-static {p2, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 137
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 139
    :cond_a
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCompletionStatus()I

    move-result p2

    if-lt p2, v2, :cond_c

    .line 140
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const p2, -0xff0100

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 144
    :cond_b
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_c
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_lms_course:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    new-instance p2, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;Landroid/view/View;)V

    return-object p2
.end method

.method public abstract onMenuClick(ILandroid/view/View;)V
.end method

.method public removeItem(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->notifyItemRemoved(I)V

    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->list:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->notifyDataSetChanged()V

    return-void
.end method
