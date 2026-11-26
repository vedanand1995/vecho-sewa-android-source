.class public Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;
.super Ljava/lang/Object;
.source "LmsQuestionBankDataBean.java"


# instance fields
.field private actualId:Ljava/lang/Integer;

.field private configJson:Ljava/lang/String;

.field private questionSetId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConfigJson()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->configJson:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionSetId()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->questionSetId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setConfigJson(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->configJson:Ljava/lang/String;

    return-void
.end method

.method public setQuestionSetId(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->questionSetId:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsQuestionBankDataBean{actualId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->actualId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questionSetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->questionSetId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsQuestionBankDataBean;->configJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
