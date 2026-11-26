.class public Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;
.super Ljava/lang/Object;
.source "DataBeanToIdentifyPNCMorbidities.java"


# instance fields
.field private abdomen:Ljava/lang/String;

.field private abnormalTalkOrBehaviourOrMoodChanges:Ljava/lang/Boolean;

.field private ageOfChild:Ljava/lang/Long;

.field private anyDifficultyInBreastfeeding:Ljava/lang/Boolean;

.field private anyDifficultyInBreastfeedingLastStatus:Z

.field private anySkinProblems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private areBabyHandsAndFeetColdToTouch:Ljava/lang/Boolean;

.field private babyHasWateryOrLooseMotion:Ljava/lang/Boolean;

.field private beneficiaryName:Ljava/lang/String;

.field private beneficiaryType:Ljava/lang/String;

.field private chestIndrawing:Ljava/lang/Boolean;

.field private consciousness:Ljava/lang/String;

.field private cry:Ljava/lang/String;

.field private deliveryDate:Ljava/lang/Long;

.field private doesBabyChinTouchTheBreast:Ljava/lang/String;

.field private doesMotherHaveAnyOfFollowingOnBREAST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private doesMotherHaveAnyOfFollowingProblems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private feverForMother:Ljava/lang/Boolean;

.field private foulSmellingDischarge:Ljava/lang/Boolean;

.field private hasHeadacheWithVisualDisturbances:Ljava/lang/Boolean;

.field private healthId:Ljava/lang/String;

.field private howAreBabyEyes:Ljava/lang/String;

.field private howIsBabyCry:Ljava/lang/String;

.field private howIsBabyCryLastStatus:Z

.field private howIsBabySuckling:Ljava/lang/String;

.field private howIsBabySucklingLastStatus:Z

.field private howIsTheSkinOfTheBaby:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private howsTheBabyConsciousness:Ljava/lang/String;

.field private isAreolaMoreAboveTheMouthAndLessBeneathTheMouth:Ljava/lang/String;

.field private isBeneficiaryAlive:Z

.field private isChildFirstPncDone:Z

.field private isLowerLipTurnedOutward:Ljava/lang/String;

.field private isMouthWidelyOpen:Ljava/lang/String;

.field private isThereBleedingFromAnyPartOfTheBody:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lmpDate:Ljava/lang/Long;

.field private newBornWeight:Ljava/lang/Float;

.field private noOfPadsChangedIn24Hours:Ljava/lang/Integer;

.field private rateOfRespiration:Ljava/lang/Integer;

.field private skinPustules:Ljava/lang/Boolean;

.field private temperature:Ljava/lang/Float;

.field private umbilicus:Ljava/lang/String;

.field private wasBabyFedLessThanUsual:Ljava/lang/String;

.field private weightOfChild:Ljava/lang/Float;

.field private whenDidBabyCry:Ljava/lang/String;

.field private whetherBabyFedLessLastStatus:Z

.field private whetherBabyLimbsAndNeckMoreLimpThanBefore:Ljava/lang/String;

.field private whetherBabyLimbsNeckLastState:Z

.field private whetherBabyVomits:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->healthId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isBeneficiaryAlive:Z

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyLimbsNeckLastState:Z

    .line 82
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anyDifficultyInBreastfeedingLastStatus:Z

    .line 83
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyFedLessLastStatus:Z

    .line 84
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabySucklingLastStatus:Z

    .line 85
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabyCryLastStatus:Z

    return-void
.end method


# virtual methods
.method public getAbdomen()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->abdomen:Ljava/lang/String;

    return-object v0
.end method

.method public getAbnormalTalkOrBehaviourOrMoodChanges()Ljava/lang/Boolean;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->abnormalTalkOrBehaviourOrMoodChanges:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAgeOfChild()Ljava/lang/Long;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->ageOfChild:Ljava/lang/Long;

    return-object v0
.end method

.method public getAnyDifficultyInBreastfeeding()Ljava/lang/Boolean;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anyDifficultyInBreastfeeding:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAnyDifficultyInBreastfeedingLastStatus()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anyDifficultyInBreastfeedingLastStatus:Z

    return v0
.end method

.method public getAnySkinProblems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anySkinProblems:Ljava/util/List;

    return-object v0
.end method

.method public getAreBabyHandsAndFeetColdToTouch()Ljava/lang/Boolean;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->areBabyHandsAndFeetColdToTouch:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBabyHasWateryOrLooseMotion()Ljava/lang/Boolean;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->babyHasWateryOrLooseMotion:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBeneficiaryName()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryName:Ljava/lang/String;

    return-object v0
