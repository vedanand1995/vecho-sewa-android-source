.class public Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;
.super Ljava/lang/Object;
.source "ANCMorbiditiesService.java"


# instance fields
.field private dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

.field private identifiedMorbidities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 22
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    .line 25
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isAph()V

    .line 26
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isEmesisOfPregnancy()V

    .line 27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isFever()V

    .line 28
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isHepatitis()V

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isMalariaInPregnancy()V

    .line 30
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isMildPregnancyInducedHypertension()V

    .line 31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isModerateAnemia()V

    .line 32
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isPossibleTB()V

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isPrematureRuptureOfMembrane()V

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isProbableSevereAnemia()V

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isSevereAnemia()V

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isSeverePregnancyInducedHypertension()V

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isSickleCellCrisis()V

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isUpperRespiratoryTractInfection()V

    .line 39
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isUrinaryTractInfection()V

    .line 40
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isVaginitis()V

    .line 42
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isIsFirstAncHomeVisitDone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isBadObstetricHistory()V

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->isUnintendedPregnancy()V

    :cond_0
    return-void
.end method

.method private addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V
    .locals 0

    .line 646
    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setMorbidityCode(Ljava/lang/String;)V

    .line 647
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandRiskFactorAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setRiskFactorOfIdentifiedMorbidities(Ljava/lang/String;)V

    .line 648
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isAph()V
    .locals 3

    .line 200
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 202
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isVaginalBleedingSinceLastVisit()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vaginal bleeding since last visit"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 205
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v1, "APH"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isBadObstetricHistory()V
    .locals 8

    .line 298
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getAge()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getAge()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x12

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getAge()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x23

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Age is"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 304
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getAge()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 309
    :goto_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getGravida()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getGravida()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    .line 310
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    const-string v4, "Gravida is more than 4"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getComplicationPresentDuringPreviousPregnancy()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 316
    :goto_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getComplicationPresentDuringPreviousPregnancy()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 317
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getComplicationPresentDuringPreviousPregnancy()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 318
    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "NK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    const-string v4, "Complication present during previous pregnancy is "

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getComplicationPresentDuringPreviousPregnancy()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 324
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getComplicationPresentDuringPreviousPregnancy()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 325
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 328
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 335
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getMaritalStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getMaritalStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MERID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 336
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marital status is "

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getMaritalStatus()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    if-eqz v2, :cond_7

    .line 341
    const-string v1, "BOH"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_7
    return-void
.end method

.method private isEmesisOfPregnancy()V
    .locals 3

    .line 595
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 597
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isVomiting()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vomiting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 599
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    const-string v1, "EOP"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isFever()V
    .locals 6

    .line 455
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getPresenceOfCough()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 458
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isFever()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 459
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isChillsOrRigours()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 460
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isBurningUrination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 461
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getPresenceOfCough()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NCOU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fever"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v3, "Yes"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 468
    const-string v4, "Chills or Rigours"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 474
    const-string v3, "Burning urination"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v3, "No"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 480
    const-string v3, "Presence of cough"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v2, "No cough"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v1, "FEVER"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isHepatitis()V
    .locals 4

    .line 218
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 220
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isJaundice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jaundice"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Yes"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v1, "HEP"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isMalariaInPregnancy()V
    .locals 6

    .line 422
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 424
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isFever()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 425
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isChillsOrRigours()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 426
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isBurningUrination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fever"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v3, "Yes"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 433
    const-string v4, "Chills or Rigours"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 439
    const-string v3, "Burning urination"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v1, "MIP"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isMildPregnancyInducedHypertension()V
    .locals 7

    .line 363
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 367
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isHeadache()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 368
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isVisionDisturbance()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 369
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 370
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Headache"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v4, "No"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 377
    const-string v5, "Vision disturbance"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 383
    const-string v4, "Urine protein"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 386
    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 387
    :cond_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 388
    const-string v4, "++"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 390
    :cond_2
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v4

    const-string v6, "ABSNT"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 395
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x8c

    if-le v4, v6, :cond_3

    .line 396
    const-string v4, "Systolic blood pressure"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 402
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 404
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0x5a

    if-le v2, v6, :cond_4

    .line 405
    const-string v2, "Diastolic blood pressure"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v4

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 415
    const-string v1, "MPIH"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_6
    return-void
.end method

