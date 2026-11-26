.class public Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "HealthInfraTypeLocationBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private healthInfraTypeId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthInfraTypeName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationLevel:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getHealthInfraTypeId()Ljava/lang/Long;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;->healthInfraTypeId:Ljava/lang/Long;

    return-object v0
.end method

.method public getHealthInfraTypeName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;->healthInfraTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationLevel()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;->locationLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public setHealthInfraTypeId(Ljava/lang/Long;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;->healthInfraTypeId:Ljava/lang/Long;

    return-void
.end method

.method public setHealthInfraTypeName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;->healthInfraTypeName:Ljava/lang/String;

    return-void
.end method

.method public setLocationLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;->locationLevel:Ljava/lang/Integer;

    return-void
.end method
