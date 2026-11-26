.class public Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;
.super Ljava/lang/Object;
.source "IDSP2FamilyDataBean.java"


# instance fields
.field private anyIllness:Z

.field private anyOneCovidContact:Z

.field private anyOneTravelFromFamily:Z

.field private familyId:Ljava/lang/String;

.field private serviceDate:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDate()Ljava/lang/Long;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->serviceDate:Ljava/lang/Long;

    return-object v0
.end method

.method public isAnyIllness()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->anyIllness:Z

    return v0
.end method

.method public isAnyOneCovidContact()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->anyOneCovidContact:Z

    return v0
.end method

.method public isAnyOneTravelFromFamily()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->anyOneTravelFromFamily:Z

    return v0
.end method

.method public setAnyIllness(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->anyIllness:Z

    return-void
.end method

.method public setAnyOneCovidContact(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->anyOneCovidContact:Z

    return-void
.end method

.method public setAnyOneTravelFromFamily(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->anyOneTravelFromFamily:Z

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->familyId:Ljava/lang/String;

    return-void
.end method

.method public setServiceDate(Ljava/lang/Long;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->serviceDate:Ljava/lang/Long;

    return-void
.end method
