.class public Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;
.super Ljava/lang/Object;
.source "CampaignRescheduleDataBean.java"


# instance fields
.field private activeFlag:Ljava/lang/Boolean;

.field private configId:Ljava/lang/Integer;

.field private modifiedOn:Ljava/util/Date;

.field private newDate:Ljava/util/Date;

.field private oldDate:Ljava/util/Date;

.field private reason:Ljava/lang/String;

.field private rescheduleId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->rescheduleId:Ljava/lang/Integer;

    .line 20
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->configId:Ljava/lang/Integer;

    .line 21
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->oldDate:Ljava/util/Date;

    .line 22
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->newDate:Ljava/util/Date;

    .line 23
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->reason:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->activeFlag:Ljava/lang/Boolean;

    .line 25
    iput-object p7, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getActiveFlag()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->activeFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getConfigId()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->configId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getNewDate()Ljava/util/Date;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->newDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOldDate()Ljava/util/Date;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->oldDate:Ljava/util/Date;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRescheduleId()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->rescheduleId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setActiveFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->activeFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setConfigId(Ljava/lang/Integer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->configId:Ljava/lang/Integer;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setNewDate(Ljava/util/Date;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->newDate:Ljava/util/Date;

    return-void
.end method

.method public setOldDate(Ljava/util/Date;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->oldDate:Ljava/util/Date;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->reason:Ljava/lang/String;

    return-void
.end method

.method public setRescheduleId(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->rescheduleId:Ljava/lang/Integer;

    return-void
.end method
