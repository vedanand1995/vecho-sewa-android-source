.class public Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;
.super Ljava/lang/Object;
.source "LmsCourseDataBean.java"


# instance fields
.field private completionStatus:Ljava/lang/Integer;

.field private courseDescription:Ljava/lang/String;

.field private courseId:Ljava/lang/Integer;

.field private courseImage:Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

.field private courseName:Ljava/lang/String;

.field private courseState:Ljava/lang/String;

.field private courseType:Ljava/lang/String;

.field private isAllowedToSkipLessons:Ljava/lang/Boolean;

.field private isArchived:Ljava/lang/Boolean;

.field private isMediaDownloaded:Ljava/lang/Boolean;

.field listDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private questionSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private testConfigJson:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/LmsCourseBean;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseId:Ljava/lang/Integer;

    .line 34
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseDescription:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseState:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseType:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getAllowedToSkipLessons()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isAllowedToSkipLessons:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isArchived:Ljava/lang/Boolean;

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isMediaDownloaded:Ljava/lang/Boolean;

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getTopics()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getTopics()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getTopics()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$1;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V

    .line 49
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->topics:Ljava/util/List;

    .line 50
    sget-object v1, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getQuestionSet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getQuestionSet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 53
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getQuestionSet()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$2;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V

    .line 54
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->questionSet:Ljava/util/List;

    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getTestConfigJson()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getTestConfigJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getTestConfigJson()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$3;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$3;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V

    .line 58
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->testConfigJson:Ljava/util/Map;

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseImage()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseImage:Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    :cond_5
    return-void
.end method


# virtual methods
.method public getAllowedToSkipLessons()Ljava/lang/Boolean;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isAllowedToSkipLessons:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getArchived()Ljava/lang/Boolean;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isArchived:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCompletionStatus()Ljava/lang/Integer;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->completionStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCourseDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseImage:Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    return-object v0
.end method

.method public getCourseName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseName:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseState()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseState:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseType:Ljava/lang/String;

    return-object v0
.end method

.method public getListDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->listDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getMediaDownloaded()Ljava/lang/Boolean;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isMediaDownloaded:Ljava/lang/Boolean;

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

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->questionSet:Ljava/util/List;

    return-object v0
.end method

.method public getTestConfigJson()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->testConfigJson:Ljava/util/Map;

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

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->topics:Ljava/util/List;

    return-object v0
.end method

.method public setAllowedToSkipLessons(Ljava/lang/Boolean;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isAllowedToSkipLessons:Ljava/lang/Boolean;

    return-void
.end method

.method public setArchived(Ljava/lang/Boolean;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isArchived:Ljava/lang/Boolean;

    return-void
.end method

.method public setCompletionStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->completionStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setCourseDescription(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseDescription:Ljava/lang/String;

    return-void
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setCourseImage(Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseImage:Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    return-void
.end method

.method public setCourseName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseName:Ljava/lang/String;

    return-void
.end method

.method public setCourseState(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseState:Ljava/lang/String;

    return-void
.end method

.method public setCourseType(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->courseType:Ljava/lang/String;

    return-void
.end method

.method public setListDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsExpandableListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->listDataBeans:Ljava/util/List;

    return-void
.end method

.method public setMediaDownloaded(Ljava/lang/Boolean;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->isMediaDownloaded:Ljava/lang/Boolean;

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

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->questionSet:Ljava/util/List;

    return-void
.end method

.method public setTestConfigJson(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuizConfigDataBean;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->testConfigJson:Ljava/util/Map;

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

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->topics:Ljava/util/List;

    return-void
.end method
