.class public Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;
.super Ljava/lang/Object;
.source "RbskScreeningDetailDto.java"


# instance fields
.field private apgar1:Ljava/lang/String;

.field private apgar5:Ljava/lang/String;

.field private assymetricalTonic:Ljava/lang/String;

.field private babyTone:Ljava/lang/String;

.field private deliveryInfraId:Ljava/lang/Integer;

.field private doneFrom:Ljava/lang/String;

.field private familyId:Ljava/lang/Integer;

.field private graspReflex:Ljava/lang/String;

.field private headCircumference:Ljava/lang/Integer;

.field private length:Ljava/lang/Integer;

.field private locationId:Ljava/lang/Integer;

.field private memberId:Ljava/lang/Integer;

.field private moroReflex:Ljava/lang/String;

.field private plantarReflex:Ljava/lang/String;

.field private rbskScreeningDefectDto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;",
            ">;"
        }
    .end annotation
.end field

.field private referralDone:Ljava/lang/Boolean;

.field private referralPlace:Ljava/lang/Integer;

.field private rootReflex:Ljava/lang/String;

.field private screeningDate:Ljava/util/Date;

.field private stepReflex:Ljava/lang/String;

.field private suckingReflex:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private visibleDefects:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApgar1()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->apgar1:Ljava/lang/String;

    return-object v0
.end method

.method public getApgar5()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->apgar5:Ljava/lang/String;

    return-object v0
.end method

.method public getAssymetricalTonic()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->assymetricalTonic:Ljava/lang/String;

    return-object v0
.end method

.method public getBabyTone()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->babyTone:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryInfraId()Ljava/lang/Integer;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->deliveryInfraId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDoneFrom()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->doneFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->familyId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGraspReflex()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->graspReflex:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadCircumference()Ljava/lang/Integer;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->headCircumference:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLength()Ljava/lang/Integer;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->length:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->memberId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMoroReflex()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->moroReflex:Ljava/lang/String;

    return-object v0
.end method

.method public getPlantarReflex()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->plantarReflex:Ljava/lang/String;

    return-object v0
.end method

.method public getRbskScreeningDefectDto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->rbskScreeningDefectDto:Ljava/util/List;

    return-object v0
.end method

.method public getReferralDone()Ljava/lang/Boolean;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->referralDone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReferralPlace()Ljava/lang/Integer;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->referralPlace:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRootReflex()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->rootReflex:Ljava/lang/String;

    return-object v0
.end method

.method public getScreeningDate()Ljava/util/Date;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->screeningDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStepReflex()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->stepReflex:Ljava/lang/String;

    return-object v0
.end method

.method public getSuckingReflex()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->suckingReflex:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleDefects()Ljava/lang/Boolean;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->visibleDefects:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setApgar1(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->apgar1:Ljava/lang/String;

    return-void
.end method

.method public setApgar5(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->apgar5:Ljava/lang/String;

    return-void
.end method

.method public setAssymetricalTonic(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->assymetricalTonic:Ljava/lang/String;

    return-void
.end method

.method public setBabyTone(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->babyTone:Ljava/lang/String;

    return-void
.end method

.method public setDeliveryInfraId(Ljava/lang/Integer;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->deliveryInfraId:Ljava/lang/Integer;

    return-void
.end method

.method public setDoneFrom(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->doneFrom:Ljava/lang/String;

    return-void
.end method

.method public setFamilyId(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->familyId:Ljava/lang/Integer;

    return-void
.end method

.method public setGraspReflex(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->graspReflex:Ljava/lang/String;

    return-void
.end method

.method public setHeadCircumference(Ljava/lang/Integer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->headCircumference:Ljava/lang/Integer;

    return-void
.end method

.method public setLength(Ljava/lang/Integer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->length:Ljava/lang/Integer;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setMemberId(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->memberId:Ljava/lang/Integer;

    return-void
.end method

.method public setMoroReflex(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->moroReflex:Ljava/lang/String;

    return-void
.end method

.method public setPlantarReflex(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->plantarReflex:Ljava/lang/String;

    return-void
.end method

.method public setRbskScreeningDefectDto(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RbskDefectDetailDto;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->rbskScreeningDefectDto:Ljava/util/List;

    return-void
.end method

.method public setReferralDone(Ljava/lang/Boolean;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->referralDone:Ljava/lang/Boolean;

    return-void
.end method

.method public setReferralPlace(Ljava/lang/Integer;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->referralPlace:Ljava/lang/Integer;

    return-void
.end method

.method public setRootReflex(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->rootReflex:Ljava/lang/String;

    return-void
.end method

.method public setScreeningDate(Ljava/util/Date;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->screeningDate:Ljava/util/Date;

    return-void
.end method

.method public setStepReflex(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->stepReflex:Ljava/lang/String;

    return-void
.end method

.method public setSuckingReflex(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->suckingReflex:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->token:Ljava/lang/String;

    return-void
.end method

.method public setVisibleDefects(Ljava/lang/Boolean;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->visibleDefects:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RbskScreeningDetailDto{token=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', memberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->memberId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", familyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->familyId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->locationId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screeningDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->screeningDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", doneFrom=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->doneFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', rbskScreeningDefectDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->rbskScreeningDefectDto:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apgar1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->apgar1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', apgar5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->apgar5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->length:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headCircumference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->headCircumference:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", babyTone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->babyTone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', moroReflex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->moroReflex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', stepReflex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->stepReflex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', plantarReflex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->plantarReflex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', rootReflex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->rootReflex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', assymetricalTonic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->assymetricalTonic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', suckingReflex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->suckingReflex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', graspReflex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->graspReflex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', visibleDefects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->visibleDefects:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referralDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->referralDone:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referralPlace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->referralPlace:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryInfraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RbskScreeningDetailDto;->deliveryInfraId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
