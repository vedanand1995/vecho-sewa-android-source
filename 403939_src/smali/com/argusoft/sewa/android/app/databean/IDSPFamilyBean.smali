.class public Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;
.super Ljava/lang/Object;
.source "IDSPFamilyBean.java"


# instance fields
.field private anyIllness:Z

.field private anyOneCovidContact:Z

.field private anyOneTravelFromFamily:Z

.field private familyId:Ljava/lang/String;

.field private serviceDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyIllness:Z

    .line 17
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyOneTravelFromFamily:Z

    return-void
.end method


# virtual methods
.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDate()Ljava/util/Date;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->serviceDate:Ljava/util/Date;

    return-object v0
.end method

.method public isAnyIllness()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyIllness:Z

    return v0
.end method

.method public isAnyOneCovidContact()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyOneCovidContact:Z

    return v0
.end method

.method public isAnyOneTravelFromFamily()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyOneTravelFromFamily:Z

    return v0
.end method

.method public setAnyIllness(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyIllness:Z

    return-void
.end method

.method public setAnyOneCovidContact(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyOneCovidContact:Z

    return-void
.end method

.method public setAnyOneTravelFromFamily(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->anyOneTravelFromFamily:Z

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setServiceDate(Ljava/util/Date;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSPFamilyBean;->serviceDate:Ljava/util/Date;

    return-void
.end method
