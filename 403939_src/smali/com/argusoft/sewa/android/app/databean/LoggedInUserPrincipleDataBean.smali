.class public Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;
.super Ljava/lang/Object;
.source "LoggedInUserPrincipleDataBean.java"


# instance fields
.field private amrutpanEnabled:Ljava/lang/Boolean;

.field private assignedFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private baselineModuleCourseIds:Ljava/lang/String;

.field private campaignSessionMasterBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private courseDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private covidTravellersInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private csvCoordinates:Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

.field private currentSheetVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dataQualityBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/DataQualityBean;",
            ">;"
        }
    .end annotation
.end field

.field private deletedFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deletedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fhsLastUpdateTime:Ljava/lang/String;

.field private fhwServiceStatusDtos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private healthInfraAssignedBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;",
            ">;"
        }
    .end annotation
.end field

.field private healthInfraTypeLocationBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private healthInfrastructures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;"
        }
    .end annotation
.end field

.field private incentiveMasterBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private incentiveMonthlyDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private incentiveOccurrenceBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private lastPregnancyStatusDate:Ljava/lang/Long;

.field private lmsUserMetaData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationMasterBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationTypeBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationsForFamilyDataDeletion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private memberCbacDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private migratedFamilyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private migratedMembersDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mobileLibraryDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mobileMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private newToken:Ljava/lang/String;

.field private notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private orphanedAndReverificationFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private pregnancyStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;",
            ">;"
        }
    .end annotation
.end field

.field private previousYearIncentives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;",
            ">;"
        }
    .end annotation
.end field

.field private rchVillageProfileDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private retrievedAnnouncements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private retrievedLabels:Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

.field private retrievedListValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private retrievedVillageAndChildLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private retrievedXlsData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private schools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;"
        }
    .end annotation
.end field

.field private showYearEndSummary:Ljava/lang/String;

.field private smartReferralScheduleExceptionBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;",
            ">;"
        }
    .end annotation
.end field

.field private smartReferralScheduleMasterBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private updatedFamilyByDate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;"
        }
    .end annotation
.end field

.field private vbdsChlorinationStatusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmrutpanEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->amrutpanEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAssignedFamilies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->assignedFamilies:Ljava/util/List;

    return-object v0
.end method

.method public getBaselineModuleCourseIds()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->baselineModuleCourseIds:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignSessionMasterBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->campaignSessionMasterBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getCourseDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->courseDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getCovidTravellersInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->covidTravellersInfos:Ljava/util/List;

    return-object v0
.end method

.method public getCsvCoordinates()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->csvCoordinates:Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    return-object v0
.end method

.method public getCurrentSheetVersion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->currentSheetVersion:Ljava/util/Map;

    return-object v0
.end method

.method public getDataQualityBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/DataQualityBean;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->dataQualityBeans:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedFamilies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->deletedFamilies:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->deletedNotifications:Ljava/util/List;

    return-object v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->features:Ljava/util/List;

    return-object v0
.end method

.method public getFhsLastUpdateTime()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->fhsLastUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFhwServiceStatusDtos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->fhwServiceStatusDtos:Ljava/util/List;

    return-object v0
.end method

.method public getHealthInfraAssignedBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->healthInfraAssignedBeans:Ljava/util/List;

    return-object v0
.end method

.method public getHealthInfraTypeLocationBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->healthInfraTypeLocationBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getHealthInfrastructures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->healthInfrastructures:Ljava/util/List;

    return-object v0
.end method

.method public getIncentiveMasterBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->incentiveMasterBeans:Ljava/util/List;

    return-object v0
.end method

.method public getIncentiveMonthlyDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->incentiveMonthlyDetails:Ljava/util/List;

    return-object v0
.end method

.method public getIncentiveOccurrenceBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->incentiveOccurrenceBeans:Ljava/util/List;

    return-object v0
.end method

.method public getLastPregnancyStatusDate()Ljava/lang/Long;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->lastPregnancyStatusDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getLmsUserMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->lmsUserMetaData:Ljava/util/List;

    return-object v0
.end method

.method public getLocationMasterBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->locationMasterBeans:Ljava/util/List;

    return-object v0