.end method

.method public getBeneficiaryType()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getChestIndrawing()Ljava/lang/Boolean;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->chestIndrawing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getConsciousness()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->consciousness:Ljava/lang/String;

    return-object v0
.end method

.method public getCry()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->cry:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryDate()Ljava/lang/Long;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->deliveryDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getDoesBabyChinTouchTheBreast()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesBabyChinTouchTheBreast:Ljava/lang/String;

    return-object v0
.end method

.method public getDoesMotherHaveAnyOfFollowingOnBREAST()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesMotherHaveAnyOfFollowingOnBREAST:Ljava/util/List;

    return-object v0
.end method

.method public getDoesMotherHaveAnyOfFollowingProblems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesMotherHaveAnyOfFollowingProblems:Ljava/util/List;

    return-object v0
.end method

.method public getFeverForMother()Ljava/lang/Boolean;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->feverForMother:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFoulSmellingDischarge()Ljava/lang/Boolean;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->foulSmellingDischarge:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHasHeadacheWithVisualDisturbances()Ljava/lang/Boolean;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->hasHeadacheWithVisualDisturbances:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHealthId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->healthId:Ljava/lang/String;

    return-object v0
.end method

.method public getHowAreBabyEyes()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howAreBabyEyes:Ljava/lang/String;

    return-object v0
.end method

.method public getHowIsBabyCry()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabyCry:Ljava/lang/String;

    return-object v0
.end method

.method public getHowIsBabyCryLastStatus()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabyCryLastStatus:Z

    return v0
.end method

.method public getHowIsBabySuckling()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabySuckling:Ljava/lang/String;

    return-object v0
.end method

.method public getHowIsBabySucklingLastStatus()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabySucklingLastStatus:Z

    return v0
.end method

.method public getHowIsTheSkinOfTheBaby()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsTheSkinOfTheBaby:Ljava/util/List;

    return-object v0
.end method

.method public getHowsTheBabyConsciousness()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howsTheBabyConsciousness:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAreolaMoreAboveTheMouthAndLessBeneathTheMouth()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isAreolaMoreAboveTheMouthAndLessBeneathTheMouth:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBeneficiaryAlive()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isBeneficiaryAlive:Z

    return v0
.end method

.method public getIsChildFirstPncDone()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isChildFirstPncDone:Z

    return v0
.end method

.method public getIsLowerLipTurnedOutward()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isLowerLipTurnedOutward:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMouthWidelyOpen()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isMouthWidelyOpen:Ljava/lang/String;

    return-object v0
.end method

.method public getIsThereBleedingFromAnyPartOfTheBody()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isThereBleedingFromAnyPartOfTheBody:Ljava/util/List;

    return-object v0
.end method

.method public getLmpDate()Ljava/lang/Long;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->lmpDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getNewBornWeight()Ljava/lang/Float;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->newBornWeight:Ljava/lang/Float;

    return-object v0
.end method

.method public getNoOfPadsChangedIn24Hours()Ljava/lang/Integer;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->noOfPadsChangedIn24Hours:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRateOfRespiration()Ljava/lang/Integer;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->rateOfRespiration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSkinPustules()Ljava/lang/Boolean;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->skinPustules:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/Float;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->temperature:Ljava/lang/Float;

    return-object v0
.end method

.method public getUmbilicus()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->umbilicus:Ljava/lang/String;

    return-object v0
.end method

.method public getWasBabyFedLessThanUsual()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->wasBabyFedLessThanUsual:Ljava/lang/String;

    return-object v0
.end method

.method public getWeightOfChild()Ljava/lang/Float;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->weightOfChild:Ljava/lang/Float;

    return-object v0
.end method

.method public getWhenDidBabyCry()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whenDidBabyCry:Ljava/lang/String;

    return-object v0
.end method

.method public getWhetherBabyFedLessLastStatus()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyFedLessLastStatus:Z

    return v0
.end method

.method public getWhetherBabyLimbsAndNeckMoreLimpThanBefore()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyLimbsAndNeckMoreLimpThanBefore:Ljava/lang/String;

    return-object v0
.end method

.method public getWhetherBabyLimbsNeckLastState()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyLimbsNeckLastState:Z

    return v0
.end method

