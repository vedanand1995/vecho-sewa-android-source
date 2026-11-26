.class public Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;
.super Ljava/lang/Object;
.source "RchVillageProfileDataBean.java"


# instance fields
.field private ambulanceNumber:Ljava/lang/String;

.field private anmDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

.field private ashaDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private block:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

.field private chc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

.field private district:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

.field private fhwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

.field private fruDetail:Ljava/lang/String;

.field private helplineNumber:Ljava/lang/String;

.field private infantChildCount:Ljava/lang/Integer;

.field private mphwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

.field private nationalCallCentreNumber:Ljava/lang/String;

.field private nearbyHospitalDetail:Ljava/lang/String;

.field private phc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

.field private pregnantWomenCount:Ljava/lang/Integer;

.field private state:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

.field private subCentre:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

.field private totalEligibleCouple:Ljava/lang/Integer;

.field private totalPopulation:Ljava/lang/Integer;

.field private transportationNumber:Ljava/lang/String;

.field private village:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmbulanceNumber()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->ambulanceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAnmDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->anmDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    return-object v0
.end method

.method public getAshaDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->ashaDetail:Ljava/util/List;

    return-object v0
.end method

.method public getBlock()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->block:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-object v0
.end method

.method public getChc()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->chc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-object v0
.end method

.method public getDistrict()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->district:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-object v0
.end method

.method public getFhwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->fhwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    return-object v0
.end method

.method public getFruDetail()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->fruDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getHelplineNumber()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->helplineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getInfantChildCount()Ljava/lang/Integer;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->infantChildCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMphwDetail()Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->mphwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    return-object v0
.end method

.method public getNationalCallCentreNumber()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->nationalCallCentreNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNearbyHospitalDetail()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->nearbyHospitalDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getPhc()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->phc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-object v0
.end method

.method public getPregnantWomenCount()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->pregnantWomenCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getState()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->state:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-object v0
.end method

.method public getSubCentre()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->subCentre:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-object v0
.end method

.method public getTotalEligibleCouple()Ljava/lang/Integer;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->totalEligibleCouple:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalPopulation()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->totalPopulation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTransportationNumber()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->transportationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVillage()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->village:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-object v0
.end method

.method public setAmbulanceNumber(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->ambulanceNumber:Ljava/lang/String;

    return-void
.end method

.method public setAnmDetail(Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->anmDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    return-void
.end method

.method public setAshaDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;",
            ">;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->ashaDetail:Ljava/util/List;

    return-void
.end method

.method public setBlock(Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->block:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-void
.end method

.method public setChc(Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->chc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-void
.end method

.method public setDistrict(Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->district:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-void
.end method

.method public setFhwDetail(Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->fhwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    return-void
.end method

.method public setFruDetail(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->fruDetail:Ljava/lang/String;

    return-void
.end method

.method public setHelplineNumber(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->helplineNumber:Ljava/lang/String;

    return-void
.end method

.method public setInfantChildCount(Ljava/lang/Integer;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->infantChildCount:Ljava/lang/Integer;

    return-void
.end method

.method public setMphwDetail(Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->mphwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    return-void
.end method

.method public setNationalCallCentreNumber(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->nationalCallCentreNumber:Ljava/lang/String;

    return-void
.end method

.method public setNearbyHospitalDetail(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->nearbyHospitalDetail:Ljava/lang/String;

    return-void
.end method

.method public setPhc(Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->phc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-void
.end method

.method public setPregnantWomenCount(Ljava/lang/Integer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->pregnantWomenCount:Ljava/lang/Integer;

    return-void
.end method

.method public setState(Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->state:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-void
.end method

.method public setSubCentre(Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->subCentre:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-void
.end method

.method public setTotalEligibleCouple(Ljava/lang/Integer;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->totalEligibleCouple:Ljava/lang/Integer;

    return-void
.end method

.method public setTotalPopulation(Ljava/lang/Integer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->totalPopulation:Ljava/lang/Integer;

    return-void
.end method

.method public setTransportationNumber(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->transportationNumber:Ljava/lang/String;

    return-void
.end method

.method public setVillage(Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->village:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RchVillageProfileDataBean{, \nstate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->state:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ndistrict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->district:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nblock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->block:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nchc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->chc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nphc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->phc:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nsubCentre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->subCentre:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nvillage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->village:Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ntotalPopulation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->totalPopulation:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ntotalEligibleCouple="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->totalEligibleCouple:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \npregnantWomenCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->pregnantWomenCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ninfantChildCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->infantChildCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nashaDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->ashaDetail:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nanmDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->anmDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nfhwDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->fhwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nmphwDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->mphwDetail:Lcom/argusoft/sewa/android/app/databean/WorkerDetailDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nnearbyHospitalDetail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->nearbyHospitalDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \nfruDetail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->fruDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \nambulanceNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->ambulanceNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \ntransportationNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->transportationNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \nnationalCallCentreNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->nationalCallCentreNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \nhelplineNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->helplineNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