.end method

.method public getLocationTypeBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationTypeBean;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->locationTypeBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getLocationsForFamilyDataDeletion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->locationsForFamilyDataDeletion:Ljava/util/List;

    return-object v0
.end method

.method public getMemberCbacDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->memberCbacDetails:Ljava/util/List;

    return-object v0
.end method

.method public getMigratedFamilyDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->migratedFamilyDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getMigratedMembersDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->migratedMembersDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getMobileLibraryDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->mobileLibraryDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getMobileMenus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MenuBean;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->mobileMenus:Ljava/util/List;

    return-object v0
.end method

.method public getNewToken()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->newToken:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->notifications:Ljava/util/List;

    return-object v0
.end method

.method public getOrphanedAndReverificationFamilies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->orphanedAndReverificationFamilies:Ljava/util/List;

    return-object v0
.end method

.method public getPregnancyStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->pregnancyStatus:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousYearIncentives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->previousYearIncentives:Ljava/util/List;

    return-object v0
.end method

.method public getRchVillageProfileDataBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->rchVillageProfileDataBeans:Ljava/util/List;

    return-object v0
.end method

.method public getRetrievedAnnouncements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedAnnouncements:Ljava/util/List;

    return-object v0
.end method

.method public getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedLabels:Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    return-object v0
.end method

.method public getRetrievedListValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedListValues:Ljava/util/List;

    return-object v0
.end method

.method public getRetrievedVillageAndChildLocations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;",
            ">;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedVillageAndChildLocations:Ljava/util/Map;

    return-object v0
.end method

.method public getRetrievedXlsData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedXlsData:Ljava/util/Map;

    return-object v0
.end method

.method public getSchools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->schools:Ljava/util/List;

    return-object v0
.end method

.method public getShowYearEndSummary()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->showYearEndSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartReferralScheduleExceptionBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->smartReferralScheduleExceptionBeans:Ljava/util/List;

    return-object v0
.end method

.method public getSmartReferralScheduleMasterBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->smartReferralScheduleMasterBeans:Ljava/util/List;

    return-object v0
.end method

.method public getUpdatedFamilyByDate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->updatedFamilyByDate:Ljava/util/List;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->users:Ljava/util/List;

    return-object v0
.end method

.method public getVbdsChlorinationStatusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->vbdsChlorinationStatusAreas:Ljava/util/List;

    return-object v0
.end method

.method public setAmrutpanEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->amrutpanEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setAssignedFamilies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->assignedFamilies:Ljava/util/List;

    return-void
.end method

.method public setBaselineModuleCourseIds(Ljava/lang/String;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->baselineModuleCourseIds:Ljava/lang/String;

    return-void
.end method

.method public setCampaignSessionMasterBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;",
            ">;)V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->campaignSessionMasterBeanList:Ljava/util/List;

    return-void
.end method

.method public setCourseDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;)V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->courseDataBeans:Ljava/util/List;

    return-void
.end method

.method public setCovidTravellersInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->covidTravellersInfos:Ljava/util/List;

    return-void
.end method