.method public getWhetherBabyVomits()Ljava/lang/Boolean;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyVomits:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAbdomen(Ljava/lang/String;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->abdomen:Ljava/lang/String;

    return-void
.end method

.method public setAbnormalTalkOrBehaviourOrMoodChanges(Ljava/lang/Boolean;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->abnormalTalkOrBehaviourOrMoodChanges:Ljava/lang/Boolean;

    return-void
.end method

.method public setAgeOfChild(Ljava/lang/Long;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->ageOfChild:Ljava/lang/Long;

    return-void
.end method

.method public setAnyDifficultyInBreastfeeding(Ljava/lang/Boolean;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anyDifficultyInBreastfeeding:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnyDifficultyInBreastfeedingLastStatus(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anyDifficultyInBreastfeedingLastStatus:Z

    return-void
.end method

.method public setAnySkinProblems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anySkinProblems:Ljava/util/List;

    return-void
.end method

.method public setAreBabyHandsAndFeetColdToTouch(Ljava/lang/Boolean;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->areBabyHandsAndFeetColdToTouch:Ljava/lang/Boolean;

    return-void
.end method

.method public setBabyHasWateryOrLooseMotion(Ljava/lang/Boolean;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->babyHasWateryOrLooseMotion:Ljava/lang/Boolean;

    return-void
.end method

.method public setBeneficiaryName(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryName:Ljava/lang/String;

    return-void
.end method

.method public setBeneficiaryType(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryType:Ljava/lang/String;

    return-void
.end method

.method public setChestIndrawing(Ljava/lang/Boolean;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->chestIndrawing:Ljava/lang/Boolean;

    return-void
.end method

.method public setConsciousness(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->consciousness:Ljava/lang/String;

    return-void
.end method

.method public setCry(Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->cry:Ljava/lang/String;

    return-void
.end method

.method public setDeliveryDate(Ljava/lang/Long;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->deliveryDate:Ljava/lang/Long;

    return-void
.end method

.method public setDoesBabyChinTouchTheBreast(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesBabyChinTouchTheBreast:Ljava/lang/String;

    return-void
.end method

.method public setDoesMotherHaveAnyOfFollowingOnBREAST(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesMotherHaveAnyOfFollowingOnBREAST:Ljava/util/List;

    return-void
.end method

.method public setDoesMotherHaveAnyOfFollowingProblems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesMotherHaveAnyOfFollowingProblems:Ljava/util/List;

    return-void
.end method

.method public setFeverForMother(Ljava/lang/Boolean;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->feverForMother:Ljava/lang/Boolean;

    return-void
.end method

.method public setFoulSmellingDischarge(Ljava/lang/Boolean;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->foulSmellingDischarge:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasHeadacheWithVisualDisturbances(Ljava/lang/Boolean;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->hasHeadacheWithVisualDisturbances:Ljava/lang/Boolean;

    return-void
.end method

.method public setHealthId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->healthId:Ljava/lang/String;

    return-void
.end method

.method public setHowAreBabyEyes(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howAreBabyEyes:Ljava/lang/String;

    return-void
.end method

.method public setHowIsBabyCry(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabyCry:Ljava/lang/String;

    return-void
.end method

.method public setHowIsBabyCryLastStatus(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabyCryLastStatus:Z

    return-void
.end method

.method public setHowIsBabySuckling(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabySuckling:Ljava/lang/String;

    return-void
.end method

.method public setHowIsBabySucklingLastStatus(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabySucklingLastStatus:Z

    return-void
.end method

.method public setHowIsTheSkinOfTheBaby(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsTheSkinOfTheBaby:Ljava/util/List;

    return-void
.end method

.method public setHowsTheBabyConsciousness(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howsTheBabyConsciousness:Ljava/lang/String;

    return-void
.end method

.method public setIsAreolaMoreAboveTheMouthAndLessBeneathTheMouth(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isAreolaMoreAboveTheMouthAndLessBeneathTheMouth:Ljava/lang/String;

    return-void
.end method

.method public setIsBeneficiaryAlive(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isBeneficiaryAlive:Z

    return-void
.end method

.method public setIsChildFirstPncDone(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isChildFirstPncDone:Z

    return-void
.end method

.method public setIsLowerLipTurnedOutward(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isLowerLipTurnedOutward:Ljava/lang/String;

    return-void
.end method

.method public setIsMouthWidelyOpen(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isMouthWidelyOpen:Ljava/lang/String;

    return-void
.end method

.method public setIsThereBleedingFromAnyPartOfTheBody(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isThereBleedingFromAnyPartOfTheBody:Ljava/util/List;

    return-void
.end method

.method public setLmpDate(Ljava/lang/Long;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->lmpDate:Ljava/lang/Long;

    return-void
.end method

.method public setNewBornWeight(Ljava/lang/Float;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->newBornWeight:Ljava/lang/Float;

    return-void
.end method

.method public setNoOfPadsChangedIn24Hours(Ljava/lang/Integer;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->noOfPadsChangedIn24Hours:Ljava/lang/Integer;

    return-void
.end method

.method public setRateOfRespiration(Ljava/lang/Integer;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->rateOfRespiration:Ljava/lang/Integer;

    return-void
.end method

.method public setSkinPustules(Ljava/lang/Boolean;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->skinPustules:Ljava/lang/Boolean;

    return-void
.end method

.method public setTemperature(Ljava/lang/Float;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->temperature:Ljava/lang/Float;

    return-void
.end method

.method public setUmbilicus(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->umbilicus:Ljava/lang/String;

    return-void
.end method

.method public setWasBabyFedLessThanUsual(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->wasBabyFedLessThanUsual:Ljava/lang/String;

    return-void
.end method

.method public setWeightOfChild(Ljava/lang/Float;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->weightOfChild:Ljava/lang/Float;

    return-void
.end method

.method public setWhenDidBabyCry(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whenDidBabyCry:Ljava/lang/String;

    return-void
.end method

.method public setWhetherBabyFedLessLastStatus(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyFedLessLastStatus:Z

    return-void
.end method

.method public setWhetherBabyLimbsAndNeckMoreLimpThanBefore(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyLimbsAndNeckMoreLimpThanBefore:Ljava/lang/String;

    return-void
.end method

.method public setWhetherBabyLimbsNeckLastState(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyLimbsNeckLastState:Z

    return-void
.end method

.method public setWhetherBabyVomits(Ljava/lang/Boolean;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyVomits:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataBeanToIdentifyPNCMorbidities{healthId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->healthId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', beneficiaryName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', beneficiaryType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->beneficiaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isChildFirstPncDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isChildFirstPncDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBeneficiaryAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isBeneficiaryAlive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", babyHasWateryOrLooseMotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->babyHasWateryOrLooseMotion:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noOfPadsChangedIn24Hours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->noOfPadsChangedIn24Hours:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foulSmellingDischarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->foulSmellingDischarge:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feverForMother="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->feverForMother:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", abnormalTalkOrBehaviourOrMoodChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->abnormalTalkOrBehaviourOrMoodChanges:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasHeadacheWithVisualDisturbances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->hasHeadacheWithVisualDisturbances:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anyDifficultyInBreastfeeding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anyDifficultyInBreastfeeding:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", areBabyHandsAndFeetColdToTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->areBabyHandsAndFeetColdToTouch:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->temperature:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rateOfRespiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->rateOfRespiration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", howIsTheSkinOfTheBaby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsTheSkinOfTheBaby:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isThereBleedingFromAnyPartOfTheBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isThereBleedingFromAnyPartOfTheBody:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skinPustules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->skinPustules:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", umbilicus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->umbilicus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', whenDidBabyCry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whenDidBabyCry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', doesMotherHaveAnyOfFollowingProblems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesMotherHaveAnyOfFollowingProblems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ageOfChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->ageOfChild:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weightOfChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->weightOfChild:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", howsTheBabyConsciousness=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howsTheBabyConsciousness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', consciousness=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->consciousness:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', wasBabyFedLessThanUsual=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->wasBabyFedLessThanUsual:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', howIsBabySuckling=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabySuckling:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', howIsBabyCry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabyCry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', cry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->cry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', abdomen=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->abdomen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', chestIndrawing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->chestIndrawing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", whetherBabyVomits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyVomits:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anySkinProblems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anySkinProblems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", doesMotherHaveAnyOfFollowingOnBREAST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesMotherHaveAnyOfFollowingOnBREAST:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->deliveryDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lmpDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->lmpDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", doesBabyChinTouchTheBreast=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->doesBabyChinTouchTheBreast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isMouthWidelyOpen=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isMouthWidelyOpen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isLowerLipTurnedOutward=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isLowerLipTurnedOutward:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isAreolaMoreAboveTheMouthAndLessBeneathTheMouth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->isAreolaMoreAboveTheMouthAndLessBeneathTheMouth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', howAreBabyEyes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howAreBabyEyes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', whetherBabyLimbsAndNeckMoreLimpThanBefore=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyLimbsAndNeckMoreLimpThanBefore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', whetherBabyLimbsNeckLastState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyLimbsNeckLastState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", anyDifficultyInBreastfeedingLastStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->anyDifficultyInBreastfeedingLastStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whetherBabyFedLessLastStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->whetherBabyFedLessLastStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", howIsBabySucklingLastStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabySucklingLastStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", howIsBabyCryLastStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->howIsBabyCryLastStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newBornWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->newBornWeight:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
