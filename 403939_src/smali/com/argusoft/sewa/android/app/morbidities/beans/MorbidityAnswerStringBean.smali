.class public Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;
.super Ljava/lang/Object;
.source "MorbidityAnswerStringBean.java"


# instance fields
.field private beneficiaryMorbidityDetailses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;"
        }
    .end annotation
.end field

.field private familyUnderstand:Ljava/lang/String;

.field private morbidityAnswerString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->beneficiaryMorbidityDetailses:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->familyUnderstand:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->morbidityAnswerString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateMorbidityString()Ljava/lang/String;
    .locals 10

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->beneficiaryMorbidityDetailses:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->beneficiaryMorbidityDetailses:Ljava/util/List;

    sget-object v1, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortBeneficiaryMorbidityDetailsByBeneficiaryType:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->beneficiaryMorbidityDetailses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v4, "~1!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v4, "~2!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v4, "~3!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->familyUnderstand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v4, "~4!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 88
    const-string v5, "F~"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_0
    const-string v5, "T~5!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 99
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 100
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-static {v8, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 101
    aget-object v8, v8, v5

    .line 102
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v8, "@"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    .line 107
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 111
    :cond_1
    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 118
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBeneficiaryMorbidityDetailses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->beneficiaryMorbidityDetailses:Ljava/util/List;

    return-object v0
.end method

.method public getFamilyUnderstand()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->familyUnderstand:Ljava/lang/String;

    return-object v0
.end method

.method public getMorbidityAnswerString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->morbidityAnswerString:Ljava/lang/String;

    return-object v0
.end method

.method public setBeneficiaryMorbidityDetailses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->beneficiaryMorbidityDetailses:Ljava/util/List;

    return-void
.end method

.method public setFamilyUnderstand(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->familyUnderstand:Ljava/lang/String;

    return-void
.end method

.method public setMorbidityAnswerString(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/MorbidityAnswerStringBean;->morbidityAnswerString:Ljava/lang/String;

    return-void
.end method
