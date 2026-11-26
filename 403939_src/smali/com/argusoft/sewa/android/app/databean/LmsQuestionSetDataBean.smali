.class public Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;
.super Ljava/lang/Object;
.source "LmsQuestionSetDataBean.java"


# instance fields
.field private actualId:Ljava/lang/Integer;

.field private courseId:Ljava/lang/Integer;

.field private minimumMarks:Ljava/lang/Integer;

.field private questionBank:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private questionSetName:Ljava/lang/String;

.field private questionSetType:Ljava/lang/Integer;

.field private quizAtSecond:Ljava/lang/Integer;

.field private refId:Ljava/lang/Integer;

.field private refType:Ljava/lang/String;

.field private status:Ljava/lang/String;


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

    .line 115
    :cond_0
    instance-of v1, p1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    if-nez v1, :cond_1

    return v0

    .line 117
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->actualId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->actualId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCourseId()Ljava/lang/Integer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->courseId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinimumMarks()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->minimumMarks:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuestionBank()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionBank:Ljava/util/List;

    return-object v0
.end method

.method public getQuestionSetName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionSetName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionSetType()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionSetType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuizAtSecond()Ljava/lang/Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->quizAtSecond:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRefId()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->refId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRefType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->refType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setCourseId(Ljava/lang/Integer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->courseId:Ljava/lang/Integer;

    return-void
.end method

.method public setMinimumMarks(Ljava/lang/Integer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->minimumMarks:Ljava/lang/Integer;

    return-void
.end method

.method public setQuestionBank(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionBank:Ljava/util/List;

    return-void
.end method

.method public setQuestionSetName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionSetName:Ljava/lang/String;

    return-void
.end method

.method public setQuestionSetType(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionSetType:Ljava/lang/Integer;

    return-void
.end method

.method public setQuizAtSecond(Ljava/lang/Integer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->quizAtSecond:Ljava/lang/Integer;

    return-void
.end method

.method public setRefId(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->refId:Ljava/lang/Integer;

    return-void
.end method

.method public setRefType(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->refType:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsQuestionSetDataBean{actualId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->actualId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->refId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->refType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', questionSetName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionSetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', minimumMarks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->minimumMarks:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questionBank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;->questionBank:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
