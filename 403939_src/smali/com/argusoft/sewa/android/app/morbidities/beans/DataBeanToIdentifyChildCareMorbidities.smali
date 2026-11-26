.class public Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;
.super Ljava/lang/Object;
.source "DataBeanToIdentifyChildCareMorbidities.java"


# instance fields
.field private ageOfChild:Ljava/lang/Long;

.field private beneficiaryName:Ljava/lang/String;

.field private beneficiaryType:Ljava/lang/String;

.field private bloodInStools:Ljava/lang/Boolean;

.field private childHadConvulsion:Ljava/lang/Boolean;

.field private childHaveChestIndrawing:Ljava/lang/Boolean;

.field private childNotAbleToDrinkOrBreastfeed:Ljava/lang/Boolean;

.field private childVomitsEverything:Ljava/lang/Boolean;

.field private doesChildHaveCoughOrDifficultBreathing:Ljava/lang/Boolean;

.field private doesSkinGoesBackVerySlowly:Ljava/lang/String;

.field private doesTheChildHavePalmerPoller:Ljava/lang/String;

.field private edemaOfBothFeet:Ljava/lang/Boolean;

.field private feverFlag:Ljava/lang/Boolean;

.field private howChildDrinks:Ljava/lang/String;

.field private ifMoreThan7DaysHasFeverBeenPresentEachDay:Ljava/lang/Boolean;

.field private isChildLethargicOrUnconscious:Ljava/lang/Boolean;

.field private lethargicOrUnconscious:Ljava/lang/Boolean;

.field private malnutritionGradeOfChild:Ljava/lang/String;

.field private measureAxillaryTemperatureIfFeverNo:Ljava/lang/Float;

.field private measureAxillaryTemperatureIfFeverYes:Ljava/lang/Float;

.field private numberOfBreathsIn1Minute:Ljava/lang/Integer;

.field private respiratoryRate:Ljava/lang/Integer;

.field private restlessOrIrritable:Ljava/lang/Boolean;

.field private sinceHowManyDaysOfCough:Ljava/lang/Integer;

.field private sinceHowManyDaysOfFever:Ljava/lang/Integer;

.field private sinceHowManyDaysOfStools:Ljava/lang/Integer;

.field private sunkenEyes:Ljava/lang/Boolean;

.field private theNeckStiff:Ljava/lang/Boolean;

.field private touchChildSkinOnAbdomenDoesItHaveFever:Ljava/lang/Boolean;

.field private visibleSevereWasting:Ljava/lang/Boolean;

.field private weightOfChild:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgeOfChild()Ljava/lang/Long;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->ageOfChild:Ljava/lang/Long;

    return-object v0
.end method

.method public getBeneficiaryName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryName:Ljava/lang/String;

    return-object v0
.end method

.method public getBeneficiaryType()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDoesSkinGoesBackVerySlowly()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesSkinGoesBackVerySlowly:Ljava/lang/String;

    return-object v0
.end method

.method public getDoesTheChildHavePalmerPoller()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesTheChildHavePalmerPoller:Ljava/lang/String;

    return-object v0
.end method

.method public getFeverFlag()Ljava/lang/Boolean;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->feverFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHowChildDrinks()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->howChildDrinks:Ljava/lang/String;

    return-object v0
.end method

.method public getMalnutritionGradeOfChild()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->malnutritionGradeOfChild:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->measureAxillaryTemperatureIfFeverNo:Ljava/lang/Float;

    return-object v0
.end method

.method public getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->measureAxillaryTemperatureIfFeverYes:Ljava/lang/Float;

    return-object v0
.end method

.method public getNumberOfBreathsIn1Minute()Ljava/lang/Integer;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->numberOfBreathsIn1Minute:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRespiratoryRate()Ljava/lang/Integer;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->respiratoryRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSinceHowManyDaysOfCough()Ljava/lang/Integer;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfCough:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSinceHowManyDaysOfFever()Ljava/lang/Integer;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfFever:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSinceHowManyDaysOfStools()Ljava/lang/Integer;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfStools:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWeightOfChild()Ljava/lang/Float;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->weightOfChild:Ljava/lang/Float;

    return-object v0
