.class public Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "HealthInfraAssignedBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private districtId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private districtName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mobileNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private officerName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->districtId:Ljava/lang/Integer;

    .line 23
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->districtName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->mobileNumber:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->officerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDistrictId()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->districtId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->districtName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficerName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->officerName:Ljava/lang/String;

    return-object v0
.end method

.method public setDistrictId(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->districtId:Ljava/lang/Integer;

    return-void
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->districtName:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setOfficerName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;->officerName:Ljava/lang/String;

    return-void
.end method
