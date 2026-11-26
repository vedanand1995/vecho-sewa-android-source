.class public Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "CampaignMasterBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private campaignActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private campaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private configId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dayNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthInfra:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthInfraId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private healthInfraTypeId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationText:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private modifiedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private vaccinationType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private weekNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->configId:Ljava/lang/Integer;

    .line 45
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getCampaignId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->campaignId:Ljava/lang/Integer;

    .line 46
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getCampaignActive()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->campaignActive:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->dayNumber:Ljava/lang/Integer;

    .line 48
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getWeekNumber()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->weekNumber:Ljava/lang/Integer;

    .line 49
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getVaccinationType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->vaccinationType:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getHealthInfraTypeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->healthInfraTypeId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationId:Ljava/lang/Integer;

    .line 52
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getLocationText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationText:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getLocationActive()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationActive:Ljava/lang/Boolean;

    .line 54
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCampaignActive()Ljava/lang/Boolean;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->campaignActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConfigId()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->configId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDayNumber()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->dayNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthInfra()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->healthInfra:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthInfraId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->healthInfraId:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthInfraTypeId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->healthInfraTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationActive()Ljava/lang/Boolean;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocationText()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationText:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedOn()Ljava/util/Date;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->modifiedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getVaccinationType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->vaccinationType:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekNumber()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->weekNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCampaignActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->campaignActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setCampaignId(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->campaignId:Ljava/lang/Integer;

    return-void
.end method

.method public setConfigId(Ljava/lang/Integer;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->configId:Ljava/lang/Integer;

    return-void
.end method

.method public setDayNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->dayNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setHealthInfra(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->healthInfra:Ljava/lang/String;

    return-void
.end method

.method public setHealthInfraId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->healthInfraId:Ljava/lang/String;

    return-void
.end method

.method public setHealthInfraTypeId(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->healthInfraTypeId:Ljava/lang/String;

    return-void
.end method

.method public setLocationActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setLocationText(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->locationText:Ljava/lang/String;

    return-void
.end method

.method public setModifiedOn(Ljava/util/Date;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->modifiedOn:Ljava/util/Date;

    return-void
.end method

.method public setVaccinationType(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->vaccinationType:Ljava/lang/String;

    return-void
.end method

.method public setWeekNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->weekNumber:Ljava/lang/Integer;

    return-void
.end method
