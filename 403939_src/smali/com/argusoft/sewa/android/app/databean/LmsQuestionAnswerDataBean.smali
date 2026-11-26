.class public Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;
.super Ljava/lang/Object;
.source "LmsQuestionAnswerDataBean.java"


# instance fields
.field private answer:Ljava/lang/String;

.field private correctAnswer:Ljava/lang/String;

.field private queId:Ljava/lang/Integer;

.field private queTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswer()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrectAnswer()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->correctAnswer:Ljava/lang/String;

    return-object v0
.end method

.method public getQueId()Ljava/lang/Integer;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->queId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQueTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->queTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->answer:Ljava/lang/String;

    return-void
.end method

.method public setCorrectAnswer(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->correctAnswer:Ljava/lang/String;

    return-void
.end method

.method public setQueId(Ljava/lang/Integer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->queId:Ljava/lang/Integer;

    return-void
.end method

.method public setQueTitle(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->queTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsQuestionAnswerDataBean{queId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->queId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->queTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', answer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', correctAnswer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionAnswerDataBean;->correctAnswer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
