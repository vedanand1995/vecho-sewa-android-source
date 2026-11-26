.class public Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "IncentiveOccurrenceBean.java"


# instance fields
.field private actualId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private firstOccurrenceOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private incentiveId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastOccurrenceOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nextOccurrenceOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private yearlyOccurrenceCount:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->actualId:Ljava/lang/Integer;

    .line 34
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->userId:Ljava/lang/Integer;

    .line 35
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->incentiveId:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getFirstOccurrenceOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->firstOccurrenceOn:Ljava/util/Date;

    .line 37
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getLastOccurrenceOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->lastOccurrenceOn:Ljava/util/Date;

    .line 38
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getNextOccurrenceOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->nextOccurrenceOn:Ljava/util/Date;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getYearlyOccurrenceCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->yearlyOccurrenceCount:Ljava/lang/Integer;

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFirstOccurrenceOn()Ljava/util/Date;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->firstOccurrenceOn:Ljava/util/Date;

    return-object v0
.end method

.method public getIncentiveId()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->incentiveId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastOccurrenceOn()Ljava/util/Date;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->lastOccurrenceOn:Ljava/util/Date;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getNextOccurrenceOn()Ljava/util/Date;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->nextOccurrenceOn:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYearlyOccurrenceCount()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->yearlyOccurrenceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setFirstOccurrenceOn(Ljava/util/Date;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->firstOccurrenceOn:Ljava/util/Date;

    return-void
.end method

.method public setIncentiveId(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->incentiveId:Ljava/lang/Integer;

    return-void
.end method

.method public setLastOccurrenceOn(Ljava/util/Date;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->lastOccurrenceOn:Ljava/util/Date;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNextOccurrenceOn(Ljava/util/Date;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->nextOccurrenceOn:Ljava/util/Date;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->userId:Ljava/lang/Integer;

    return-void
.end method

.method public setYearlyOccurrenceCount(Ljava/lang/Integer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->yearlyOccurrenceCount:Ljava/lang/Integer;

    return-void
.end method
