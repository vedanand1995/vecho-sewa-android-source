.class public final Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;
.super Ljava/lang/Object;
.source "PNCMorbiditiesService.java"


# instance fields
.field private dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

.field private identifiedMorbidities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;"
        }
    .end annotation
.end field

.field private isSepsisFound:Z


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 24
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isHypothermia()V

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isJaundice()V

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isPIH()V

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isPPH()V

    .line 30
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isPostPartumInfection()V

    .line 31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isPostpartumMoodDisorder()V

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isSepsisP2()Z

    move-result p2

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isSepsisFound:Z

    if-nez p2, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isPneumonia()V

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isFever()V

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isLocalInfection()V

    .line 40
    const-string p2, "M"

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isFeedingProblems()V

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getIsChildFirstPncDone()Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isBirthAsphyxia()V

    .line 46
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isLowBirthWeight()V

    .line 47
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isVeryLowBirthWeight()V

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isConjunctivitis()V

    return-void
.end method

.method private addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V
    .locals 0

    .line 673
    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setMorbidityCode(Ljava/lang/String;)V

    .line 674
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandRiskFactorAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setRiskFactorOfIdentifiedMorbidities(Ljava/lang/String;)V

    .line 675
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isBirthAsphyxia()V
    .locals 4

    .line 529
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 531
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhenDidBabyCry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 532
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhenDidBabyCry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CRYAE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "When did baby cry?"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhenDidBabyCry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    const-string v1, "BASP"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isConjunctivitis()V
    .locals 4

    .line 615
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowAreBabyEyes()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 620
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowAreBabyEyes()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PUSP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowAreBabyEyes()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SWLN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    :cond_0
    const-string v2, "Baby\'s eyes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowAreBabyEyes()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v1, "CONJUC"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_1
    return-void
.end method

.method private isFeedingProblems()V
    .locals 10

    .line 551
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAnyDifficultyInBreastfeeding()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " = "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 568
    const-string v2, "Any difficulty in breastfeeding"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 574
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 575
    const-string v6, "Mother has following problems"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getDoesMotherHaveAnyOfFollowingProblems()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 579
    :goto_1
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getDoesMotherHaveAnyOfFollowingProblems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 580
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getDoesMotherHaveAnyOfFollowingProblems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 581
    const-string v9, "NOPROB"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 582
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 598
    iget-boolean v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->isSepsisFound:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWasBabyFedLessThanUsual()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LTUSL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 599
    const-string v2, "Baby\'s feeding"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWasBabyFedLessThanUsual()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz v4, :cond_4

    .line 608
    const-string v1, "FPRO"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_4
    return-void
.end method

.method private isFever()V
    .locals 8

    .line 653
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x4058c00000000000L    # 99.0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    .line 660
    const-string v2, "Temperature"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 666
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 668
    const-string v1, "FVRIP"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_1
    return-void
.end method

.method private isHypothermia()V
    .locals 10

    .line 331
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAreBabyHandsAndFeetColdToTouch()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, " = "

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "Baby\'s hands and feet cold to touch"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 342
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 343
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x4058400000000000L    # 97.0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1

    .line 344
    const-string v2, "Temperature"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 352
    const-string v1, "HYTH"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_2
    return-void
.end method

.method private isJaundice()V
    .locals 5

    .line 244
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsTheSkinOfTheBaby()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsTheSkinOfTheBaby()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsTheSkinOfTheBaby()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 249
    const-string v4, "YLLW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "How is the skin of the baby"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Yellow"

    .line 251
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    .line 260
    const-string v1, "JAUND"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_3
    return-void
.end method

.method private isLocalInfection()V
    .locals 7

    .line 381
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 393
    :goto_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 394
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 395
    const-string v6, "SEP"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 401
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4

    .line 403
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getUmbilicus()Ljava/lang/String;

    move-result-object v2

    const-string v5, " = "

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getUmbilicus()Ljava/lang/String;

    move-result-object v2

    const-string v6, "PUS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    const-string v2, "Umbilicus"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v2, "Pus"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 410
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 411
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getSkinPustules()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getSkinPustules()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    const-string v2, "Skin pustules"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v2, "Yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 421
    const-string v1, "LI"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_5
    return-void
.end method

.method private isLowBirthWeight()V
    .locals 7

    .line 636
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 639
    const-string v2, "Weight is "

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    const-string v1, "BWLPC"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isPIH()V
    .locals 3

    .line 311
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 313
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHasHeadacheWithVisualDisturbances()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has headache with visual disturbances"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 316
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v1, "PIHH"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isPPH()V
    .locals 3

    .line 227
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNoOfPadsChangedIn24Hours()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNoOfPadsChangedIn24Hours()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pads are changed in 24 hours"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 231
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNoOfPadsChangedIn24Hours()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "PPH"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isPneumonia()V
    .locals 5

    .line 359
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getChestIndrawing()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 365
    const-string v2, "Chest indrawing"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 371
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 374
    const-string v1, "PNEUM"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_1
    return-void
.end method

