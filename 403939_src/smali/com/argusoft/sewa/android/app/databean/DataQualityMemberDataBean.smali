.class public Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;
.super Ljava/lang/Object;
.source "DataQualityMemberDataBean.java"


# instance fields
.field private childServiceVaccinationStatus:Z

.field private deliveryPlaceVerification:Z

.field private healthId:Ljava/lang/String;

.field private isDeliveryHappened:Z

.field private isPregnant:Z

.field private memberId:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private noOfChildGenderVerification:Z

.field private serviceType:Ljava/lang/String;

.field private ttInjectionReceivedStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHealthId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->healthId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->memberId:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTtInjectionReceivedStatus()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->ttInjectionReceivedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isChildServiceVaccinationStatus()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->childServiceVaccinationStatus:Z

    return v0
.end method

.method public isDeliveryHappened()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isDeliveryHappened:Z

    return v0
.end method

.method public isDeliveryPlaceVerification()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->deliveryPlaceVerification:Z

    return v0
.end method

.method public isNoOfChildGenderVerification()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->noOfChildGenderVerification:Z

    return v0
.end method

.method public isPregnant()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isPregnant:Z

    return v0
.end method

.method public setChildServiceVaccinationStatus(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->childServiceVaccinationStatus:Z

    return-void
.end method

.method public setDeliveryHappened(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isDeliveryHappened:Z

    return-void
.end method

.method public setDeliveryPlaceVerification(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->deliveryPlaceVerification:Z

    return-void
.end method

.method public setHealthId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->healthId:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->memberId:Ljava/lang/Long;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoOfChildGenderVerification(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->noOfChildGenderVerification:Z

    return-void
.end method

.method public setPregnant(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->isPregnant:Z

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->serviceType:Ljava/lang/String;

    return-void
.end method

.method public setTtInjectionReceivedStatus(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/DataQualityMemberDataBean;->ttInjectionReceivedStatus:Ljava/lang/String;

    return-void
.end method
