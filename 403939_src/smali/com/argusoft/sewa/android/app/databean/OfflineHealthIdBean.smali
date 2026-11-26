.class public Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;
.super Ljava/lang/Object;
.source "OfflineHealthIdBean.java"


# instance fields
.field private aadhar:Ljava/lang/String;

.field private audiFileName:Ljava/lang/String;

.field private consentValues:Ljava/lang/String;

.field private createdBy:Ljava/lang/Long;

.field private createdOn:Ljava/util/Date;

.field private dob:Ljava/lang/String;

.field private errorCode:Ljava/lang/Integer;

.field private errorMessage:Ljava/lang/String;

.field private familyId:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private memberId:Ljava/lang/Integer;

.field private mobile:Ljava/lang/String;

.field private modifiedBy:Ljava/lang/Long;

.field private modifiedOn:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->aadhar:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->dob:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->gender:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->mobile:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->name:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->audiFileName:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->memberId:Ljava/lang/Integer;

    .line 56
    iput-object p8, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->consentValues:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    .line 193
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->aadhar:Ljava/lang/String;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->aadhar:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->dob:Ljava/lang/String;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->dob:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->gender:Ljava/lang/String;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->gender:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->mobile:Ljava/lang/String;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->mobile:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->audiFileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->audiFileName:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAadhar()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->aadhar:Ljava/lang/String;

    return-object v0
.end method

.method public getAudiFileName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->audiFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentValues()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->consentValues:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/Long;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->createdBy:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->createdOn:Ljava/util/Date;

    return-object v0
.end method

.method public getDob()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->dob:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->errorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Integer;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->memberId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedBy()Ljava/lang/Long;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->modifiedBy:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->aadhar:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->dob:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->gender:Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->mobile:Ljava/lang/String;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->audiFileName:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAadhar(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->aadhar:Ljava/lang/String;

    return-void
.end method

.method public setAudiFileName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->audiFileName:Ljava/lang/String;

    return-void
.end method

.method public setConsentValues(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->consentValues:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/Long;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->createdBy:Ljava/lang/Long;

    return-void
.end method

.method public setCreatedOn(Ljava/util/Date;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->createdOn:Ljava/util/Date;

    return-void
.end method

.method public setDob(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->dob:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/Integer;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->errorCode:Ljava/lang/Integer;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/Integer;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->memberId:Ljava/lang/Integer;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setModifiedBy(Ljava/lang/Long;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->modifiedBy:Ljava/lang/Long;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->userId:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineHealthIdBean{aadhar=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->aadhar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dob=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->dob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', gender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mobile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', audiFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->audiFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", familyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->familyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', memberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->memberId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->createdBy:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->createdOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->modifiedBy:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modifiedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->modifiedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consentValues=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;->consentValues:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
