.class public Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "HealthInfrastructureBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private contactNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private contactPersonName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private englishName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private forNcd:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isBalsaka:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isBalsakha1:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isBalsakha3:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isBloodBank:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isChiranjeevi:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isCmtc:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isCpConfirmationCenter:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isFru:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isGynaec:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isMaYojna:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNpcb:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNrc:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isPediatrician:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isPmjy:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isReferralFacility:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isSncu:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isUsgFacility:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private typeId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private typeName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualId()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->actualId:Ljava/lang/Long;

    return-object v0
.end method

.method public getBalsaka()Ljava/lang/Boolean;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBalsaka:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBalsakha1()Ljava/lang/Boolean;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBalsakha1:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBalsakha3()Ljava/lang/Boolean;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBalsakha3:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBloodBank()Ljava/lang/Boolean;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBloodBank:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChiranjeevi()Ljava/lang/Boolean;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isChiranjeevi:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCmtc()Ljava/lang/Boolean;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isCmtc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->contactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPersonName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->contactPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public getCpConfirmationCenter()Ljava/lang/Boolean;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isCpConfirmationCenter:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getForNcd()Ljava/lang/Boolean;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->forNcd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFru()Ljava/lang/Boolean;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isFru:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGynaec()Ljava/lang/Boolean;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isGynaec:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Long;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->locationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMaYojna()Ljava/lang/Boolean;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isMaYojna:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getModifiedOn()Ljava/lang/Long;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->modifiedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNpcb()Ljava/lang/Boolean;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isNpcb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNrc()Ljava/lang/Boolean;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isNrc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPediatrician()Ljava/lang/Boolean;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isPediatrician:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPmjy()Ljava/lang/Boolean;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isPmjy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReferralFacility()Ljava/lang/Boolean;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isReferralFacility:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSncu()Ljava/lang/Boolean;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isSncu:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/Long;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->typeId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsgFacility()Ljava/lang/Boolean;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isUsgFacility:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 330
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/Long;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->actualId:Ljava/lang/Long;

    return-void
.end method

.method public setBalsaka(Ljava/lang/Boolean;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBalsaka:Ljava/lang/Boolean;

    return-void
.end method

.method public setBalsakha1(Ljava/lang/Boolean;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBalsakha1:Ljava/lang/Boolean;

    return-void
.end method

.method public setBalsakha3(Ljava/lang/Boolean;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBalsakha3:Ljava/lang/Boolean;

    return-void
.end method

.method public setBloodBank(Ljava/lang/Boolean;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBloodBank:Ljava/lang/Boolean;

    return-void
.end method

.method public setChiranjeevi(Ljava/lang/Boolean;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isChiranjeevi:Ljava/lang/Boolean;

    return-void
.end method

.method public setCmtc(Ljava/lang/Boolean;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isCmtc:Ljava/lang/Boolean;

    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->contactNumber:Ljava/lang/String;

    return-void
.end method

.method public setContactPersonName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->contactPersonName:Ljava/lang/String;

    return-void
.end method

.method public setCpConfirmationCenter(Ljava/lang/Boolean;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isCpConfirmationCenter:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->englishName:Ljava/lang/String;

    return-void
.end method

.method public setForNcd(Ljava/lang/Boolean;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->forNcd:Ljava/lang/Boolean;

    return-void
.end method

.method public setFru(Ljava/lang/Boolean;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isFru:Ljava/lang/Boolean;

    return-void
.end method

.method public setGynaec(Ljava/lang/Boolean;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isGynaec:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->locationId:Ljava/lang/Long;

    return-void
.end method

.method public setMaYojna(Ljava/lang/Boolean;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isMaYojna:Ljava/lang/Boolean;

    return-void
.end method

.method public setModifiedOn(Ljava/lang/Long;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->modifiedOn:Ljava/lang/Long;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNpcb(Ljava/lang/Boolean;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isNpcb:Ljava/lang/Boolean;

    return-void
.end method

.method public setNrc(Ljava/lang/Boolean;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isNrc:Ljava/lang/Boolean;

    return-void
.end method

.method public setPediatrician(Ljava/lang/Boolean;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isPediatrician:Ljava/lang/Boolean;

    return-void
.end method

.method public setPmjy(Ljava/lang/Boolean;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isPmjy:Ljava/lang/Boolean;

    return-void
.end method

.method public setReferralFacility(Ljava/lang/Boolean;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isReferralFacility:Ljava/lang/Boolean;

    return-void
.end method

.method public setSncu(Ljava/lang/Boolean;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isSncu:Ljava/lang/Boolean;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/Long;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->typeId:Ljava/lang/Long;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->typeName:Ljava/lang/String;

    return-void
.end method

.method public setUsgFacility(Ljava/lang/Boolean;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isUsgFacility:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthInfrastructureBean{actualId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->actualId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', englishName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->englishName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', contactPersonName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->contactPersonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', contactNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->contactNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', locationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->locationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->typeId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isNrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isNrc:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCmtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isCmtc:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFru="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isFru:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSncu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isSncu:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChiranjeevi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isChiranjeevi:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBalsaka="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBalsaka:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPmjy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isPmjy:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBloodBank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isBloodBank:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isGynaec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isGynaec:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPediatrician="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isPediatrician:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCpConfirmationCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->isCpConfirmationCenter:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forNcd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->forNcd:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', modifiedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->modifiedOn:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
