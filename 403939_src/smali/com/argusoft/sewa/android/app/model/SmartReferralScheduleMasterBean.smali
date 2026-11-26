.class public Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "SmartReferralScheduleMasterBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private actualId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private contactPersonName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private contactPersonNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private departmentId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private departmentName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private designation:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private designationName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fromTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthInfraId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private toTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private unitsAssigned:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private weekDay:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContactPersonName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->contactPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPersonNumber()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->contactPersonNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartmentId()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->departmentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDepartmentName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->departmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesignation()Ljava/lang/Integer;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->designation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDesignationName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->designationName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromTime()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->fromTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthInfraId()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->healthInfraId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getToTime()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->toTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitsAssigned()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->unitsAssigned:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWeekDay()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->weekDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setContactPersonName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->contactPersonName:Ljava/lang/String;

    return-void
.end method

.method public setContactPersonNumber(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->contactPersonNumber:Ljava/lang/String;

    return-void
.end method

.method public setDepartmentId(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->departmentId:Ljava/lang/Integer;

    return-void
.end method

.method public setDepartmentName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->departmentName:Ljava/lang/String;

    return-void
.end method

.method public setDesignation(Ljava/lang/Integer;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->designation:Ljava/lang/Integer;

    return-void
.end method

.method public setDesignationName(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->designationName:Ljava/lang/String;

    return-void
.end method

.method public setFromTime(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->fromTime:Ljava/lang/String;

    return-void
.end method

.method public setHealthInfraId(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->healthInfraId:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setToTime(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->toTime:Ljava/lang/String;

    return-void
.end method

.method public setUnitsAssigned(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->unitsAssigned:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->userId:Ljava/lang/Integer;

    return-void
.end method

.method public setWeekDay(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->weekDay:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
