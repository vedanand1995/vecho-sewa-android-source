.class public Lcom/argusoft/sewa/android/app/model/IncentiveMaster;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "IncentiveMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;
    }
.end annotation


# instance fields
.field private active:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private actualId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private additionalDetails:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private allowApproval:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private amount:Ljava/lang/Short;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ashaBudgetLine:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private countLimit:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private frequency:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private incentiveGroup:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private incentiveTitle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private manualType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private manualTypeEnum:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private maxOccurrence:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private multiplier:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private occurrenceFrequency:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private order:Ljava/lang/Short;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private queryForList:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private systemCalculated:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->actualId:Ljava/lang/Integer;

    .line 74
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->code:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->incentiveTitle:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getAshaBudgetLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->ashaBudgetLine:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->description:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getSystemCalculated()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->systemCalculated:Ljava/lang/Boolean;

    .line 79
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->frequency:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getAmount()Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->amount:Ljava/lang/Short;

    .line 81
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getAdditionalDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->additionalDetails:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getActive()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->active:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->modifiedOn:Ljava/util/Date;

    .line 84
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getMultiplier()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->multiplier:Ljava/lang/Boolean;

    .line 85
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->incentiveGroup:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getOrder()Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->order:Ljava/lang/Short;

    .line 87
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getManualType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->manualType:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getAllowApproval()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->allowApproval:Ljava/lang/Boolean;

    .line 89
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getQueryForList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->queryForList:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getOccurrenceFrequency()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->occurrenceFrequency:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getMaxOccurrence()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->maxOccurrence:Ljava/lang/Integer;

    .line 92
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getCountLimit()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->countLimit:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getActualId()Ljava/lang/Integer;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->actualId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAdditionalDetails()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->additionalDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowApproval()Ljava/lang/Boolean;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->allowApproval:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Short;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->amount:Ljava/lang/Short;

    return-object v0
.end method

.method public getAshaBudgetLine()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->ashaBudgetLine:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountLimit()Ljava/lang/Integer;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->countLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->frequency:Ljava/lang/String;

    return-object v0
.end method

.method public getIncentiveGroup()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->incentiveGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getIncentiveTitle()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->incentiveTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getManualType()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->manualType:Ljava/lang/String;

    return-object v0
.end method

.method public getManualTypeEnum()Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->manualTypeEnum:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    return-object v0
.end method

.method public getMaxOccurrence()Ljava/lang/Integer;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->maxOccurrence:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getMultiplier()Ljava/lang/Boolean;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->multiplier:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOccurrenceFrequency()Ljava/lang/Integer;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->occurrenceFrequency:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrder()Ljava/lang/Short;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->order:Ljava/lang/Short;

    return-object v0
.end method

.method public getQueryForList()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->queryForList:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemCalculated()Ljava/lang/Boolean;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->systemCalculated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->active:Ljava/lang/Boolean;

    return-void
.end method

.method public setActualId(Ljava/lang/Integer;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->actualId:Ljava/lang/Integer;

    return-void
.end method

.method public setAdditionalDetails(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->additionalDetails:Ljava/lang/String;

    return-void
.end method

.method public setAllowApproval(Ljava/lang/Boolean;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->allowApproval:Ljava/lang/Boolean;

    return-void
.end method

.method public setAmount(Ljava/lang/Short;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->amount:Ljava/lang/Short;

    return-void
.end method

.method public setAshaBudgetLine(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->ashaBudgetLine:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->code:Ljava/lang/String;

    return-void
.end method

.method public setCountLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->countLimit:Ljava/lang/Integer;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->description:Ljava/lang/String;

    return-void
.end method

.method public setFrequency(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->frequency:Ljava/lang/String;

    return-void
.end method

.method public setIncentiveGroup(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->incentiveGroup:Ljava/lang/String;

    return-void
.end method

.method public setIncentiveTitle(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->incentiveTitle:Ljava/lang/String;

    return-void
.end method

.method public setManualType(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->manualType:Ljava/lang/String;

    return-void
.end method

.method public setManualTypeEnum(Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->manualTypeEnum:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    return-void
.end method

.method public setMaxOccurrence(Ljava/lang/Integer;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->maxOccurrence:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setMultiplier(Ljava/lang/Boolean;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->multiplier:Ljava/lang/Boolean;

    return-void
.end method

.method public setOccurrenceFrequency(Ljava/lang/Integer;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->occurrenceFrequency:Ljava/lang/Integer;

    return-void
.end method

.method public setOrder(Ljava/lang/Short;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->order:Ljava/lang/Short;

    return-void
.end method

.method public setQueryForList(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->queryForList:Ljava/lang/String;

    return-void
.end method

.method public setSystemCalculated(Ljava/lang/Boolean;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->systemCalculated:Ljava/lang/Boolean;

    return-void
.end method
