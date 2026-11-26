.class public Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;
.super Ljava/lang/Object;
.source "LmsViewedMediaDataBean.java"


# instance fields
.field private courseId:Ljava/lang/Integer;

.field private endDate:Ljava/util/Date;

.field private isCompleted:Ljava/lang/Boolean;

.field private isViewed:Ljava/lang/Boolean;

.field private lastPausedOn:Ljava/lang/Integer;

.field private lessonId:Ljava/lang/Integer;

.field private moduleId:Ljava/lang/Integer;

.field private questionSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private sessions:Ljava/lang/String;

.field private startDate:Ljava/util/Date;

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private userFeedback:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->courseId:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getModuleId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->moduleId:Ljava/lang/Integer;

    .line 31
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLessonId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->lessonId:Ljava/lang/Integer;

    .line 32
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getStartDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->startDate:Ljava/util/Date;

    .line 33
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getEndDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->endDate:Ljava/util/Date;

    .line 34
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getCompleted()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->isCompleted:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getViewed()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->isViewed:Ljava/lang/Boolean;

    .line 36
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->lastPausedOn:Ljava/lang/Integer;

    .line 37
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->userFeedback:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getSessions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->sessions:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getTopics()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getTopics()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getTopics()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean$1;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;)V

    .line 41
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->topics:Ljava/util/List;

    .line 42
    sget-object v1, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getQuestionSet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getQuestionSet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->getQuestionSet()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean$2;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;)V

    .line 46
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->questionSet:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public getCompleted()Ljava/lang/Boolean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->isCompleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLastPausedOn()Ljava/lang/Integer;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->lastPausedOn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLessonId()Ljava/lang/Integer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->lessonId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->moduleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuestionSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->questionSet:Ljava/util/List;

    return-object v0
.end method

.method public getSessions()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->sessions:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->topics:Ljava/util/List;

    return-object v0
.end method

.method public getUserFeedback()Ljava/lang/Integer;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->userFeedback:Ljava/lang/Integer;

    return-object v0
.end method

.method public getViewed()Ljava/lang/Boolean;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->isViewed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCompleted(Ljava/lang/Boolean;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->isCompleted:Ljava/lang/Boolean;

    return-void
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setLastPausedOn(Ljava/lang/Integer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->lastPausedOn:Ljava/lang/Integer;

    return-void
.end method

.method public setLessonId(Ljava/lang/Integer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->lessonId:Ljava/lang/Integer;

    return-void
.end method

.method public setModuleId(Ljava/lang/Integer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->moduleId:Ljava/lang/Integer;

    return-void
.end method

.method public setQuestionSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->questionSet:Ljava/util/List;

    return-void
.end method

.method public setSessions(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->sessions:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setTopics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->topics:Ljava/util/List;

    return-void
.end method

.method public setUserFeedback(Ljava/lang/Integer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->userFeedback:Ljava/lang/Integer;

    return-void
.end method

.method public setViewed(Ljava/lang/Boolean;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsViewedMediaDataBean;->isViewed:Ljava/lang/Boolean;

    return-void
.end method
