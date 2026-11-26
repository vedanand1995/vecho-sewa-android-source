.class public Lcom/argusoft/sewa/android/app/model/NotificationBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "NotificationBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private ashaId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ashaName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private beneficiaryId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private beneficiaryName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private customField:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dateOfNotification:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private diagnosisDate:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private expectedDueDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private expectedDueDateString:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private expiryDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private familyId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private header:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private memberId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field private migrationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noOfNotificationType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private notificationCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private notificationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private notificationOf:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private otherDetails:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private overDueDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private overdueFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private positiveFindings:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private scheduledDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private skipNotification:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 307
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAshaId()Ljava/lang/Long;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->ashaId:Ljava/lang/Long;

    return-object v0
.end method

.method public getAshaName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->ashaName:Ljava/lang/String;

    return-object v0
.end method

.method public getBeneficiaryId()Ljava/lang/Long;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->beneficiaryId:Ljava/lang/Long;

    return-object v0
.end method

.method public getBeneficiaryName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->beneficiaryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomField()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->customField:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfNotification()Ljava/util/Date;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->dateOfNotification:Ljava/util/Date;

    return-object v0
.end method

.method public getDiagnosisDate()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->diagnosisDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExpectedDueDate()Ljava/util/Date;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->expectedDueDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpectedDueDateString()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->expectedDueDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->expiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/Long;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->familyId:Ljava/lang/Long;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Long;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->locationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMigrationId()Ljava/lang/Long;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->migrationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getNoOfNotificationType()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->noOfNotificationType:I

    return v0
.end method

.method public getNotificationCode()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/Long;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getNotificationOf()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationOf:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherDetails()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->otherDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getOverDueDate()Ljava/lang/Long;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->overDueDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getOverdueFlag()Ljava/lang/Boolean;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->overdueFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPositiveFindings()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->positiveFindings:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledDate()Ljava/util/Date;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->scheduledDate:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 312
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSkipNotification()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->skipNotification:Z

    return v0
.end method

.method public setAshaId(Ljava/lang/Long;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->ashaId:Ljava/lang/Long;

    return-void
.end method

.method public setAshaName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->ashaName:Ljava/lang/String;

    return-void
.end method

.method public setBeneficiaryId(Ljava/lang/Long;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->beneficiaryId:Ljava/lang/Long;

    return-void
.end method

.method public setBeneficiaryName(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->beneficiaryName:Ljava/lang/String;

    return-void
.end method

.method public setCustomField(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->customField:Ljava/lang/String;

    return-void
.end method

.method public setDateOfNotification(Ljava/util/Date;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->dateOfNotification:Ljava/util/Date;

    return-void
.end method

.method public setDiagnosisDate(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->diagnosisDate:Ljava/lang/String;

    return-void
.end method

.method public setExpectedDueDate(Ljava/util/Date;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->expectedDueDate:Ljava/util/Date;

    return-void
.end method

.method public setExpectedDueDateString(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->expectedDueDateString:Ljava/lang/String;

    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->expiryDate:Ljava/util/Date;

    return-void
.end method

.method public setFamilyId(Ljava/lang/Long;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->familyId:Ljava/lang/Long;

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->header:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->locationId:Ljava/lang/Long;

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public setMigrationId(Ljava/lang/Long;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->migrationId:Ljava/lang/Long;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNoOfNotificationType(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->noOfNotificationType:I

    return-void
.end method

.method public setNotificationCode(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationCode:Ljava/lang/String;

    return-void
.end method

.method public setNotificationId(Ljava/lang/Long;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationId:Ljava/lang/Long;

    return-void
.end method

.method public setNotificationOf(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationOf:Ljava/lang/String;

    return-void
.end method

.method public setOtherDetails(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->otherDetails:Ljava/lang/String;

    return-void
.end method

.method public setOverDueDate(Ljava/lang/Long;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->overDueDate:Ljava/lang/Long;

    return-void
.end method

.method public setOverdueFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->overdueFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setPositiveFindings(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->positiveFindings:Ljava/lang/String;

    return-void
.end method

.method public setScheduledDate(Ljava/util/Date;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->scheduledDate:Ljava/util/Date;

    return-void
.end method

.method public setSkipNotification(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->skipNotification:Z

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->state:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationBean{notificationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateOfNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->dateOfNotification:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", beneficiaryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->beneficiaryId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", beneficiaryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->beneficiaryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expectedDueDateString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->expectedDueDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", overdueFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->overdueFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noOfNotificationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->noOfNotificationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", skipNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->skipNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/NotificationBean;->notificationOf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
