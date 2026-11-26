.class public Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;
.super Ljava/lang/Object;
.source "ClientPNCVisitMobDataBean.java"


# instance fields
.field private abnormalBehaviourFlag:Ljava/lang/Boolean;

.field private bleedingFlag:Ljava/lang/Boolean;

.field private breastProblemFlag:Ljava/lang/String;

.field private breastfeedingDifficultyFlag:Ljava/lang/Boolean;

.field private byUser:J

.field private childPNCVisitMobDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private client:J

.field private createdOn:Ljava/util/Date;

.field private familyFlag:Ljava/lang/Boolean;

.field private feverFlag:Ljava/lang/Boolean;

.field private foulSmellFlag:Ljava/lang/Boolean;

.field private headacheFlag:Ljava/lang/Boolean;

.field private healthId:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private imageName:Ljava/lang/String;

.field private isActive:Ljava/lang/Boolean;

.field private isArchive:Ljava/lang/Boolean;

.field private isInterimVisit:Ljava/lang/Boolean;

.field private isMotherAlive:Ljava/lang/Boolean;

.field private lastModifiedBy:Ljava/lang/String;

.field private lastModifiedOn:Ljava/util/Date;

.field private motherName:Ljava/lang/String;

.field private padsCount:Ljava/lang/Integer;

.field private pcmTabletStatus:Ljava/lang/String;

.field private presentFlag:Ljava/lang/Boolean;

.field private problemPresent:Ljava/lang/String;

.field private sleepFlag:Ljava/lang/Boolean;

.field private startIfaFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbnormalBehaviourFlag()Ljava/lang/Boolean;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->abnormalBehaviourFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBleedingFlag()Ljava/lang/Boolean;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->bleedingFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBreastProblemFlag()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->breastProblemFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getBreastfeedingDifficultyFlag()Ljava/lang/Boolean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->breastfeedingDifficultyFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getByUser()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->byUser:J

    return-wide v0
.end method

.method public getChildPNCVisitMobDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->childPNCVisitMobDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getClient()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->client:J

    return-wide v0
.end method

.method public getCreatedOn()Ljava/util/Date;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->createdOn:Ljava/util/Date;

    return-object v0
.end method

.method public getFamilyFlag()Ljava/lang/Boolean;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->familyFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFeverFlag()Ljava/lang/Boolean;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->feverFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFoulSmellFlag()Ljava/lang/Boolean;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->foulSmellFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHeadacheFlag()Ljava/lang/Boolean;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->headacheFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHealthId()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->healthId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInterimVisit()Ljava/lang/Boolean;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isInterimVisit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsMotherAlive()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isMotherAlive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastModifiedBy()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->lastModifiedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedOn()Ljava/util/Date;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->lastModifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getMotherName()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->motherName:Ljava/lang/String;

    return-object v0
.end method

.method public getPadsCount()Ljava/lang/Integer;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->padsCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPcmTabletStatus()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->pcmTabletStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentFlag()Ljava/lang/Boolean;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->presentFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProblemPresent()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->problemPresent:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepFlag()Ljava/lang/Boolean;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->sleepFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStartIfaFlag()Ljava/lang/Boolean;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->startIfaFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isIsActive()Ljava/lang/Boolean;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isIsArchive()Ljava/lang/Boolean;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isArchive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAbnormalBehaviourFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->abnormalBehaviourFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setBleedingFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->bleedingFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setBreastProblemFlag(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->breastProblemFlag:Ljava/lang/String;

    return-void
.end method

.method public setBreastfeedingDifficultyFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->breastfeedingDifficultyFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setByUser(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->byUser:J

    return-void
.end method

.method public setChildPNCVisitMobDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->childPNCVisitMobDataBeans:Ljava/util/List;

    return-void
.end method

.method public setClient(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->client:J

    return-void
.end method

.method public setCreatedOn(Ljava/util/Date;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->createdOn:Ljava/util/Date;

    return-void
.end method

.method public setFamilyFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->familyFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setFeverFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->feverFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setFoulSmellFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->foulSmellFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setHeadacheFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->headacheFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setHealthId(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->healthId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->imageName:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsArchive(Ljava/lang/Boolean;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isArchive:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsInterimVisit(Ljava/lang/Boolean;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isInterimVisit:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsMotherAlive(Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isMotherAlive:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastModifiedBy(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->lastModifiedBy:Ljava/lang/String;

    return-void
.end method

.method public setLastModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->lastModifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setMotherName(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->motherName:Ljava/lang/String;

    return-void
.end method

.method public setPadsCount(Ljava/lang/Integer;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->padsCount:Ljava/lang/Integer;

    return-void
.end method

.method public setPcmTabletStatus(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->pcmTabletStatus:Ljava/lang/String;

    return-void
.end method

.method public setPresentFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->presentFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setProblemPresent(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->problemPresent:Ljava/lang/String;

    return-void
.end method

.method public setSleepFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->sleepFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setStartIfaFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->startIfaFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientPNCVisitMobDataBean{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->client:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", presentFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->presentFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", familyFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->familyFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pcmTabletStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->pcmTabletStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startIfaFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->startIfaFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bleedingFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->bleedingFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", padsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->padsCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foulSmellFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->foulSmellFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sleepFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->sleepFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", abnormalBehaviourFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->abnormalBehaviourFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feverFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->feverFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headacheFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->headacheFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", breastfeedingDifficultyFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->breastfeedingDifficultyFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", problemPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->problemPresent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", breastProblemFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->breastProblemFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isArchive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isArchive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->lastModifiedBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->createdOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->imageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInterimVisit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->isInterimVisit:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->lastModifiedOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", byUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->byUser:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", childPNCVisitMobDataBeans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->childPNCVisitMobDataBeans:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", motherName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->motherName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
