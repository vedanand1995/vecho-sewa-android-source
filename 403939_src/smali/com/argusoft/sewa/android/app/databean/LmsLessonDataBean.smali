.class public Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;
.super Ljava/lang/Object;
.source "LmsLessonDataBean.java"


# instance fields
.field private actualId:Ljava/lang/Integer;

.field private description:Ljava/lang/String;

.field private isUserFeedbackRequired:Ljava/lang/Boolean;

.field private mediaExtension:Ljava/lang/String;

.field private mediaFileName:Ljava/lang/String;

.field private mediaId:Ljava/lang/Long;

.field private mediaOrder:Ljava/lang/Integer;

.field private mediaType:Ljava/lang/String;

.field private questionSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private size:Ljava/lang/Long;

.field private title:Ljava/lang/String;

.field private topicId:Ljava/lang/Integer;

.field private transcriptFileExtension:Ljava/lang/String;

.field private transcriptFileId:Ljava/lang/Long;

.field private transcriptFileName:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 177
    :cond_0
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    if-nez v1, :cond_1

    return v0

    .line 179
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->actualId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->actualId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaExtension()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaFileName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMediaOrder()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaType:Ljava/lang/String;

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

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->questionSet:Ljava/util/List;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->topicId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTranscriptFileExtension()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getTranscriptFileId()Ljava/lang/Long;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTranscriptFileName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFeedbackRequired()Ljava/lang/Boolean;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->isUserFeedbackRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 185
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setMediaExtension(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaExtension:Ljava/lang/String;

    return-void
.end method

.method public setMediaFileName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaFileName:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaId:Ljava/lang/Long;

    return-void
.end method

.method public setMediaOrder(Ljava/lang/Integer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaOrder:Ljava/lang/Integer;

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaType:Ljava/lang/String;

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

    .line 141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->questionSet:Ljava/util/List;

    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->size:Ljava/lang/Long;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->topicId:Ljava/lang/Integer;

    return-void
.end method

.method public setTranscriptFileExtension(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileExtension:Ljava/lang/String;

    return-void
.end method

.method public setTranscriptFileId(Ljava/lang/Long;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileId:Ljava/lang/Long;

    return-void
.end method

.method public setTranscriptFileName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileName:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserFeedbackRequired(Ljava/lang/Boolean;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->isUserFeedbackRequired:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsLessonDataBean{actualId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->actualId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->topicId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mediaExtension=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mediaOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaOrder:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', transcriptFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcriptFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', transcriptFileExtension=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->transcriptFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isUserFeedbackRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->isUserFeedbackRequired:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questionSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->questionSet:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
