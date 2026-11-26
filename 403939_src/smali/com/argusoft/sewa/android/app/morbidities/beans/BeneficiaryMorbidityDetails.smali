.class public Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;
.super Ljava/lang/Object;
.source "BeneficiaryMorbidityDetails.java"


# instance fields
.field private beneficiaryId:Ljava/lang/String;

.field private beneficiaryName:Ljava/lang/String;

.field private beneficiaryType:Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeneficiaryId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryId:Ljava/lang/String;

    return-object v0
.end method

.method public getBeneficiaryName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryName:Ljava/lang/String;

    return-object v0
.end method

.method public getBeneficiaryType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifiedMorbidities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->identifiedMorbidities:Ljava/util/List;

    return-object v0
.end method

.method public setBeneficiaryId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryId:Ljava/lang/String;

    return-void
.end method

.method public setBeneficiaryName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryName:Ljava/lang/String;

    return-void
.end method

.method public setBeneficiaryType(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryType:Ljava/lang/String;

    return-void
.end method

.method public setIdentifiedMorbidities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->identifiedMorbidities:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeneficiaryMorbidityDetails{beneficiaryName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", beneficiaryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->beneficiaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifiedMorbidities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->identifiedMorbidities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
