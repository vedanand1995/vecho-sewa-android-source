.class public Lcom/argusoft/sewa/android/app/model/LoggerBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "LoggerBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private beneficiaryName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private checkSum:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private date:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private formType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private generatedId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noOfAttempt:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private notificationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private recordUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private taskName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->noOfAttempt:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->noOfAttempt:I

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->checkSum:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->date:Ljava/lang/Long;

    .line 58
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->beneficiaryName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->taskName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBeneficiaryName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->beneficiaryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->date:Ljava/lang/Long;

    return-object v0
.end method

.method public getDisplayBeneficiaryName()Ljava/lang/String;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->generatedId:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OA_NPCB"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->formType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->beneficiaryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 184
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->generatedId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->generatedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->beneficiaryName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormType()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->formType:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedId()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->generatedId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getNoOfAttempt()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->noOfAttempt:I

    return v0
.end method

.method public getNotificationId()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecordUrl()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->recordUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBeneficiaryName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->beneficiaryName:Ljava/lang/String;

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/Long;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->date:Ljava/lang/Long;

    return-void
.end method

.method public setFormType(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->formType:Ljava/lang/String;

    return-void
.end method

.method public setGeneratedId(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->generatedId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNoOfAttempt(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->noOfAttempt:I

    return-void
.end method

.method public setNotificationId(Ljava/lang/Long;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->notificationId:Ljava/lang/Long;

    return-void
.end method

.method public setRecordUrl(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->recordUrl:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->taskName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoggerBean{checkSum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->checkSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->date:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", beneficiaryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->beneficiaryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noOfAttempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->noOfAttempt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->formType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/LoggerBean;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
