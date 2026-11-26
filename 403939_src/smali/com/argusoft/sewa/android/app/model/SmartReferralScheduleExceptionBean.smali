.class public Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "SmartReferralScheduleExceptionBean.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field private exceptionDate:Ljava/util/Date;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 161
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContactPersonName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->contactPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPersonNumber()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->contactPersonNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartmentId()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->departmentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDepartmentName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->departmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getDesignation()Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->designation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDesignationName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->designationName:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionDate()Ljava/util/Date;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->exceptionDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFromTime()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->fromTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthInfraId()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->healthInfraId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getToTime()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->toTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitsAssigned()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->unitsAssigned:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setContactPersonName(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->contactPersonName:Ljava/lang/String;

    return-void
.end method

.method public setContactPersonNumber(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->contactPersonNumber:Ljava/lang/String;

    return-void
.end method

.method public setDepartmentId(Ljava/lang/Integer;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->departmentId:Ljava/lang/Integer;

    return-void
.end method

.method public setDepartmentName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->departmentName:Ljava/lang/String;

    return-void
.end method

.method public setDesignation(Ljava/lang/Integer;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->designation:Ljava/lang/Integer;

    return-void
.end method

.method public setDesignationName(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->designationName:Ljava/lang/String;

    return-void
.end method

.method public setExceptionDate(Ljava/util/Date;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->exceptionDate:Ljava/util/Date;

    return-void
.end method

.method public setFromTime(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->fromTime:Ljava/lang/String;

    return-void
.end method

.method public setHealthInfraId(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->healthInfraId:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setToTime(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->toTime:Ljava/lang/String;

    return-void
.end method

.method public setUnitsAssigned(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->unitsAssigned:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->userId:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
