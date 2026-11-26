.class public Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;
.super Ljava/lang/Object;
.source "LmsTopicDataBean.java"


# instance fields
.field private courseId:Ljava/lang/Integer;

.field private questionSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private topicDescription:Ljava/lang/String;

.field private topicId:Ljava/lang/Integer;

.field private topicMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private topicName:Ljava/lang/String;

.field private topicOrder:Ljava/lang/String;

.field private topicState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    if-nez v1, :cond_1

    return v0

    .line 102
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->courseId:Ljava/lang/Integer;

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

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->questionSet:Ljava/util/List;

    return-object v0
.end method

.method public getTopicDescription()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTopicMedias()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicMedias:Ljava/util/List;

    sget-object v1, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_MEDIA_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicMedias:Ljava/util/List;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicOrder()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicState()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 108
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->courseId:Ljava/lang/Integer;

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

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->questionSet:Ljava/util/List;

    return-void
.end method

.method public setTopicDescription(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicDescription:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicId:Ljava/lang/Integer;

    return-void
.end method

.method public setTopicMedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicMedias:Ljava/util/List;

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicName:Ljava/lang/String;

    return-void
.end method

.method public setTopicOrder(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicOrder:Ljava/lang/String;

    return-void
.end method

.method public setTopicState(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicState:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsTopicDataBean{topicId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topicName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', topicDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', topicOrder=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', topicState=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->topicState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', courseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->courseId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
