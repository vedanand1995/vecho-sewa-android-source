.class public Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;
.super Ljava/lang/Object;
.source "LoggerDataBean.java"


# instance fields
.field private beneficiaryName:Ljava/lang/String;

.field private checkSum:Ljava/lang/String;

.field private date:Ljava/lang/Long;

.field private formType:Ljava/lang/String;

.field private noOfAttempt:I

.field private notificationId:Ljava/lang/Long;

.field private recordUrl:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private taskName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->noOfAttempt:I

    return-void
.end method


# virtual methods
.method public getBeneficiaryName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->beneficiaryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->date:Ljava/lang/Long;

    return-object v0
.end method

.method public getFormType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->formType:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfAttempt()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->noOfAttempt:I

    return v0
.end method

.method public getNotificationId()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecordUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->recordUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public setBeneficiaryName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->beneficiaryName:Ljava/lang/String;

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/Long;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->date:Ljava/lang/Long;

    return-void
.end method

.method public setFormType(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->formType:Ljava/lang/String;

    return-void
.end method

.method public setNoOfAttempt(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->noOfAttempt:I

    return-void
.end method

.method public setNotificationId(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->notificationId:Ljava/lang/Long;

    return-void
.end method

.method public setRecordUrl(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->recordUrl:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->taskName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoggerBean{checkSum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->checkSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->date:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", beneficiaryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->beneficiaryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noOfAttempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->noOfAttempt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/LoggerDataBean;->formType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
