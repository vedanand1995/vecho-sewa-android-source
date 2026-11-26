.class public Lcom/argusoft/sewa/android/app/model/DataQualityBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "DataQualityBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private childServiceVaccinationStatus:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isDeliveryHappened:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isDeliveryPlaceVerificationDone:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isPregnant:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noOfChildGenderVerification:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private serviceType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ttInjectionReceivedStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTtInjectionReceivedStatus()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->ttInjectionReceivedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChildServiceVaccinationStatus()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->childServiceVaccinationStatus:Z

    return v0
.end method

.method public isDeliveryHappened()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryHappened:Z

    return v0
.end method

.method public isDeliveryPlaceVerificationDone()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryPlaceVerificationDone:Z

    return v0
.end method

.method public isNoOfChildGenderVerification()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->noOfChildGenderVerification:Z

    return v0
.end method

.method public isPregnant()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isPregnant:Z

    return v0
.end method

.method public setChildServiceVaccinationStatus(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->childServiceVaccinationStatus:Z

    return-void
.end method

.method public setDeliveryHappened(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryHappened:Z

    return-void
.end method

.method public setDeliveryPlaceVerificationDone(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryPlaceVerificationDone:Z

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNoOfChildGenderVerification(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->noOfChildGenderVerification:Z

    return-void
.end method

.method public setPregnant(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isPregnant:Z

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->serviceType:Ljava/lang/String;

    return-void
.end method

.method public setTtInjectionReceivedStatus(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->ttInjectionReceivedStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataQualityBean{memberId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->memberId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->serviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isDeliveryHappened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryHappened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDeliveryPlaceVerificationDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isDeliveryPlaceVerificationDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", noOfChildGenderVerification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->noOfChildGenderVerification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", childServiceVaccinationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->childServiceVaccinationStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPregnant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->isPregnant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ttInjectionReceivedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->ttInjectionReceivedStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->modifiedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