.method private isPostPartumInfection()V
    .locals 6

    .line 267
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getFoulSmellingDischarge()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getFeverForMother()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "Foul smelling discharge"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v3, "Yes"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 277
    const-string v4, "Fever"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v1, "PPI"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isPostpartumMoodDisorder()V
    .locals 3

    .line 293
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 295
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAbnormalTalkOrBehaviourOrMoodChanges()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal talk or behaviour or mood changes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 298
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v1, "PPMD"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isSepsisP2()Z
    .locals 13

    .line 57
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhetherBabyLimbsNeckLastState()Z

    move-result v2

    const-string v3, " = "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 65
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhetherBabyLimbsAndNeckMoreLimpThanBefore()Ljava/lang/String;

    move-result-object v2

    const-string v6, "LIMP"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "Baby\'s limbs and neck"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhetherBabyLimbsAndNeckMoreLimpThanBefore()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 85
    :goto_0
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAnyDifficultyInBreastfeedingLastStatus()Z

    move-result v6

    const-string v7, "NSUCK"

    const-string v8, "LTUSL"

    const-string v9, "WEAK"

    const-string v10, "Yes"

    if-nez v6, :cond_1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAnyDifficultyInBreastfeeding()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_1
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 86
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhetherBabyFedLessLastStatus()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWasBabyFedLessThanUsual()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 87
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabySucklingLastStatus()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabySuckling()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 88
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabySucklingLastStatus()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabySuckling()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 89
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 90
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAnyDifficultyInBreastfeeding()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 91
    const-string v6, "Any difficulty in breastfeeding"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 98
    :cond_5
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWasBabyFedLessThanUsual()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    const-string v6, "Baby\'s feeding"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWasBabyFedLessThanUsual()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 106
    :cond_6
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabySuckling()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 107
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabySuckling()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 108
    :cond_7
    const-string v6, "Baby\'s sucking"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabySuckling()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 118
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 124
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabyCryLastStatus()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    .line 125
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabyCry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabyCry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "STOP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 126
    :cond_a
    const-string v6, "Baby\'s cry "

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getHowIsBabyCry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_1

    :cond_b
    const/4 v6, 0x0

    .line 132
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 142
    :cond_c
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAreBabyHandsAndFeetColdToTouch()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 143
    const-string v6, "Baby\'s hands and feet cold to touch"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_2

    :cond_d
    const/4 v6, 0x0

    .line 149
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 150
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    const-wide v11, 0x4058c00000000000L    # 99.0

    cmpl-double v9, v7, v11

    if-lez v9, :cond_e

    .line 151
    const-string v6, "Temperature"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getTemperature()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 157
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_f

    add-int/lit8 v2, v2, 0x1

    .line 165
    :cond_f
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWhetherBabyVomits()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 167
    const-string v6, "Whether baby vomits"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_3

    :cond_10
    const/4 v6, 0x0

    .line 173
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 174
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAbdomen()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DSTND"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 175
    const-string v6, "Abdomen"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v6, "Distended"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 181
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_12

    add-int/lit8 v2, v2, 0x1

    .line 189
    :cond_12
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getChestIndrawing()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 190
    const-string v6, "Chest indrawing"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_4

    :cond_13
    const/4 v6, 0x0

    .line 196
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_14

    add-int/lit8 v2, v2, 0x1

    .line 205
    :cond_14
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getUmbilicus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PUS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 207
    const-string v6, "Umbilicus"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v3, "Pus"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_5

    :cond_15
    const/4 v3, 0x0

    .line 212
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    if-le v2, v4, :cond_17

    .line 219
    const-string v1, "SEP"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    goto :goto_6

    :cond_17
    const/4 v4, 0x0

    :goto_6
    return v4
.end method

.method private isVeryLowBirthWeight()V
    .locals 7

    .line 427
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 430
    const-string v2, "Weight is "

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getNewBornWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v1, "LBWSH"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isHighRiskLowBirthWeightOrPreterm(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 444
    new-instance v2, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 454
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 455
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 456
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3ffffbe76c8b4396L    # 1.999

    const-string v9, " Days"

    const/16 v10, 0xf

    const/4 v11, 0x2

    const-string v12, " = "

    const-string v13, "Age is"

    const-string v14, "Weight is "

    const/4 v15, 0x1

    cmpg-double v16, v5, v7

    if-gez v16, :cond_0

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    cmpl-double v16, v5, v7

    if-ltz v16, :cond_0

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v4, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v16, v5, v7

    if-gtz v16, :cond_0

    .line 457
    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 464
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v5

    .line 465
    aget v5, v5, v11

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 471
    :goto_0
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/16 v16, 0x0

    cmpl-double v8, v6, v16

    if-lez v8, :cond_1

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide v18, 0x4000cccccccccccdL    # 2.1

    cmpg-double v8, v6, v18

    if-gez v8, :cond_1

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v4, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v18

    cmp-long v8, v6, v18

    if-ltz v8, :cond_1

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x15

    invoke-static {v4, v4, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v18

    cmp-long v8, v6, v18

    if-gtz v8, :cond_1

    .line 472
    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 476
    invoke-static {v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 479
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v5

    .line 480
    aget v5, v5, v11

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 486
    :cond_1
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const/16 v8, 0x1b

    cmpl-double v9, v6, v16

    if-lez v9, :cond_2

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide v9, 0x400199999999999aL    # 2.2

    cmpg-double v18, v6, v9

    if-gez v18, :cond_2

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v9, 0x16

    invoke-static {v4, v4, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v9

    cmp-long v18, v6, v9

    if-ltz v18, :cond_2

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v4, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v9

    cmp-long v18, v6, v9

    if-gtz v18, :cond_2

    .line 487
    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 491
    invoke-static {v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v5, v9

    .line 494
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v5

    .line 495
    aget v6, v5, v15

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    const-string v6, " Months "

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    aget v5, v5, v11

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    const-string v5, " Days "

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 504
    :cond_2
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    cmpl-double v9, v6, v16

    if-lez v9, :cond_3

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide v9, 0x4002666666666666L    # 2.3

    cmpg-double v11, v6, v9

    if-gez v11, :cond_3

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v4, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 505
    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyPNCMorbidities;->getWeightOfChild()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 509
    invoke-static {v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v5, " 28 Days "

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v15, v5

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    .line 517
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v4, v15

    :cond_5
    if-eqz v4, :cond_6

    .line 521
    iput-object v1, v0, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    .line 522
    const-string v1, "HRLB"

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/morbidities/service/PNCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_6
    return-void
.end method
