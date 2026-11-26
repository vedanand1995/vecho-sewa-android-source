.class public Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "CovidTravellersInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private address:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private age:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dateOfDeparture:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dateOfReceipt:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private districtId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private districtName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private flightNo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mobileNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private observation:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pinCode:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private trackingStartDate:Ljava/util/Date;
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

    .line 264
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->isActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/Integer;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->age:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfDeparture()Ljava/util/Date;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->dateOfDeparture:Ljava/util/Date;

    return-object v0
.end method

.method public getDateOfReceipt()Ljava/util/Date;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->dateOfReceipt:Ljava/util/Date;

    return-object v0
.end method

.method public getDistrictId()Ljava/lang/Integer;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->districtId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->districtName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightNo()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->flightNo:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthStatus()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->healthStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->memberId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObservation()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->observation:Ljava/lang/String;

    return-object v0
.end method

.method public getPinCode()Ljava/lang/Integer;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->pinCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackingStartDate()Ljava/util/Date;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->trackingStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 269
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->isActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setAge(Ljava/lang/Integer;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->age:Ljava/lang/Integer;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setDateOfDeparture(Ljava/util/Date;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->dateOfDeparture:Ljava/util/Date;

    return-void
.end method

.method public setDateOfReceipt(Ljava/util/Date;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->dateOfReceipt:Ljava/util/Date;

    return-void
.end method

.method public setDistrictId(Ljava/lang/Integer;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->districtId:Ljava/lang/Integer;

    return-void
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->districtName:Ljava/lang/String;

    return-void
.end method

.method public setFlightNo(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->flightNo:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setHealthStatus(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->healthStatus:Ljava/lang/String;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setMemberId(Ljava/lang/Integer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->memberId:Ljava/lang/Integer;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setObservation(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->observation:Ljava/lang/String;

    return-void
.end method

.method public setPinCode(Ljava/lang/Integer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->pinCode:Ljava/lang/Integer;

    return-void
.end method

.method public setTrackingStartDate(Ljava/util/Date;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->trackingStartDate:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CovidTravellersInfoBean{actualId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->actualId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", memberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->memberId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->locationId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', pinCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->pinCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mobileNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->modifiedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flightNo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->flightNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->age:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', districtId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->districtId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", districtName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->districtName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dateOfDeparture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->dateOfDeparture:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateOfReceipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->dateOfReceipt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", healthStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->healthStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', observation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->observation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', trackingStartDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->trackingStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
