.class public Lcom/argusoft/sewa/android/app/model/LmsCourseBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LmsCourseBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private courseDescription:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private courseId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private courseImage:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private courseName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private courseState:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private courseType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isAllowedToSkipLessons:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isArchived:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isMediaDownloaded:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private questionSet:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private testConfigJson:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private topics:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseId:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseDescription:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseState:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseType:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getAllowedToSkipLessons()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isAllowedToSkipLessons:Ljava/lang/Boolean;

    .line 48
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->topics:Ljava/lang/String;

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->questionSet:Ljava/lang/String;

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getTestConfigJson()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->testConfigJson:Ljava/lang/String;

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseImage()Lcom/argusoft/sewa/android/app/databean/LmsCourseImageDataBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseImage:Ljava/lang/String;

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isArchived:Ljava/lang/Boolean;

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 64
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getMediaDownloaded()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isMediaDownloaded:Ljava/lang/Boolean;

    :cond_5
    return-void
.end method


# virtual methods
.method public getAllowedToSkipLessons()Ljava/lang/Boolean;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isAllowedToSkipLessons:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getArchived()Ljava/lang/Boolean;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isArchived:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCourseDescription()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCourseImage()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseName:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseState()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseState:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseType:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDownloaded()Ljava/lang/Boolean;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isMediaDownloaded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getQuestionSet()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->questionSet:Ljava/lang/String;

    return-object v0
.end method

.method public getTestConfigJson()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->testConfigJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTopics()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->topics:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowedToSkipLessons(Ljava/lang/Boolean;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isAllowedToSkipLessons:Ljava/lang/Boolean;

    return-void
.end method

.method public setArchived(Ljava/lang/Boolean;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isArchived:Ljava/lang/Boolean;

    return-void
.end method

.method public setCourseDescription(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseDescription:Ljava/lang/String;

    return-void
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setCourseImage(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseImage:Ljava/lang/String;

    return-void
.end method

.method public setCourseName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseName:Ljava/lang/String;

    return-void
.end method

.method public setCourseState(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseState:Ljava/lang/String;

    return-void
.end method

.method public setCourseType(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->courseType:Ljava/lang/String;

    return-void
.end method

.method public setMediaDownloaded(Ljava/lang/Boolean;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->isMediaDownloaded:Ljava/lang/Boolean;

    return-void
.end method

.method public setQuestionSet(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->questionSet:Ljava/lang/String;

    return-void
.end method

.method public setTestConfigJson(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->testConfigJson:Ljava/lang/String;

    return-void
.end method

.method public setTopics(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->topics:Ljava/lang/String;

    return-void
.end method
