.class public Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "ChlorinationStatusBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private areaName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastServiceDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noOfTestConducted:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private positiveTests:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private serviceDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private villageId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private waterQualityId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastServiceDate()Ljava/util/Date;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->lastServiceDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNoOfTestConducted()Ljava/lang/Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->noOfTestConducted:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPositiveTests()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->positiveTests:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServiceDate()Ljava/util/Date;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->serviceDate:Ljava/util/Date;

    return-object v0
.end method

.method public getVillageId()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->villageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWaterQualityId()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->waterQualityId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLastServiceDate(Ljava/util/Date;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->lastServiceDate:Ljava/util/Date;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setNoOfTestConducted(Ljava/lang/Integer;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->noOfTestConducted:Ljava/lang/Integer;

    return-void
.end method

.method public setPositiveTests(Ljava/lang/Integer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->positiveTests:Ljava/lang/Integer;

    return-void
.end method

.method public setServiceDate(Ljava/util/Date;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->serviceDate:Ljava/util/Date;

    return-void
.end method

.method public setVillageId(Ljava/lang/Integer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->villageId:Ljava/lang/Integer;

    return-void
.end method

.method public setWaterQualityId(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->waterQualityId:Ljava/lang/Integer;

    return-void
.end method
