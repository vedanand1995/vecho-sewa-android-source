.class public Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;
.super Ljava/lang/Object;
.source "LmsFIBQuestionAnswersDataBean.java"


# instance fields
.field private blankNumber:Ljava/lang/Integer;

.field private blankValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlankNumber()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->blankNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBlankValue()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->blankValue:Ljava/lang/String;

    return-object v0
.end method

.method public setBlankNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->blankNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setBlankValue(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->blankValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LmsQuestionAnswersDataBean{blankNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->blankNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blankValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;->blankValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
