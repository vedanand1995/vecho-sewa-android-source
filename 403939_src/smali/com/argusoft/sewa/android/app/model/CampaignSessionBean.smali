.class public Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;
.super Lcom/argusoft/sewa/android/app/model/BaseEntity;
.source "CampaignSessionBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field private configId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private endedOn:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private latitude:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private longitude:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mobileStartDate:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startedOn:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/model/BaseEntity;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->configId:Ljava/lang/Integer;

    .line 40
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->sessionId:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getStartedOn()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->startedOn:Ljava/lang/Long;

    .line 42
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getEndedOn()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->endedOn:Ljava/lang/Long;

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getLocationId()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->locationId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getConfigId()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->configId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndedOn()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->endedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->locationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileStartDate()Ljava/lang/Long;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->mobileStartDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedOn()Ljava/lang/Long;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->startedOn:Ljava/lang/Long;

    return-object v0
.end method

.method public setConfigId(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->configId:Ljava/lang/Integer;

    return-void
.end method

.method public setEndedOn(Ljava/lang/Long;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->endedOn:Ljava/lang/Long;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLocationId(Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->locationId:Ljava/lang/Integer;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setMobileStartDate(Ljava/lang/Long;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->mobileStartDate:Ljava/lang/Long;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setStartedOn(Ljava/lang/Long;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->startedOn:Ljava/lang/Long;

    return-void
.end method
