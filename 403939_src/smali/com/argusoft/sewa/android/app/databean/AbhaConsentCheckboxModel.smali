.class public Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;
.super Ljava/lang/Object;
.source "AbhaConsentCheckboxModel.java"


# instance fields
.field private isAadhaarSharingConsentGiven:Ljava/lang/Boolean;

.field private isAbhaUsageConsentGiven:Ljava/lang/Boolean;

.field private isAnonymizationConsentGiven:Ljava/lang/Boolean;

.field private isBeneficiaryConsentGiven:Ljava/lang/Boolean;

.field private isDocOtherThanAadhaarConsentGiven:Ljava/lang/Boolean;

.field private isHealthWorkerConsentGiven:Ljava/lang/Boolean;

.field private isSharingHealthRecordsConsentGiven:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAadhaarSharingConsentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAadhaarSharingConsentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAbhaUsageConsentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAbhaUsageConsentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAnonymizationConsentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAnonymizationConsentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBeneficiaryConsentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isBeneficiaryConsentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDocOtherThanAadhaarConsentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isDocOtherThanAadhaarConsentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHealthWorkerConsentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isHealthWorkerConsentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSharingHealthRecordsConsentGiven()Ljava/lang/Boolean;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isSharingHealthRecordsConsentGiven:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAadhaarSharingConsentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAadhaarSharingConsentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setAbhaUsageConsentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAbhaUsageConsentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnonymizationConsentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAnonymizationConsentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setBeneficiaryConsentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isBeneficiaryConsentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setDocOtherThanAadhaarConsentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isDocOtherThanAadhaarConsentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setHealthWorkerConsentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isHealthWorkerConsentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public setSharingHealthRecordsConsentGiven(Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isSharingHealthRecordsConsentGiven:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbhaConsentCheckboxModel{isAadhaarSharingConsentGiven="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAadhaarSharingConsentGiven:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDocOtherThanAadhaarConsentGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isDocOtherThanAadhaarConsentGiven:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAbhaUsageConsentGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAbhaUsageConsentGiven:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSharingHealthRecordsConsentGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isSharingHealthRecordsConsentGiven:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAnonymizationConsentGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isAnonymizationConsentGiven:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHealthWorkerConsentGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isHealthWorkerConsentGiven:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBeneficiaryConsentGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/databean/AbhaConsentCheckboxModel;->isBeneficiaryConsentGiven:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
