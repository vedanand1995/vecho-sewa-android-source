.class public Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LmsUserMetaDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private courseId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lessonMetaData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private quizMetaData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getCourseId()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->courseId:Ljava/lang/Integer;

    .line 28
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getQuizMetaData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->quizMetaData:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getLessonMetaData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->lessonMetaData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLessonMetaData()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->lessonMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getQuizMetaData()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->quizMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setLessonMetaData(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->lessonMetaData:Ljava/lang/String;

    return-void
.end method

.method public setQuizMetaData(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->quizMetaData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsUserMetaDataBean{courseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quizMetaData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->quizMetaData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lessonMetaData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;->lessonMetaData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
