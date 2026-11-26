.class public Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;
.super Ljava/lang/Object;
.source "LmsQuestionConfigDataBean.java"


# instance fields
.field private answerPairs:Lcom/google/gson/JsonObject;

.field private answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private correctAnswerDescription:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private incorrectAnswerDescription:Ljava/lang/String;

.field private interactiveFeedbackContent:Ljava/lang/String;

.field private lhs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mediaExtension:Ljava/lang/String;

.field private mediaId:Ljava/lang/Long;

.field private mediaName:Ljava/lang/String;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private questionTitle:Ljava/lang/String;

.field private questionType:Ljava/lang/String;

.field private rhs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswerPairs()Lcom/google/gson/JsonObject;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->answerPairs:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->answers:Ljava/util/List;

    return-object v0
.end method

.method public getCorrectAnswerDescription()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->correctAnswerDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIncorrectAnswerDescription()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->incorrectAnswerDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getInteractiveFeedbackContent()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->interactiveFeedbackContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLhs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->lhs:Ljava/util/List;

    return-object v0
.end method

.method public getMediaExtension()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/Long;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMediaName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->options:Ljava/util/List;

    return-object v0
.end method

.method public getQuestionTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->questionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->questionType:Ljava/lang/String;

    return-object v0
.end method

.method public getRhs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->rhs:Ljava/util/List;

    return-object v0
.end method

.method public setAnswerPairs(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->answerPairs:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setAnswers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->answers:Ljava/util/List;

    return-void
.end method

.method public setCorrectAnswerDescription(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->correctAnswerDescription:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIncorrectAnswerDescription(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->incorrectAnswerDescription:Ljava/lang/String;

    return-void
.end method

.method public setInteractiveFeedbackContent(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->interactiveFeedbackContent:Ljava/lang/String;

    return-void
.end method

.method public setLhs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->lhs:Ljava/util/List;

    return-void
.end method

.method public setMediaExtension(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaExtension:Ljava/lang/String;

    return-void
.end method

.method public setMediaId(Ljava/lang/Long;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaId:Ljava/lang/Long;

    return-void
.end method

.method public setMediaName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaName:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->options:Ljava/util/List;

    return-void
.end method

.method public setQuestionTitle(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->questionTitle:Ljava/lang/String;

    return-void
.end method

.method public setQuestionType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->questionType:Ljava/lang/String;

    return-void
.end method

.method public setRhs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsQuestionOptionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->rhs:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsQuestionConfigDataBean{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questionTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->questionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', questionType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->questionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", answers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->answerPairs:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mediaExtension=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionConfigDataBean;->mediaExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
