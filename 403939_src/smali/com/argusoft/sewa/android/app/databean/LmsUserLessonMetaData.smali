.class public Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;
.super Ljava/lang/Object;
.source "LmsUserLessonMetaData.java"


# instance fields
.field private endDate:Ljava/lang/Long;

.field private isCompleted:Ljava/lang/Boolean;

.field private lastPausedOn:Ljava/lang/Integer;

.field private lessonId:Ljava/lang/Integer;

.field private mediaId:Ljava/lang/Long;

.field private moduleId:Ljava/lang/Integer;

.field private sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private startDate:Ljava/lang/Long;

.field private userFeedback:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompleted()Ljava/lang/Boolean;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->isCompleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->endDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastPausedOn()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->lastPausedOn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLessonId()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->lessonId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->mediaId:Ljava/lang/Long;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->moduleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->sessions:Ljava/util/List;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->startDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserFeedback()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->userFeedback:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCompleted(Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->isCompleted:Ljava/lang/Boolean;

    return-void
.end method

.method public setEndDate(Ljava/lang/Long;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->endDate:Ljava/lang/Long;

    return-void
.end method

.method public setLastPausedOn(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->lastPausedOn:Ljava/lang/Integer;

    return-void
.end method

.method public setLessonId(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->lessonId:Ljava/lang/Integer;

    return-void
.end method

.method public setMediaId(Ljava/lang/Long;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->mediaId:Ljava/lang/Long;

    return-void
.end method

.method public setModuleId(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->moduleId:Ljava/lang/Integer;

    return-void
.end method

.method public setSessions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserLessonSessionMetaData;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->sessions:Ljava/util/List;

    return-void
.end method

.method public setStartDate(Ljava/lang/Long;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->startDate:Ljava/lang/Long;

    return-void
.end method

.method public setUserFeedback(Ljava/lang/Integer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->userFeedback:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsUserLessonMetaData{moduleId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->moduleId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lessonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->lessonId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->mediaId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->startDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->endDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->isCompleted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastPausedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->lastPausedOn:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->userFeedback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->sessions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