.end method

.method public isBloodInStools()Ljava/lang/Boolean;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->bloodInStools:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isChildHadConvulsion()Ljava/lang/Boolean;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childHadConvulsion:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isChildHaveChestIndrawing()Ljava/lang/Boolean;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childHaveChestIndrawing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isChildNOTAbleToDrinkOrBreastfeed()Ljava/lang/Boolean;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childNotAbleToDrinkOrBreastfeed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isChildVomitsEverything()Ljava/lang/Boolean;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childVomitsEverything:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDoeschildHaveCoughOrDifficultBreathing()Ljava/lang/Boolean;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesChildHaveCoughOrDifficultBreathing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEdemaOfBothFeet()Ljava/lang/Boolean;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->edemaOfBothFeet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isIfMoreThan7DaysHasFeverBeenPresentEachDay()Ljava/lang/Boolean;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->ifMoreThan7DaysHasFeverBeenPresentEachDay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isIschildLethargicOrUnconscious()Ljava/lang/Boolean;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildLethargicOrUnconscious:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLethargicOrUnconscious()Ljava/lang/Boolean;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->lethargicOrUnconscious:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRestlessOrIrritable()Ljava/lang/Boolean;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->restlessOrIrritable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSunkenEyes()Ljava/lang/Boolean;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sunkenEyes:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isTheNeckStiff()Ljava/lang/Boolean;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->theNeckStiff:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isTouchChildSkinOnAbdomenDoesItHaveFever()Ljava/lang/Boolean;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->touchChildSkinOnAbdomenDoesItHaveFever:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVisibleSevereWasting()Ljava/lang/Boolean;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->visibleSevereWasting:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAgeOfChild(Ljava/lang/Long;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->ageOfChild:Ljava/lang/Long;

    return-void
.end method

.method public setBeneficiaryName(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryName:Ljava/lang/String;

    return-void
.end method

.method public setBeneficiaryType(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryType:Ljava/lang/String;

    return-void
.end method

.method public setBloodInStools(Ljava/lang/Boolean;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->bloodInStools:Ljava/lang/Boolean;

    return-void
.end method

.method public setChildHadConvulsion(Ljava/lang/Boolean;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childHadConvulsion:Ljava/lang/Boolean;

    return-void
.end method

.method public setChildHaveChestIndrawing(Ljava/lang/Boolean;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childHaveChestIndrawing:Ljava/lang/Boolean;

    return-void
.end method

.method public setChildNotAbleToDrinkOrBreastfeed(Ljava/lang/Boolean;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childNotAbleToDrinkOrBreastfeed:Ljava/lang/Boolean;

    return-void
.end method

.method public setChildVomitsEverything(Ljava/lang/Boolean;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childVomitsEverything:Ljava/lang/Boolean;

    return-void
.end method

.method public setDoesChildHaveCoughOrDifficultBreathing(Ljava/lang/Boolean;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesChildHaveCoughOrDifficultBreathing:Ljava/lang/Boolean;

    return-void
.end method

.method public setDoesSkinGoesBackVerySlowly(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesSkinGoesBackVerySlowly:Ljava/lang/String;

    return-void
.end method

.method public setDoesTheChildHavePalmerPoller(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesTheChildHavePalmerPoller:Ljava/lang/String;

    return-void
.end method

.method public setEdemaOfBothFeet(Ljava/lang/Boolean;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->edemaOfBothFeet:Ljava/lang/Boolean;

    return-void
.end method

.method public setFeverFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->feverFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setHowChildDrinks(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->howChildDrinks:Ljava/lang/String;

    return-void
.end method

.method public setIfMoreThan7DaysHasFeverBeenPresentEachDay(Ljava/lang/Boolean;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->ifMoreThan7DaysHasFeverBeenPresentEachDay:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsChildLethargicOrUnconscious(Ljava/lang/Boolean;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildLethargicOrUnconscious:Ljava/lang/Boolean;

    return-void
.end method

.method public setLethargicOrUnconscious(Ljava/lang/Boolean;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->lethargicOrUnconscious:Ljava/lang/Boolean;

    return-void
.end method

.method public setMalnutritionGradeOfChild(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->malnutritionGradeOfChild:Ljava/lang/String;

    return-void
.end method

.method public setMeasureAxillaryTemperatureIfFeverNo(Ljava/lang/Float;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->measureAxillaryTemperatureIfFeverNo:Ljava/lang/Float;

    return-void
.end method

.method public setMeasureAxillaryTemperatureIfFeverYes(Ljava/lang/Float;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->measureAxillaryTemperatureIfFeverYes:Ljava/lang/Float;

    return-void
.end method

.method public setNumberOfBreathsIn1Minute(Ljava/lang/Integer;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->numberOfBreathsIn1Minute:Ljava/lang/Integer;

    return-void
.end method

.method public setRespiratoryRate(Ljava/lang/Integer;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->respiratoryRate:Ljava/lang/Integer;

    return-void
.end method

.method public setRestlessOrIrritable(Ljava/lang/Boolean;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->restlessOrIrritable:Ljava/lang/Boolean;

    return-void
.end method

.method public setSinceHowManyDaysOfCough(Ljava/lang/Integer;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfCough:Ljava/lang/Integer;

    return-void
.end method

.method public setSinceHowManyDaysOfFever(Ljava/lang/Integer;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfFever:Ljava/lang/Integer;

    return-void
.end method

.method public setSinceHowManyDaysOfStools(Ljava/lang/Integer;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfStools:Ljava/lang/Integer;

    return-void
.end method

.method public setSunkenEyes(Ljava/lang/Boolean;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sunkenEyes:Ljava/lang/Boolean;

    return-void
.end method

.method public setTheNeckStiff(Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->theNeckStiff:Ljava/lang/Boolean;

    return-void
.end method

.method public setTouchChildSkinOnAbdomenDoesItHaveFever(Ljava/lang/Boolean;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->touchChildSkinOnAbdomenDoesItHaveFever:Ljava/lang/Boolean;

    return-void
.end method

.method public setVisibleSevereWasting(Ljava/lang/Boolean;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->visibleSevereWasting:Ljava/lang/Boolean;

    return-void
.end method

.method public setWeightOfChild(Ljava/lang/Float;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->weightOfChild:Ljava/lang/Float;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataBeanToIdentifyChildCareMorbidities{beneficiaryName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", beneficiaryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->beneficiaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", childAbleToDrinkOrBreastfeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childNotAbleToDrinkOrBreastfeed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childVomitsEverything="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childVomitsEverything:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childHadConvulsion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childHadConvulsion:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ischildLethargicOrUnconscious="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildLethargicOrUnconscious:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lethargicOrUnconscious="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->lethargicOrUnconscious:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childHaveChestIndrawing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->childHaveChestIndrawing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", doeschildHaveCoughOrDifficultBreathing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesChildHaveCoughOrDifficultBreathing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sunkenEyes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sunkenEyes:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theNeckStiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->theNeckStiff:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visibleSevereWasting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->visibleSevereWasting:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", edemaOfBothFeet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->edemaOfBothFeet:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", restlessOrIrritable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->restlessOrIrritable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bloodInStools="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->bloodInStools:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ifMoreThan7DaysHasFeverBeenPresentEachDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->ifMoreThan7DaysHasFeverBeenPresentEachDay:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ageOfChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->ageOfChild:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", respiratoryRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->respiratoryRate:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sinceHowManyDaysOfCough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfCough:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sinceHowManyDaysOfStools="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfStools:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sinceHowManyDaysOfFever="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->sinceHowManyDaysOfFever:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfBreathsIn1Minute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->numberOfBreathsIn1Minute:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", measureAxillaryTemperatureInVerySevereFebrileIllness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->measureAxillaryTemperatureIfFeverNo:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", measureAxillaryTemperatureInMalaria="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->measureAxillaryTemperatureIfFeverYes:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", howChildDrinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->howChildDrinks:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", doesSkinGoesBackVerySlowly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesSkinGoesBackVerySlowly:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", malnutritionGradeOfChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->malnutritionGradeOfChild:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", doestheChildHavePalmerPoller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->doesTheChildHavePalmerPoller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", weightOfChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->weightOfChild:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
