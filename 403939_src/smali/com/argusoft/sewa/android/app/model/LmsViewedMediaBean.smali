.class public Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LmsViewedMediaBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private courseId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private endDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isCompleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isViewed:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastPausedOn:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lessonId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private moduleId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private questionSet:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sessions:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private topics:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userFeedback:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompleted()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->isCompleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLastPausedOn()Ljava/lang/Integer;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->lastPausedOn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLessonId()Ljava/lang/Integer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->lessonId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->moduleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuestionSet()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->questionSet:Ljava/lang/String;

    return-object v0
.end method

.method public getSessions()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->sessions:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTopics()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->topics:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFeedback()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->userFeedback:Ljava/lang/Integer;

    return-object v0
.end method

.method public getViewed()Ljava/lang/Boolean;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->isViewed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCompleted(Ljava/lang/Boolean;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->isCompleted:Ljava/lang/Boolean;

    return-void
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setLastPausedOn(Ljava/lang/Integer;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->lastPausedOn:Ljava/lang/Integer;

    return-void
.end method

.method public setLessonId(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->lessonId:Ljava/lang/Integer;

    return-void
.end method

.method public setModuleId(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->moduleId:Ljava/lang/Integer;

    return-void
.end method

.method public setQuestionSet(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->questionSet:Ljava/lang/String;

    return-void
.end method

.method public setSessions(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->sessions:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setTopics(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->topics:Ljava/lang/String;

    return-void
.end method

.method public setUserFeedback(Ljava/lang/Integer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->userFeedback:Ljava/lang/Integer;

    return-void
.end method

.method public setViewed(Ljava/lang/Boolean;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->isViewed:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsViewedMediaBean{courseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->moduleId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lessonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->lessonId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->isCompleted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isViewed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->isViewed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastPausedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->lastPausedOn:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->userFeedback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessions=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->sessions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
