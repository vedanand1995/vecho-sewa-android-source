.class public Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;
.super Ljava/lang/Object;
.source "CampaignSessionDataBean.java"


# instance fields
.field private campaignActive:Ljava/lang/Boolean;

.field private campaignId:Ljava/lang/Integer;

.field private configId:Ljava/lang/Integer;

.field private dayNumber:Ljava/lang/Integer;

.field private endedOn:Ljava/lang/Long;

.field private healthInfra:Ljava/lang/String;

.field private healthInfraId:Ljava/lang/String;

.field private healthInfraTypeId:Ljava/lang/String;

.field private locationActive:Ljava/lang/Boolean;

.field private locationId:Ljava/lang/Integer;

.field private locationText:Ljava/lang/String;

.field private modifiedOn:Ljava/util/Date;

.field private rescheduleDtoObj:Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;

.field private sessionId:Ljava/lang/String;

.field private startedOn:Ljava/lang/Long;

.field private vaccinationType:Ljava/lang/String;

.field private weekNumber:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->sessionId:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getStartedOn()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->startedOn:Ljava/lang/Long;

    .line 37
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getEndedOn()Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->endedOn:Ljava/lang/Long;

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getCampaignId()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->campaignId:Ljava/lang/Integer;

    .line 41
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getConfigId()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->configId:Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->dayNumber:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getWeekNumber()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->weekNumber:Ljava/lang/Integer;

    .line 44
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getVaccinationType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->vaccinationType:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getHealthInfraTypeId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfraTypeId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getHealthInfraId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfraId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationId:Ljava/lang/Integer;

    .line 48
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getHealthInfra()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfra:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationText:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationActive()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationActive:Ljava/lang/Boolean;

    .line 51
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getCampaignActive()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->campaignActive:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getModifiedOn()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->modifiedOn:Ljava/util/Date;

    :cond_1
    return-void
.end method


# virtual methods
.method public getCampaignActive()Ljava/lang/Boolean;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->campaignActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConfigId()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->configId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDayNumber()Ljava/lang/Integer;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->dayNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndedOn()Ljava/lang/Long;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->endedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getHealthInfra()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfra:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthInfraId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfraId:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthInfraTypeId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfraTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationActive()Ljava/lang/Boolean;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocationText()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationText:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getRescheduleDtoObj()Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->rescheduleDtoObj:Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedOn()Ljava/lang/Long;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->startedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getVaccinationType()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->vaccinationType:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekNumber()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->weekNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCampaignActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->campaignActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setCampaignId(Ljava/lang/Integer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->campaignId:Ljava/lang/Integer;

    return-void
.end method

.method public setConfigId(Ljava/lang/Integer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->configId:Ljava/lang/Integer;

    return-void
.end method

.method public setDayNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->dayNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setEndedOn(Ljava/lang/Long;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->endedOn:Ljava/lang/Long;

    return-void
.end method

.method public setHealthInfra(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfra:Ljava/lang/String;

    return-void
.end method

.method public setHealthInfraId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfraId:Ljava/lang/String;

    return-void
.end method

.method public setHealthInfraTypeId(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->healthInfraTypeId:Ljava/lang/String;

    return-void
.end method

.method public setLocationActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setLocationText(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->locationText:Ljava/lang/String;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setRescheduleDtoObj(Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->rescheduleDtoObj:Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setStartedOn(Ljava/lang/Long;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->startedOn:Ljava/lang/Long;

    return-void
.end method

.method public setVaccinationType(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->vaccinationType:Ljava/lang/String;

    return-void
.end method

.method public setWeekNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->weekNumber:Ljava/lang/Integer;

    return-void
.end method
