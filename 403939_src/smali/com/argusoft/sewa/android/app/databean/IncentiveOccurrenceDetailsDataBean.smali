.class public Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;
.super Ljava/lang/Object;
.source "IncentiveOccurrenceDetailsDataBean.java"


# instance fields
.field private firstOccurrenceOn:Ljava/util/Date;

.field private id:Ljava/lang/Integer;

.field private incentiveId:Ljava/lang/Integer;

.field private lastOccurrenceOn:Ljava/util/Date;

.field private modifiedOn:Ljava/util/Date;

.field private nextOccurrenceOn:Ljava/util/Date;

.field private userId:Ljava/lang/Integer;

.field private yearlyOccurrenceCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->id:Ljava/lang/Integer;

    .line 24
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->userId:Ljava/lang/Integer;

    .line 25
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->incentiveId:Ljava/lang/Integer;

    .line 26
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getFirstOccurrenceOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->firstOccurrenceOn:Ljava/util/Date;

    .line 27
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getLastOccurrenceOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->lastOccurrenceOn:Ljava/util/Date;

    .line 28
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getNextOccurrenceOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->nextOccurrenceOn:Ljava/util/Date;

    .line 29
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getYearlyOccurrenceCount()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->yearlyOccurrenceCount:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getModifiedOn()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getFirstOccurrenceOn()Ljava/util/Date;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->firstOccurrenceOn:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIncentiveId()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->incentiveId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastOccurrenceOn()Ljava/util/Date;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->lastOccurrenceOn:Ljava/util/Date;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getNextOccurrenceOn()Ljava/util/Date;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->nextOccurrenceOn:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYearlyOccurrenceCount()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->yearlyOccurrenceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public setFirstOccurrenceOn(Ljava/util/Date;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->firstOccurrenceOn:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIncentiveId(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->incentiveId:Ljava/lang/Integer;

    return-void
.end method

.method public setLastOccurrenceOn(Ljava/util/Date;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->lastOccurrenceOn:Ljava/util/Date;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNextOccurrenceOn(Ljava/util/Date;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->nextOccurrenceOn:Ljava/util/Date;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->userId:Ljava/lang/Integer;

    return-void
.end method

.method public setYearlyOccurrenceCount(Ljava/lang/Integer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->yearlyOccurrenceCount:Ljava/lang/Integer;

    return-void
.end method
