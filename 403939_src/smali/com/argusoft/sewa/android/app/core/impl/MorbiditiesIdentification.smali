.class public Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;
.super Ljava/lang/Object;
.source "MorbiditiesIdentification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDBFToIdentifyPNCMorbiditiesForChild(Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;
    .locals 4

    .line 347
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;-><init>()V

    .line 349
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHealthId(Ljava/lang/String;)V

    .line 350
    const-string v1, "C"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setBeneficiaryType(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getIsChildAlive()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getIsChildAlive()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsBeneficiaryAlive(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 354
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsBeneficiaryAlive(Z)V

    .line 356
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getChildName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setBeneficiaryName(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmLooseMotionFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setBabyHasWateryOrLooseMotion(Ljava/lang/Boolean;)V

    .line 359
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getSkinStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowIsTheSkinOfTheBaby(Ljava/util/List;)V

    .line 360
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmBleedingStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsThereBleedingFromAnyPartOfTheBody(Ljava/util/List;)V

    .line 361
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmHandsTouchFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAreBabyHandsAndFeetColdToTouch(Ljava/lang/Boolean;)V

    .line 362
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getTemperature()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    .line 363
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getRespirationRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setRateOfRespiration(Ljava/lang/Integer;)V

    .line 364
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getSkinPustules()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setSkinPustules(Ljava/lang/Boolean;)V

    .line 365
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getUmbilicus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setUmbilicus(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmConsciousnessStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowsTheBabyConsciousness(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getConsciousnessStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setConsciousness(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmBabyFed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWasBabyFedLessThanUsual(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmSucklingStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowIsBabySuckling(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmCryStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowIsBabyCry(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getCryStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setCry(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getAbdomen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAbdomen(Ljava/lang/String;)V

    .line 377
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmChestIndrawingFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmChestIndrawingFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setChestIndrawing(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getChestIndrawingFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setChestIndrawing(Ljava/lang/Boolean;)V

    .line 382
    :goto_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmVomitingFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhetherBabyVomits(Ljava/lang/Boolean;)V

    .line 383
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getmSkinProblem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAnySkinProblems(Ljava/util/List;)V

    .line 386
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getChinTouchStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setDoesBabyChinTouchTheBreast(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getMouthOpenStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsMouthWidelyOpen(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getAreolaStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsAreolaMoreAboveTheMouthAndLessBeneathTheMouth(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getLowerLipStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsLowerLipTurnedOutward(Ljava/lang/String;)V

    .line 391
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "pretermDelivery"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 392
    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "pretermDeliveryPOV"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 395
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setDeliveryDate(Ljava/lang/Long;)V

    .line 397
    :cond_2
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "pretermDeliveryLMP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 399
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setLmpDate(Ljava/lang/Long;)V

    .line 402
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getWhetherBabyLimbsAndNeckMoreLimpThanBefore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhetherBabyLimbsAndNeckMoreLimpThanBefore(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->getHowAreBabyEyes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowAreBabyEyes(Ljava/lang/String;)V

    return-object v0
.end method

.method private createDBFToIdentifyPNCMorbiditiesForMother(Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;
    .locals 3

    .line 326
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;-><init>()V

    .line 327
    const-string v1, "M"

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setBeneficiaryType(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHealthId(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getIsMotherAlive()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getIsMotherAlive()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsBeneficiaryAlive(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsBeneficiaryAlive(Z)V

    .line 334
    :goto_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getPadsCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setNoOfPadsChangedIn24Hours(Ljava/lang/Integer;)V

    .line 335
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getFoulSmellFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setFoulSmellingDischarge(Ljava/lang/Boolean;)V

    .line 336
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setFeverForMother(Ljava/lang/Boolean;)V

    .line 337
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getAbnormalBehaviourFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAbnormalTalkOrBehaviourOrMoodChanges(Ljava/lang/Boolean;)V

    .line 338
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getHeadacheFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHasHeadacheWithVisualDisturbances(Ljava/lang/Boolean;)V

    .line 339
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getBreastfeedingDifficultyFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAnyDifficultyInBreastfeeding(Ljava/lang/Boolean;)V

    .line 340
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getProblemPresent()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setDoesMotherHaveAnyOfFollowingProblems(Ljava/util/List;)V

    .line 341
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getBreastProblemFlag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setDoesMotherHaveAnyOfFollowingOnBREAST(Ljava/util/List;)V

    return-object v0
.end method

.method private createDataBeanToIdentifyANCMorbidity(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;
    .locals 7

    .line 36
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;-><init>()V

    .line 37
    const-string v1, "~"

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 38
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 39
    const-string v5, "!"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 40
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 41
    aget-object v4, v4, v6

    .line 42
    invoke-direct {p0, v0, v5, v4}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->setANCMorbidityBeanForBeneficiaryAfterANC(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->setEDPDetailsInANCMorbidityBean(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;)V

    return-object v0
.end method

.method private createDataBeanToIdentifyChildCareMorbidity(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;
    .locals 7

    .line 659
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;-><init>()V

    .line 660
    const-string v1, "~"

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 661
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 662
    const-string v5, "!"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 663
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 664
    aget-object v4, v4, v6

    .line 665
    invoke-direct {p0, v0, v5, v4}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->setChildCareMorbidityBeanForBeneficiary(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 667
    :cond_0
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->setOtherDetailsForChildcareMorbidities(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;)V

    return-object v0
.end method

.method private parseRecordOfPNC(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;-><init>()V

    .line 298
    const-string v1, "~"

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 299
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 300
    const-string v5, "!"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 301
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    .line 302
    aget-object v4, v4, v6

    .line 303
    invoke-direct {p0, v0, v5, v4}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->setPNCHomeVisitBeanForBeneficiary(Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;FLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->createDBFToIdentifyPNCMorbiditiesForMother(Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    move-result-object v1

    .line 309
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 311
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    .line 312
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->createDBFToIdentifyPNCMorbiditiesForChild(Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    move-result-object v1

    .line 313
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getBreastfeedingDifficultyFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAnyDifficultyInBreastfeeding(Ljava/lang/Boolean;)V

    .line 315
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->setOtherDetailsForPNCMorbidity(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private setANCMorbidityBeanForBeneficiaryAfterANC(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;ILjava/lang/String;)V
    .locals 1

    .line 84
    const-string v0, "M"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setBeneficiaryType(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9b

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 135
    :pswitch_0
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setSwellingOfFaceHandsOrFeet(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 132
    :pswitch_1
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setShortOfBreathDuringRoutingHouseholdWork(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 129
    :pswitch_2
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setDoYouGetTiredEasily(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 126
    :pswitch_3
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setLeakingPerVaginally(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 123
    :pswitch_4
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setVaginalDischarge(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_5
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setBurningUrination(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 117
    :pswitch_6
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setVaginalBleedingSinceLastVisit(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 114
    :pswitch_7
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setVomiting(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 111
    :pswitch_8
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setSevereJointPain(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 108
    :pswitch_9
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setJaundice(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 105
    :pswitch_a
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setChillsOrRigours(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 102
    :pswitch_b
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setFever(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 99
    :pswitch_c
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setPresenceOfCough(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_d
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setHasConvulsion(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 93
    :pswitch_e
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setVisionDisturbance(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 90
    :pswitch_f
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setHeadache(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setConjunctivaAndPalmsPale(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setBeneficiaryName(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x88
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x91
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setChildCareMorbidityBeanForBeneficiary(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;ILjava/lang/String;)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 745
    :pswitch_1
    const-string p2, "T"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 746
    const-string p2, "-"

    invoke-static {p3, p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 747
    array-length p3, p2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    .line 748
    aget-object p3, p2, p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x2

    .line 749
    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p3, p3

    int-to-float p2, p2

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p2, v0

    add-float/2addr p3, p2

    .line 751
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setMeasureAxillaryTemperatureIfFeverYes(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 782
    :pswitch_2
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p3, "malnutritionGrade"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 783
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setMalnutritionGradeOfChild(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 770
    :pswitch_3
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p3, "latestWeight"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 772
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 774
    :cond_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p3, "prevWeight"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 776
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 766
    :pswitch_4
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setEdemaOfBothFeet(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 762
    :pswitch_5
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setVisibleSevereWasting(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 787
    :pswitch_6
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setDoesTheChildHavePalmerPoller(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :pswitch_7
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setTheNeckStiff(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 741
    :pswitch_8
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setIfMoreThan7DaysHasFeverBeenPresentEachDay(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 737
    :pswitch_9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setSinceHowManyDaysOfFever(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 733
    :pswitch_a
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setFeverFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 729
    :pswitch_b
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setHowChildDrinks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 725
    :pswitch_c
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setDoesSkinGoesBackVerySlowly(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :pswitch_d
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setLethargicOrUnconscious(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 717
    :pswitch_e
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setRestlessOrIrritable(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 713
    :pswitch_f
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setSunkenEyes(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 709
    :pswitch_10
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setBloodInStools(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 705
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setSinceHowManyDaysOfStools(Ljava/lang/Integer;)V

    goto :goto_0

    .line 701
    :pswitch_12
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setChildHaveChestIndrawing(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 696
    :pswitch_13
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setRespiratoryRate(Ljava/lang/Integer;)V

    .line 697
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setNumberOfBreathsIn1Minute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 692
    :pswitch_14
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setSinceHowManyDaysOfCough(Ljava/lang/Integer;)V

    goto :goto_0

    .line 688
    :pswitch_15
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setDoesChildHaveCoughOrDifficultBreathing(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 684
    :pswitch_16
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setChildHadConvulsion(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 680
    :pswitch_17
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setChildVomitsEverything(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 676
    :pswitch_18
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setChildNotAbleToDrinkOrBreastfeed(Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setEDPDetailsInANCMorbidityBean(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;)V
    .locals 3

    .line 49
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "maritalStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    const-string v1, "null"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setMaritalStatus(Ljava/lang/String;)V

    .line 53
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "ageForMorb"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setAge(Ljava/lang/Long;)V

    .line 57
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "complicationDuringLastPregnancy"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getListFromStringBySeparator(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setComplicationPresentDuringPreviousPregnancy(Ljava/util/List;)V

    .line 62
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "gravidaValue"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 64
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "4+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x5

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setGravida(Ljava/lang/Integer;)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setGravida(Ljava/lang/Integer;)V

    .line 71
    :cond_4
    :goto_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "gestationalWeek"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setGestationalWeek(Ljava/lang/Integer;)V

    :cond_5
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setIsFirstAncHomeVisitDone(Z)V

    .line 77
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "IsFirstANChomevisitDone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 78
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->setIsFirstAncHomeVisitDone(Z)V

    :cond_6
    return-void
.end method

.method private setOtherDetailsForChildcareMorbidities(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;)V
    .locals 4

    .line 795
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "ageFromECR"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 797
    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 798
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v0

    .line 799
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->setAgeOfChild(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private setOtherDetailsForPNCMorbidity(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;I)V
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 410
    const-string v3, "F"

    const-string v4, "whenDidBabyCry"

    const-string v5, "T"

    const-string v6, "false"

    const-string v7, "isChildsFirstPNCDone"

    const-string v8, "temperatureForMorb"

    const-string v9, "childLatestWeight"

    const-string v10, "childDOB"

    const-string v11, "childLastWeight"

    const-string v13, "-"

    const-string v14, "."

    const-string v2, ""

    const-string v15, "null"

    if-nez v1, :cond_d

    .line 411
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 413
    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    .line 414
    invoke-virtual {v0, v12}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAgeOfChild(Ljava/lang/Long;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {v10, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 417
    array-length v12, v10

    const/4 v1, 0x3

    if-ne v12, v1, :cond_1

    const/4 v1, 0x0

    aget-object v12, v10, v1

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-object v12, v10, v1

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object v12, v10, v1

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x0

    .line 418
    aget-object v16, v10, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v16, 0x1

    aget-object v17, v10, v16

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v10, v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v12, v4, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v19

    .line 419
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAgeOfChild(Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    move-object/from16 v18, v4

    const/4 v1, 0x0

    .line 421
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAgeOfChild(Ljava/lang/Long;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v18, v4

    .line 425
    :goto_1
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 426
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 427
    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 428
    array-length v4, v1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_3

    const/4 v4, 0x0

    aget-object v8, v1, v4

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 429
    invoke-virtual {v0, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    move-object v1, v5

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 430
    :cond_4
    array-length v5, v1

    const/4 v8, 0x3

    if-ne v5, v8, :cond_6

    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 431
    aget-object v4, v1, v3

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x2

    aget-object v5, v1, v4

    if-eqz v5, :cond_5

    .line 432
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 433
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    .line 434
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 435
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 438
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 442
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    .line 444
    :goto_3
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 445
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    if-eqz v2, :cond_8

    .line 446
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 447
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    goto :goto_4

    .line 449
    :cond_8
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 450
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 451
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    :cond_9
    :goto_4
    const/4 v1, 0x1

    .line 454
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsChildFirstPncDone(Z)V

    .line 455
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 456
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 457
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsChildFirstPncDone(Z)V

    :cond_a
    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setNewBornWeight(Ljava/lang/Float;)V

    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getIsChildFirstPncDone()Z

    move-result v1

    if-nez v1, :cond_b

    .line 462
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 463
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 464
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setNewBornWeight(Ljava/lang/Float;)V

    .line 467
    :cond_b
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    move-object/from16 v4, v18

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 468
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 469
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhenDidBabyCry(Ljava/lang/String;)V

    :cond_c
    move/from16 v10, p2

    goto/16 :goto_8

    .line 472
    :cond_d
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v10, p2

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 474
    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 475
    array-length v12, v1

    move-object/from16 v17, v3

    const/4 v3, 0x3

    if-ne v12, v3, :cond_e

    const/4 v3, 0x0

    aget-object v12, v1, v3

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    aget-object v12, v1, v3

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x2

    aget-object v12, v1, v3

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v12, 0x0

    .line 476
    aget-object v16, v1, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v16, 0x1

    aget-object v18, v1, v16

    move-object/from16 v19, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v12, v2, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v1

    .line 477
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAgeOfChild(Ljava/lang/Long;)V

    goto :goto_5

    :cond_e
    move-object/from16 v19, v2

    const/4 v1, 0x0

    .line 479
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAgeOfChild(Ljava/lang/Long;)V

    goto :goto_6

    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    :goto_5
    const/4 v1, 0x0

    .line 482
    :goto_6
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    if-eqz v2, :cond_10

    .line 484
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 485
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    goto :goto_7

    .line 487
    :cond_10
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 488
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 489
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWeightOfChild(Ljava/lang/Float;)V

    :cond_11
    :goto_7
    const/4 v1, 0x1

    .line 492
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsChildFirstPncDone(Z)V

    .line 493
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 494
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setIsChildFirstPncDone(Z)V

    :cond_12
    const/4 v1, 0x0

    .line 497
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setNewBornWeight(Ljava/lang/Float;)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getIsChildFirstPncDone()Z

    move-result v1

    if-nez v1, :cond_13

    .line 500
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 501
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 502
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setNewBornWeight(Ljava/lang/Float;)V

    .line 505
    :cond_13
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 506
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 507
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhenDidBabyCry(Ljava/lang/String;)V

    .line 509
    :cond_14
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 510
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 511
    invoke-static {v1, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 512
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    .line 513
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    .line 514
    :cond_16
    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    aget-object v2, v1, v2

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    .line 515
    aget-object v3, v1, v2

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x2

    aget-object v5, v1, v3

    if-eqz v5, :cond_17

    .line 516
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 517
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    .line 518
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 520
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    .line 522
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    .line 526
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setTemperature(Ljava/lang/Float;)V

    .line 529
    :cond_19
    :goto_8
    invoke-direct/range {p0 .. p2}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->setSepsisCondition(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;I)V

    return-void
.end method

.method private setPNCHomeVisitBeanForBeneficiary(Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;FLjava/lang/String;)V
    .locals 5

    .line 160
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setChildPNCVisitMobDataBeans(Ljava/util/List;)V

    :cond_0
    float-to-int v0, p2

    int-to-float v1, v0

    sub-float/2addr p2, v1

    float-to-double v1, p2

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double v1, v1, v3

    double-to-int p2, v1

    .line 167
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    if-ge v1, v2, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_8

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_6

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 276
    :pswitch_0
    const-string v0, "-"

    invoke-static {p3, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 277
    array-length v0, p3

    if-ne v0, v4, :cond_2

    aget-object v0, p3, v3

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setTemperature(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 279
    :cond_2
    array-length v0, p3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    aget-object v0, p3, v3

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 280
    aget-object v0, p3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 281
    aget-object p3, p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    int-to-float p3, p3

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p3, v1

    add-float/2addr v0, p3

    .line 282
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    .line 283
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setTemperature(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 271
    :pswitch_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setAbdomen(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setUmbilicus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :pswitch_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setmChestIndrawingFlag(Ljava/lang/Boolean;)V

    .line 259
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setChestIndrawingFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 263
    :pswitch_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setSkinPustules(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 254
    :pswitch_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setmHandsTouchFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 250
    :pswitch_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setmVomitingFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 246
    :pswitch_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setmSucklingStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :pswitch_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setmBabyFed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :pswitch_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setmCryStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :pswitch_a
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setIsChildAlive(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 220
    :pswitch_b
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setProblemPresent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :pswitch_c
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setBreastfeedingDifficultyFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 212
    :pswitch_d
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setHeadacheFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 208
    :pswitch_e
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setFeverFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 204
    :pswitch_f
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setAbnormalBehaviourFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 200
    :pswitch_10
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setFoulSmellFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 196
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setPadsCount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 192
    :pswitch_12
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setBleedingFlag(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setHowAreBabyEyes(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setWhetherBabyLimbsAndNeckMoreLimpThanBefore(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setChildName(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->getChildPNCVisitMobDataBeans()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ChildPNCVisitMobDataBean;->setHealthId(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_7
    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setPresentFlag(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 180
    :cond_8
    const-string p2, "AVAILABLE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 181
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setIsMotherAlive(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 182
    :cond_9
    const-string p2, "DEATH"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 183
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setIsMotherAlive(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 176
    :cond_a
    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/morbidities/beans/ClientPNCVisitMobDataBean;->setHealthId(Ljava/lang/String;)V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSepsisCondition(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;I)V
    .locals 7

    .line 534
    const-string v0, "pncSepsisCondition"

    if-nez p2, :cond_0

    .line 535
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 537
    :cond_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_b

    .line 539
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 540
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 541
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    const/16 v4, 0x54

    const/4 v5, 0x1

    if-nez v1, :cond_2

    if-ne v2, v4, :cond_1

    .line 544
    invoke-virtual {p1, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhetherBabyLimbsNeckLastState(Z)V

    goto :goto_2

    :cond_1
    if-ne v2, v3, :cond_a

    .line 546
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhetherBabyLimbsNeckLastState(Z)V

    goto :goto_2

    :cond_2
    if-ne v1, v5, :cond_4

    if-ne v2, v4, :cond_3

    .line 550
    invoke-virtual {p1, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAnyDifficultyInBreastfeedingLastStatus(Z)V

    goto :goto_2

    :cond_3
    if-ne v2, v3, :cond_a

    .line 552
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setAnyDifficultyInBreastfeedingLastStatus(Z)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    if-ne v2, v4, :cond_5

    .line 556
    invoke-virtual {p1, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhetherBabyFedLessLastStatus(Z)V

    goto :goto_2

    :cond_5
    if-ne v2, v3, :cond_a

    .line 558
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setWhetherBabyFedLessLastStatus(Z)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x3

    if-ne v1, v6, :cond_8

    if-ne v2, v4, :cond_7

    .line 562
    invoke-virtual {p1, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowIsBabySucklingLastStatus(Z)V

    goto :goto_2

    :cond_7
    if-ne v2, v3, :cond_a

    .line 564
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowIsBabySucklingLastStatus(Z)V

    goto :goto_2

    :cond_8
    if-ne v2, v4, :cond_9

    .line 568
    invoke-virtual {p1, v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowIsBabyCryLastStatus(Z)V

    goto :goto_2

    :cond_9
    if-ne v2, v3, :cond_a

    .line 570
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->setHowIsBabyCryLastStatus(Z)V

    :cond_a
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method


# virtual methods
.method public findAvailableANCMorbidities(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->createDataBeanToIdentifyANCMorbidity(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v1, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;-><init>()V

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v3, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;

    invoke-direct {v3, p1, v2}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;-><init>(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;Ljava/util/List;)V

    .line 151
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setIdentifiedMorbidities(Ljava/util/List;)V

    .line 152
    invoke-virtual {v1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryName(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getBeneficiaryType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryType(Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public findAvailableChildCareMorbidities(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;"
        }
    .end annotation

    .line 804
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->createDataBeanToIdentifyChildCareMorbidity(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    move-result-object p1

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    new-instance v1, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;-><init>()V

    .line 808
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 809
    new-instance v3, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;

    invoke-direct {v3, p1, v2}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;-><init>(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;Ljava/util/List;)V

    .line 810
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setIdentifiedMorbidities(Ljava/util/List;)V

    .line 811
    invoke-virtual {v1, p2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryName(Ljava/lang/String;)V

    .line 812
    const-string p1, "C"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryType(Ljava/lang/String;)V

    .line 813
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public findAvailablePNCMorbidities(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;"
        }
    .end annotation

    .line 578
    invoke-direct/range {p0 .. p1}, Lcom/argusoft/sewa/android/app/core/impl/MorbiditiesIdentification;->parseRecordOfPNC(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    .line 581
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "M"

    const-string v8, "C"

    const-string v9, "LTUSL"

    if-ge v4, v6, :cond_4

    .line 582
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 583
    new-instance v10, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    invoke-direct {v10}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;-><init>()V

    .line 585
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 586
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getIsBeneficiaryAlive()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 587
    new-instance v12, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;

    invoke-direct {v12, v11, v6}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;-><init>(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;Ljava/util/List;)V

    .line 590
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v5, :cond_0

    .line 591
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWasBabyFedLessThanUsual()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v9

    .line 594
    :cond_0
    invoke-virtual {v12, v6}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isHighRiskLowBirthWeightOrPreterm(Ljava/util/List;)V

    .line 596
    :cond_1
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v12, p2

    .line 597
    invoke-virtual {v10, v12}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v12, p2

    .line 599
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryName(Ljava/lang/String;)V

    .line 601
    :goto_1
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryId(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v10, v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setIdentifiedMorbidities(Ljava/util/List;)V

    .line 603
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setBeneficiaryType(Ljava/lang/String;)V

    .line 604
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v12, p2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 611
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "FPRO"

    if-ge v4, v11, :cond_a

    .line 612
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    .line 613
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_7

    .line 614
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    .line 615
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_6

    .line 616
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 617
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-nez v6, :cond_9

    move-object v2, v11

    goto :goto_7

    .line 625
    :cond_7
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 626
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v3

    const/4 v11, 0x0

    .line 627
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 628
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 629
    const-string v13, "SEP"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 636
    :cond_a
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v6, :cond_c

    if-nez v10, :cond_c

    .line 639
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 640
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 641
    invoke-virtual {v0, v12}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setMorbidityCode(Ljava/lang/String;)V

    .line 642
    invoke-static {v12}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandRiskFactorAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setRiskFactorOfIdentifiedMorbidities(Ljava/lang/String;)V

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Baby\'s feeding"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_c

    .line 648
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b

    .line 649
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 650
    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->setIdentifiedMorbidities(Ljava/util/List;)V

    .line 652
    :cond_b
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v1
.end method
