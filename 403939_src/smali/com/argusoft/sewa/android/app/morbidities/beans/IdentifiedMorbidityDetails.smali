.class public Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;
.super Ljava/lang/Object;
.source "IdentifiedMorbidityDetails.java"


# instance fields
.field private identifiedSymptoms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private morbidityCode:Ljava/lang/String;

.field private riskFactorOfIdentifiedMorbidities:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->identifiedSymptoms:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIdentifiedSymptoms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->identifiedSymptoms:Ljava/util/List;

    return-object v0
.end method

.method public getMorbidityCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->morbidityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->riskFactorOfIdentifiedMorbidities:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifiedSymptoms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->identifiedSymptoms:Ljava/util/List;

    return-void
.end method

.method public setMorbidityCode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->morbidityCode:Ljava/lang/String;

    return-void
.end method

.method public setRiskFactorOfIdentifiedMorbidities(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->riskFactorOfIdentifiedMorbidities:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdentifiedMorbidityDetails{MorbidityCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->morbidityCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandMorbidityNameAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", riskFactorOfIdentifiedMorbidities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->riskFactorOfIdentifiedMorbidities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifiedSymptoms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->identifiedSymptoms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