.method private isModerateAnemia()V
    .locals 4

    .line 629
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 631
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getHaemoglobin()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 632
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getHaemoglobin()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Haemoglobin is"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 635
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getHaemoglobin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    const-string v1, "MDAN"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isPossibleTB()V
    .locals 3

    .line 496
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getPresenceOfCough()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GT15D"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presence of cough"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "More than 15 days"

    .line 501
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    const-string v1, "PT"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isPrematureRuptureOfMembrane()V
    .locals 5

    .line 252
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getGestationalWeek()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 255
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isLeakingPerVaginally()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 256
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getGestationalWeek()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1c

    const/16 v3, 0x25

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    const-string v2, "Leaking per vaginally"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v3, "Yes"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 263
    const-string v3, "Gestational week"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getGestationalWeek()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v1, "PRM"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isProbableSevereAnemia()V
    .locals 9

    .line 551
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isDoYouGetTiredEasily()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "Yes"

    const-string v5, " = "

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isShortOfBreathDuringRoutingHouseholdWork()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    const-string v2, "Gets tired easily"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 562
    const-string v2, "Experience shortness of breath during routine household work"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 569
    :goto_0
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isConjunctivaAndPalmsPale()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 570
    const-string v2, "Conjunctiva and palms pale"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 578
    :cond_1
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isSwellingOfFaceHandsOrFeet()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 579
    const-string v2, "Swelling of feet, hands or face"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 587
    const-string v1, "PSA"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_3
    return-void
.end method

.method private isSevereAnemia()V
    .locals 3

    .line 279
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getHaemoglobin()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getHaemoglobin()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Haemoglobin is"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 284
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getHaemoglobin()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v1, "SEAM"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isSeverePregnancyInducedHypertension()V
    .locals 16

    move-object/from16 v0, p0

    .line 51
    new-instance v1, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Systolic blood pressure"

    const-string v5, " = "

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 57
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v8, 0xa0

    if-le v3, v8, :cond_0

    .line 58
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 65
    :goto_0
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Diastolic blood pressure"

    const/16 v10, 0x6e

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 66
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v10, :cond_1

    .line 67
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 75
    :cond_1
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isHeadache()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "Headache"

    const/16 v12, 0x5a

    const/16 v13, 0x9f

    const/16 v14, 0x8c

    const-string v15, "Yes"

    if-eqz v8, :cond_4

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v14, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 81
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 91
    :goto_1
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v12, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 93
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 96
    :cond_3
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 106
    :cond_5
    :goto_2
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isVisionDisturbance()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v10, "Vision disturbance"

    const/4 v12, 0x2

    if-eqz v6, :cond_c

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v7, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v14, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 112
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-eq v8, v3, :cond_6

    .line 115
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_6
    if-ne v8, v3, :cond_7

    const/4 v8, 0x2

    .line 124
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 126
    :cond_8
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v13, 0x5a

    const/16 v14, 0x6e

    invoke-static {v6, v13, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 128
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v3, 0x1

    if-eq v8, v3, :cond_a

    .line 132
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v6, 0x1

    if-ne v8, v6, :cond_b

    const/4 v8, 0x2

    .line 141
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v6, 0x1

    .line 145
    :goto_3
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_e

    iget-object v13, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getUrineProtein()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_e

    .line 146
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_d

    iget-object v13, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v6, 0x8c

    const/16 v14, 0x9f

    invoke-static {v13, v6, v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 147
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getSystolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 154
    :cond_d
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x5a

    const/16 v13, 0x6e

    invoke-static {v4, v6, v13}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isNotInGivenRange(III)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 155
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getDiastolicBP()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 164
    :cond_e
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isHeadache()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isVisionDisturbance()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eq v8, v12, :cond_f

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_f
    const/4 v3, 0x1

    .line 182
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 184
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getHasConvulsion()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 185
    const-string v3, "Convulsion"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_4

    :cond_11
    move v6, v3

    :goto_4
    if-eqz v6, :cond_12

    .line 194
    const-string v2, "SPIH"

    invoke-direct {v0, v2, v1}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_12
    return-void
.end method

.method private isSickleCellCrisis()V
    .locals 3

    .line 234
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 236
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isSevereJointPain()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Severe joint pain"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 238
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v1, "SCC"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isUnintendedPregnancy()V
    .locals 5

    .line 348
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getMaritalStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getMaritalStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MERID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marital status is "

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getMaritalStatus()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v1, "UP"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isUpperRespiratoryTractInfection()V
    .locals 3

    .line 612
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 614
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getPresenceOfCough()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LT15D"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presence of cough"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Less than 15 days"

    .line 616
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v1, "URTI"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isUrinaryTractInfection()V
    .locals 3

    .line 514
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 516
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->isBurningUrination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Burning urination"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 519
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v1, "UTI"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isVaginitis()V
    .locals 4

    .line 533
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 535
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getVaginalDischarge()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    .line 536
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getVaginalDischarge()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MINDIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vaginal discharge"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyANCMorbidities;->getVaginalDischarge()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    const-string v1, "VAGIN"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ANCMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method
