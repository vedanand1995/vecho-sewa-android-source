.class public Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;
.super Ljava/lang/Object;
.source "LmsUserMetaData.java"


# instance fields
.field courseId:Ljava/lang/Integer;

.field lessonMetaData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;",
            ">;"
        }
    .end annotation
.end field

.field quizMetaData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->courseId:Ljava/lang/Integer;

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->getQuizMetaData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->getQuizMetaData()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$1;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V

    .line 28
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->quizMetaData:Ljava/util/List;

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->getLessonMetaData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->getLessonMetaData()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$2;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V

    .line 32
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->lessonMetaData:Ljava/util/List;

    :cond_2
    return-void
.end method


# virtual methods
.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLessonMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->lessonMetaData:Ljava/util/List;

    return-object v0
.end method

.method public getQuizMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->quizMetaData:Ljava/util/List;

    return-object v0
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setLessonMetaData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->lessonMetaData:Ljava/util/List;

    return-void
.end method

.method public setQuizMetaData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsUserQuizMetaData;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->quizMetaData:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsUserMetaData{courseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quizMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->quizMetaData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lessonMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->lessonMetaData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
