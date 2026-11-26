.class public Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;
.super Ljava/lang/Object;
.source "ChildCareMorbiditiesService.java"


# instance fields
.field private dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

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
.method public constructor <init>(Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 26
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isAnemia()V

    .line 30
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isChronicCoughOrCold()V

    .line 31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isColdOrCough()V

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isDiarrhoeaWithSevereDehydration()V

    .line 34
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isDiarrhoeaWithSomeDehydration()V

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isDiarrhoeaWithNoDehydration()V

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isDysentery()V

    .line 37
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isNotVeryLowWeight()V

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isPneumonia()V

    .line 39
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isSevereAnemia()V

    .line 40
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isSevereMalnutrition()V

    .line 41
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isSeverePersistentDiarrhoea()V

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isSeverePneumoniaOrSeriousBacterialInfection()V

    .line 43
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isVeryLowWeight()V

    .line 44
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isVerySevereFebrileIllness()V

    .line 45
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->isMalaria()V

    return-void
.end method

.method private addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V
    .locals 0

    .line 1030
    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setMorbidityCode(Ljava/lang/String;)V

    .line 1031
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandRiskFactorAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setRiskFactorOfIdentifiedMorbidities(Ljava/lang/String;)V

    .line 1032
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isAnemia()V
    .locals 3

    .line 970
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 972
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesTheChildHavePalmerPoller()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 973
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesTheChildHavePalmerPoller()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMMLD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has palmer poller"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Some"

    .line 975
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 976
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    const-string v1, "ANEMA"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isChronicCoughOrCold()V
    .locals 11

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    new-instance v1, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 208
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isDoeschildHaveCoughOrDifficultBreathing()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " = "

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 209
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildNOTAbleToDrinkOrBreastfeed()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 210
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildVomitsEverything()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 211
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHadConvulsion()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 212
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIschildLethargicOrUnconscious()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 213
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 214
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 215
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfCough()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 216
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfCough()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0xe

    if-lt v2, v5, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 217
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x2

    invoke-static {v4, v2, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-ltz v10, :cond_0

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 218
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v9, v4, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v10, v5, v7

    if-gtz v10, :cond_0

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 219
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x32

    if-lt v5, v6, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 220
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v9, v4, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v10, v5, v7

    if-lez v10, :cond_2

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 221
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x28

    if-ge v5, v6, :cond_2

    .line 223
    :cond_1
    const-string v5, "Age is"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 226
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 227
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v5

    .line 228
    aget v6, v5, v4

    aget v7, v5, v9

    aget v2, v5, v2

    invoke-static {v6, v7, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 232
    const-string v2, "Respiratory rate"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 239
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_3

    .line 242
    const-string v2, "Child is not able to drink or breast feeding"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 247
    const-string v5, "Vomiting"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 252
    const-string v5, "Had convulsion"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 257
    const-string v5, "Is the child lethargic or Unconscious?"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 262
    const-string v2, "Has cough or difficult Breathing"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v0

    const-string v2, "Since more than 14 days"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v0, "CCC"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_3
    return-void
.end method

.method private isColdOrCough()V
    .locals 11

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    new-instance v1, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 128
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isDoeschildHaveCoughOrDifficultBreathing()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 129
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildVomitsEverything()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 130
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildNOTAbleToDrinkOrBreastfeed()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 131
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHadConvulsion()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 132
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIschildLethargicOrUnconscious()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 133
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 134
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 135
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfCough()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 136
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfCough()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 137
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 138
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6, v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-ltz v9, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 139
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5, v6, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 140
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 141
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v5, v6, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_2

    .line 143
    :cond_1
    const-string v2, "Age is"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 146
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 147
    invoke-static {v7, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v3

    .line 148
    aget v7, v3, v6

    aget v5, v3, v5

    aget v3, v3, v4

    invoke-static {v7, v5, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, "Respiratory rate"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getRespiratoryRate()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, "Child is not able to drink or breast feeding"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v3, "No"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 166
    const-string v4, "Vomiting"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 171
    const-string v4, "Had convulsion"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 176
    const-string v4, "Is the child lethargic or Unconscious?"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 181
    const-string v3, "Has cough or difficult Breathing"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v0

    const-string v2, "Since Less than 14 days"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v0, "COCOU"

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_2
    return-void
.end method

.method private isDiarrhoeaWithNoDehydration()V
    .locals 6

    .line 469
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 474
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    .line 476
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 477
    :goto_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 478
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->identifiedMorbidities:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 479
    const-string v4, "DWSD"

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DSD"

    .line 480
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has diarrhoea"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 494
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    const-string v2, "Since Less than 14 days"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    const-string v1, "DWND"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_3
    return-void
.end method

.method private isDiarrhoeaWithSevereDehydration()V
    .locals 11

    .line 280
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Yes"

    const/4 v3, 0x1

    const-string v4, " = "

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0xe

    if-ge v1, v6, :cond_a

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isSunkenEyes()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    const-string v6, "Sunken eyes"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 292
    :goto_0
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isLethargicOrUnconscious()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 293
    const-string v7, "Lethargic or unconscious"

    if-ne v6, v3, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 302
    :cond_1
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 308
    :cond_2
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesSkinGoesBackVerySlowly()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 309
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesSkinGoesBackVerySlowly()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VSWLY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 310
    const-string v7, "Very slowly"

    const-string v8, "Skin goes back very slowly (longer than 2 seconds)"

    if-ne v6, v3, :cond_3

    .line 311
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v5, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    .line 319
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 323
    :cond_4
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 331
    :cond_5
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 332
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NABTDR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 333
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DRNKP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 334
    :cond_6
    const-string v7, "Drinking"

    if-ne v6, v3, :cond_7

    .line 335
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    .line 343
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 347
    :cond_8
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v6, 0x1

    goto :goto_4

    :cond_9
    move v5, v6

    :cond_a
    :goto_4
    if-le v5, v3, :cond_b

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has diarrhoea"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    const-string v2, "Since Less than 14 days"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v1, "DWSD"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_b
    return-void
.end method

.method private isDiarrhoeaWithSomeDehydration()V
    .locals 11

    .line 377
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Yes"

    const/4 v3, 0x1

    const-string v4, " = "

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0xe

    if-ge v1, v6, :cond_a

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isRestlessOrIrritable()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    const-string v6, "Restless or irritable"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 389
    :goto_0
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isSunkenEyes()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 390
    const-string v7, "Sunken eyes"

    if-ne v6, v3, :cond_1

    .line 391
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 399
    :cond_1
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 406
    :cond_2
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 407
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v7

    const-string v8, "THRSTY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 408
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NRMLY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 409
    :cond_3
    const-string v7, "Drinking"

    if-ne v6, v3, :cond_4

    .line 410
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    .line 418
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 422
    :cond_5
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getStaticValueAndKeyMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getHowChildDrinks()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 431
    :cond_6
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesSkinGoesBackVerySlowly()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesSkinGoesBackVerySlowly()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SWLY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 432
    const-string v7, "Slowly"

    const-string v8, "Skin goes back very slowly (longer than 2 seconds)"

    if-ne v6, v3, :cond_7

    .line 433
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v5, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    .line 441
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 445
    :cond_8
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v6, 0x1

    goto :goto_4

    :cond_9
    move v5, v6

    :cond_a
    :goto_4
    if-le v5, v3, :cond_b

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has diarrhoea"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    const-string v2, "Since Less than 14 days"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v1, "DSD"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_b
    return-void
.end method

.method private isDysentery()V
    .locals 3

    .line 814
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 816
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isBloodInStools()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blood in stools"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Yes"

    .line 819
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v1, "DYSEN"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isMalaria()V
    .locals 12

    .line 833
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildNOTAbleToDrinkOrBreastfeed()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " = "

    const/4 v4, 0x0

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 842
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildVomitsEverything()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 843
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHadConvulsion()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 844
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIschildLethargicOrUnconscious()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 845
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIfMoreThan7DaysHasFeverBeenPresentEachDay()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 846
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isTheNeckStiff()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 848
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    const-string v5, "Measure axillary temperature"

    const-wide v6, 0x4058e00000000000L    # 99.5

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v9, v2

    cmpl-double v2, v9, v6

    if-ltz v2, :cond_0

    .line 849
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 856
    :goto_0
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    cmpl-double v11, v9, v6

    if-ltz v11, :cond_1

    .line 857
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 864
    :cond_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Yes"

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 865
    const-string v2, "Fever"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 873
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 874
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isTouchChildSkinOnAbdomenDoesItHaveFever()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 875
    const-string v2, "Touch child\'s skin on abdomen.Does it have fever?"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v8, v2

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_5

    .line 884
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 885
    const-string v2, "Child is not able to drink or breast feeding"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 891
    const-string v5, "Vomiting"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 897
    const-string v5, "Had convulsion"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 903
    const-string v5, "Is the child lethargic or Unconscious?"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 909
    const-string v5, "Fever has been present each day, for more than 7 days"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 915
    const-string v5, "Neck stiff"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 922
    const-string v1, "MALAR"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_5
    return-void
.end method

.method private isNotVeryLowWeight()V
    .locals 7

    .line 990
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 997
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isVisibleSevereWasting()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 998
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isVisibleSevereWasting()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 999
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isEdemaOfBothFeet()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 1000
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isEdemaOfBothFeet()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 1001
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMalnutritionGradeOfChild()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 1002
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMalnutritionGradeOfChild()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Green"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Malnutrition grade"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1006
    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1011
    const-string v2, "Visible severe wasting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1017
    const-string v4, "Edema of both feet"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    const-string v1, "NVW"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isPneumonia()V
    .locals 10

    .line 700
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 737
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isDoeschildHaveCoughOrDifficultBreathing()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 738
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildNOTAbleToDrinkOrBreastfeed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 739
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildVomitsEverything()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 740
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHadConvulsion()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 741
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIschildLethargicOrUnconscious()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 742
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHaveChestIndrawing()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 743
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getNumberOfBreathsIn1Minute()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 744
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 745
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getNumberOfBreathsIn1Minute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x32

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 746
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v5, v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-ltz v8, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 747
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v4, v5, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-lez v8, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 748
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getNumberOfBreathsIn1Minute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 749
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v4, v5, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMilliSeconds(III)J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-lez v8, :cond_2

    .line 750
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    const-string v2, "Has cough or difficult Breathing"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v6, "Yes"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 758
    const-string v6, "Child is not able to drink or breast feeding"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v6, "No"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 764
    const-string v7, "Chest Indrawing"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 770
    const-string v7, "Vomiting"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 776
    const-string v7, "Had convulsion"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 782
    const-string v7, "Is the child lethargic or Unconscious?"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 788
    const-string v6, "Age is"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 791
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getAgeOfChild()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 792
    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v6

    .line 793
    aget v7, v6, v5

    aget v4, v6, v4

    aget v3, v6, v3

    invoke-static {v7, v4, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 798
    const-string v3, "Respiratory rate"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getNumberOfBreathsIn1Minute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    const-string v1, "PNEUFC"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_2
    return-void
.end method

.method private isSevereAnemia()V
    .locals 3

    .line 679
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 681
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesTheChildHavePalmerPoller()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 682
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getDoesTheChildHavePalmerPoller()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SEVR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has palmer poller"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Severe"

    .line 685
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    const-string v1, "SAFC"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isSevereMalnutrition()V
    .locals 9

    .line 639
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isVisibleSevereWasting()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Yes"

    const/4 v4, 0x1

    const-string v5, " = "

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 647
    const-string v2, "Visible severe wasting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 653
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 654
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isEdemaOfBothFeet()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 655
    const-string v2, "Edema of both feet"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 661
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 662
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMalnutritionGradeOfChild()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Red"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 663
    const-string v2, "Malnutrition grade"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    .line 672
    const-string v1, "SMAL"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_3
    return-void
.end method

.method private isSeverePersistentDiarrhoea()V
    .locals 4

    .line 505
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getSinceHowManyDaysOfStools()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    const-string v2, "Child has more stools or Diarrhoea"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v1

    const-string v2, "Since more than 14 days"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const-string v1, "SPD"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isSeverePneumoniaOrSeriousBacterialInfection()V
    .locals 9

    .line 53
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isDoeschildHaveCoughOrDifficultBreathing()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Yes"

    const-string v4, " = "

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 58
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildNOTAbleToDrinkOrBreastfeed()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "Child is not able to drink or breast feeding"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 65
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 67
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildVomitsEverything()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    const-string v2, "Vomiting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 76
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHadConvulsion()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    const-string v2, "Had convulsion"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 83
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIschildLethargicOrUnconscious()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 86
    const-string v2, "Is the child lethargic or Unconscious?"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 92
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 94
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHaveChestIndrawing()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 95
    const-string v2, "Chest Indrawing"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v6, v2

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 102
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_6

    .line 104
    const-string v2, "Has cough or difficult Breathing"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v1, "SPSBI"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_6
    return-void
.end method

.method private isVeryLowWeight()V
    .locals 7

    .line 929
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 935
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isVisibleSevereWasting()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 936
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isVisibleSevereWasting()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 937
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isEdemaOfBothFeet()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 938
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isEdemaOfBothFeet()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 939
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMalnutritionGradeOfChild()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 940
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMalnutritionGradeOfChild()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Yellow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Malnutrition grade"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 947
    const-string v2, "Visible severe wasting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 953
    const-string v4, "Edema of both feet"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    const-string v1, "VLW"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_0
    return-void
.end method

.method private isVerySevereFebrileIllness()V
    .locals 11

    .line 529
    new-instance v0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;-><init>()V

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    const-wide v3, 0x4058e00000000000L    # 99.5

    const-string v5, "Yes"

    const-string v6, " = "

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 544
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    cmpl-double v2, v8, v3

    if-gez v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 545
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 546
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    cmpl-double v2, v8, v3

    if-gez v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 547
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 548
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    .line 549
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isTouchChildSkinOnAbdomenDoesItHaveFever()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 551
    :cond_4
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildNOTAbleToDrinkOrBreastfeed()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    .line 552
    const-string v2, "Child is not able to drink or breast feeding"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 558
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 559
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildVomitsEverything()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 560
    const-string v2, "Vomiting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 566
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 567
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isChildHadConvulsion()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 568
    const-string v2, "Had convulsion"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 574
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 575
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIschildLethargicOrUnconscious()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 576
    const-string v2, "Is the child lethargic or Unconscious?"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 582
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 583
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isIfMoreThan7DaysHasFeverBeenPresentEachDay()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 584
    const-string v2, "Fever has been present each day, for more than 7 days"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 590
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 591
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isTheNeckStiff()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 592
    const-string v2, "Neck stiff"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    move v8, v2

    .line 598
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_3
    if-eqz v8, :cond_f

    .line 603
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 604
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    const-string v8, "Measure axillary temperature"

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v9, v2

    cmpl-double v2, v9, v3

    if-ltz v2, :cond_b

    .line 605
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverNo()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 611
    :cond_b
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v9, v2

    cmpl-double v2, v9, v3

    if-ltz v2, :cond_c

    .line 612
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getMeasureAxillaryTemperatureIfFeverYes()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 618
    :cond_c
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_d

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->getFeverFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 619
    const-string v2, "Fever"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 626
    :cond_d
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->dtim:Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/DataBeanToIdentifyChildCareMorbidities;->isTouchChildSkinOnAbdomenDoesItHaveFever()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 627
    const-string v2, "Touch child\'s skin on abdomen.Does it have fever?"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_e
    const-string v1, "VSFI"

    invoke-direct {p0, v1, v0}, Lcom/argusoft/sewa/android/app/morbidities/service/ChildCareMorbiditiesService;->addIdentifiedMorbidityIntoList(Ljava/lang/String;Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;)V

    :cond_f
    return-void
.end method