.method public setCsvCoordinates(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->csvCoordinates:Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    return-void
.end method

.method public setCurrentSheetVersion(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->currentSheetVersion:Ljava/util/Map;

    return-void
.end method

.method public setDataQualityBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/DataQualityBean;",
            ">;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->dataQualityBeans:Ljava/util/List;

    return-void
.end method

.method public setDeletedFamilies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->deletedFamilies:Ljava/util/List;

    return-void
.end method

.method public setDeletedNotifications(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->deletedNotifications:Ljava/util/List;

    return-void
.end method

.method public setFeatures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->features:Ljava/util/List;

    return-void
.end method

.method public setFhsLastUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->fhsLastUpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setFhwServiceStatusDtos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->fhwServiceStatusDtos:Ljava/util/List;

    return-void
.end method

.method public setHealthInfraAssignedBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;",
            ">;)V"
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->healthInfraAssignedBeans:Ljava/util/List;

    return-void
.end method

.method public setHealthInfraTypeLocationBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;",
            ">;)V"
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->healthInfraTypeLocationBeanList:Ljava/util/List;

    return-void
.end method

.method public setHealthInfrastructures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;)V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->healthInfrastructures:Ljava/util/List;

    return-void
.end method

.method public setIncentiveMasterBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;",
            ">;)V"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->incentiveMasterBeans:Ljava/util/List;

    return-void
.end method

.method public setIncentiveMonthlyDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;",
            ">;)V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->incentiveMonthlyDetails:Ljava/util/List;

    return-void
.end method

.method public setIncentiveOccurrenceBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;",
            ">;)V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->incentiveOccurrenceBeans:Ljava/util/List;

    return-void
.end method

.method public setLastPregnancyStatusDate(Ljava/lang/Long;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->lastPregnancyStatusDate:Ljava/lang/Long;

    return-void
.end method

.method public setLmsUserMetaData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;",
            ">;)V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->lmsUserMetaData:Ljava/util/List;

    return-void
.end method

.method public setLocationMasterBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->locationMasterBeans:Ljava/util/List;

    return-void
.end method

.method public setLocationTypeBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->locationTypeBeanList:Ljava/util/List;

    return-void
.end method

.method public setLocationsForFamilyDataDeletion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->locationsForFamilyDataDeletion:Ljava/util/List;

    return-void
.end method

.method public setMemberCbacDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->memberCbacDetails:Ljava/util/List;

    return-void
.end method

.method public setMigratedFamilyDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->migratedFamilyDataBeans:Ljava/util/List;

    return-void
.end method

.method public setMigratedMembersDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->migratedMembersDataBeans:Ljava/util/List;

    return-void
.end method

.method public setMobileLibraryDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;",
            ">;)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->mobileLibraryDataBeans:Ljava/util/List;

    return-void
.end method

.method public setMobileMenus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MenuBean;",
            ">;)V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->mobileMenus:Ljava/util/List;

    return-void
.end method

.method public setNewToken(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->newToken:Ljava/lang/String;

    return-void
.end method

.method public setNotifications(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->notifications:Ljava/util/List;

    return-void
.end method

.method public setOrphanedAndReverificationFamilies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->orphanedAndReverificationFamilies:Ljava/util/List;

    return-void
.end method

.method public setPregnancyStatus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;",
            ">;)V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->pregnancyStatus:Ljava/util/List;

    return-void
.end method

.method public setPreviousYearIncentives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;",
            ">;)V"
        }
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->previousYearIncentives:Ljava/util/List;

    return-void
.end method

.method public setRchVillageProfileDataBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->rchVillageProfileDataBeans:Ljava/util/List;

    return-void
.end method

.method public setRetrievedAnnouncements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedAnnouncements:Ljava/util/List;

    return-void
.end method

.method public setRetrievedLabels(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedLabels:Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    return-void
.end method

.method public setRetrievedListValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedListValues:Ljava/util/List;

    return-void
.end method

.method public setRetrievedVillageAndChildLocations(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/SurveyLocationMobDataBean;",
            ">;>;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedVillageAndChildLocations:Ljava/util/Map;

    return-void
.end method

.method public setRetrievedXlsData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;>;)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->retrievedXlsData:Ljava/util/Map;

    return-void
.end method

.method public setSchools(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;)V"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->schools:Ljava/util/List;

    return-void
.end method

.method public setShowYearEndSummary(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->showYearEndSummary:Ljava/lang/String;

    return-void
.end method

.method public setSmartReferralScheduleExceptionBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;",
            ">;)V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->smartReferralScheduleExceptionBeans:Ljava/util/List;

    return-void
.end method

.method public setSmartReferralScheduleMasterBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;",
            ">;)V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->smartReferralScheduleMasterBeans:Ljava/util/List;

    return-void
.end method

.method public setUpdatedFamilyByDate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->updatedFamilyByDate:Ljava/util/List;

    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->users:Ljava/util/List;

    return-void
.end method

.method public setVbdsChlorinationStatusAreas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;)V"
        }
    .end annotation

    .line 452
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->vbdsChlorinationStatusAreas:Ljava/util/List;

    return-void
.end method
