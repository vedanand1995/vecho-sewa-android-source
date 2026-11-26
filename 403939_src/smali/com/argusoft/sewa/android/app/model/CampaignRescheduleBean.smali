.class public Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "CampaignRescheduleBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private activeFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private configId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private newDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private oldDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rescheduleId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getRescheduleId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->rescheduleId:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->configId:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getOldDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->oldDate:Ljava/util/Date;

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getNewDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->newDate:Ljava/util/Date;

    .line 41
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->reason:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->modifiedOn:Ljava/util/Date;

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getActiveFlag()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->activeFlag:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getActiveFlag()Ljava/lang/Boolean;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->activeFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getConfigId()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->configId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getNewDate()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->newDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOldDate()Ljava/util/Date;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->oldDate:Ljava/util/Date;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRescheduleId()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->rescheduleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setActiveFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->activeFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setConfigId(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->configId:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNewDate(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->newDate:Ljava/util/Date;

    return-void
.end method

.method public setOldDate(Ljava/util/Date;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->oldDate:Ljava/util/Date;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->reason:Ljava/lang/String;

    return-void
.end method

.method public setRescheduleId(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;->rescheduleId:Ljava/lang/Integer;

    return-void
.end method
