.class public Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;
.super Ljava/lang/Object;
.source "TechoServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/TechoService;


# static fields
.field private static final MAX_MODIFIED_ON:Ljava/lang/String; = "MAX(modifiedOn)"

.field private static final MAX_UPDATED_ON:Ljava/lang/String; = "MAX(updatedOn)"

.field private static final TAG:Ljava/lang/String; = "TechoServiceImpl"


# instance fields
.field announcementBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnnouncementBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field answerBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/AnswerBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field campaignRescheduleBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field courseBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsCourseBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/DataQualityBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fhwServiceDetailBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field formAccessibilityBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field healthInfraAssignedBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field healthInfraTypeLocationBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMaster;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field incentiveOccurrenceBeansDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field labelBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LabelBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field libraryBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LibraryBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field libraryDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

.field listValueBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/ListValueBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

.field lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

.field lmsUserMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lmsViewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field locationBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field locationCoordinatesBeansDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field locationTypeBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LocationTypeBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field loginBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/LoginBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field menuBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MenuBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mergedFamiliesBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MergedFamiliesBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field migratedFamilyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field migratedMembersBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field notificationBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/NotificationBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

.field pregnancyStatusBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field previousYearIncentiveDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field questionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/QuestionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field rchVillageProfileBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field readNotificationsBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field schoolBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sdf:Ljava/text/SimpleDateFormat;

.field private sdf2:Ljava/text/SimpleDateFormat;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

.field smartReferralScheduleExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field smartReferralScheduleMasterBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field userBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    .line 250
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    .line 251
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf2:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->retrieveFamiliesForFHSR()V

    return-void
.end method

.method private deleteFamiliesByLocationFHW(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2269
    const-string v0, "familyId"

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2270
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 2271
    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "locationId"

    .line 2272
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    .line 2274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 2275
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2278
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 2279
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2280
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2282
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 2283
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2284
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2286
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private deleteFamiliesFromDatabaseFHW(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2252
    const-string v0, "familyId"

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2253
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 2254
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v3

    .line 2257
    :try_start_0
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2258
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2259
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2260
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2262
    const-string v2, "TechoServiceImpl"

    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteNotificationsForUser(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2473
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2475
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "notificationId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2476
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    :cond_0
    return-void
.end method

.method private downloadAnnouncementFileFromServer()V
    .locals 7

    .line 2987
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    .line 2989
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2991
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 2994
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2995
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    .line 2996
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2997
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 2999
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3000
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3001
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->downloadFileFromServer(Ljava/lang/String;)Z

    const/4 v4, 0x0

    .line 3002
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setIsPlayedAnnouncement(I)V

    .line 3004
    :cond_1
    const-string v4, "T"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setIsDownloaded(Ljava/lang/String;)V

    .line 3005
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 3007
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private downloadFileFromServer(Ljava/lang/String;)Z
    .locals 8

    .line 2873
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2874
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/argusoft/sewa/android/app/util/WSConstants;->REST_TECHO_SERVICE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "getFile?fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2877
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 2878
    const-string v5, "application-version"

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    const-string v5, "userToken"

    sget-object v6, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v6, :cond_0

    .line 2880
    sget-object v6, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "null"

    .line 2879
    :goto_0
    invoke-virtual {v2, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2882
    :try_start_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2883
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2884
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "([+-]\\d{2})(\\d{2})$"

    const-string v7, "$1:$2"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2885
    const-string v6, "X-Client-Date-Time"

    invoke-virtual {v2, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 2887
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2889
    :goto_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 2890
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2892
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v6, 0x32

    invoke-direct {v2, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 2894
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    int-to-byte v6, v6

    .line 2895
    invoke-virtual {v2, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_2

    .line 2897
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2899
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2900
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2901
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2902
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 2900
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    .line 2904
    :cond_2
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v5, v2

    .line 2905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "sec"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    const/4 v2, 0x0

    .line 2910
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v1
.end method

.method private retrieveFamiliesForFHSR()V
    .locals 17

    move-object/from16 v1, p0

    .line 2120
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 2124
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2125
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "locationId"

    const-string v8, "TechoServiceImpl"

    const-string v9, "familyId"

    if-ge v6, v4, :cond_8

    aget-object v0, v3, v6

    .line 2126
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 2127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 2128
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2131
    :try_start_0
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 2132
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 2134
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2135
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2138
    :cond_1
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_2

    .line 2139
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v13, "MAX(updatedOn)"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 2140
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0, v7, v12}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryRawFirst()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2142
    aget-object v0, v0, v5

    if-eqz v0, :cond_2

    .line 2143
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 2147
    :goto_3
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v12, v11, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getFamiliesByLocationId(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    if-eqz v0, :cond_4

    .line 2150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2151
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2152
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2155
    :cond_3
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v12

    .line 2156
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    invoke-virtual {v13, v9, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2157
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2158
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v12

    .line 2159
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    invoke-virtual {v13, v9, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2160
    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2163
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2166
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 2167
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 2168
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2169
    new-instance v5, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v5, v15}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_6

    .line 2172
    :cond_5
    new-instance v5, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-direct {v5, v13}, Lcom/argusoft/sewa/android/app/model/FamilyBean;-><init>(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_5

    .line 2175
    :cond_6
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 2176
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v12}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    .line 2179
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2184
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2186
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2187
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    .line 2188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 2189
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2192
    :cond_9
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 2193
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3, v9, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2194
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2195
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 2196
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3, v9, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2197
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 2199
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_a
    const/4 v2, 0x0

    .line 2203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentlyDownloadingFamilyData:Ljava/lang/Boolean;

    :cond_b
    :goto_b
    return-void
.end method

.method private setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V
    .locals 2

    .line 367
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setImeiNumber(Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setPhoneNumber(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 370
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private storeAllAnnouncement(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2916
    const-string v0, "TechoServiceImpl"

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2919
    :try_start_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "announcementId"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getAnnouncementId()Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2920
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2921
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2924
    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v4, v3

    .line 2927
    :goto_1
    const-string v5, "F"

    if-nez v4, :cond_4

    .line 2928
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->isIsActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2929
    new-instance v4, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;-><init>()V

    .line 2930
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getAnnouncementId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setAnnouncementId(Ljava/lang/Long;)V

    .line 2931
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setDefaultLanguage(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2933
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setSubject(Ljava/lang/String;)V

    .line 2935
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getPublishedOn()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setPublishedOn(Ljava/lang/Long;)V

    .line 2936
    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setIsDownloaded(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setIsPlayedAnnouncement(I)V

    .line 2938
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setFileName(Ljava/lang/String;)V

    .line 2939
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2940
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setModifiedOn(Ljava/util/Date;)V

    .line 2943
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 2945
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2949
    :cond_4
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->isIsActive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2950
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setDefaultLanguage(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2952
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2953
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2954
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setSubject(Ljava/lang/String;)V

    .line 2957
    :cond_5
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getPublishedOn()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setPublishedOn(Ljava/lang/Long;)V

    .line 2958
    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setIsDownloaded(Ljava/lang/String;)V

    .line 2959
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setFileName(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2961
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AnnouncementMobDataBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->setModifiedOn(Ljava/util/Date;)V

    .line 2964
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v4}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .line 2966
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2969
    :cond_7
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/AnnouncementBean;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2971
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2975
    :cond_8
    :try_start_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v4}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    .line 2978
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2983
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->downloadAnnouncementFileFromServer()V

    return-void
.end method

.method private storeAllAssignedFamilies(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2295
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    const-class v3, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-static {v2, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2296
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    const-class v3, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-static {v2, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2298
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2299
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2300
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2301
    new-instance v6, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v6, v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2302
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2307
    :cond_1
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setPendingAbhaCount(I)V

    .line 2309
    new-instance v3, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/model/FamilyBean;-><init>(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 2310
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->setAssignedTo(Ljava/lang/Long;)V

    .line 2311
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2313
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 2314
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2316
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private storeAllDataQualityValues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/DataQualityBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2738
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2740
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2742
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/DataQualityBean;

    .line 2743
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/DataQualityBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2746
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 2747
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "memberId"

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2748
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2750
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2752
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private storeAllListValues(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2758
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez v0, :cond_0

    return-void

    .line 2762
    :cond_0
    const-string v0, "M"

    const-string v1, "F"

    const-string v2, "T"

    const-string v3, "TechoServiceImpl"

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2765
    :try_start_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v6, "field"

    const-string v7, "stateList"

    invoke-interface {v5, v6, v7}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 2766
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v5}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 2768
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2771
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    .line 2774
    :try_start_1
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v7, "idOfValue"

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getIdOfValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2775
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    .line 2776
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/ListValueBean;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2778
    :try_start_2
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getActive()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2779
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7, v6}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_2

    :cond_2
    move-object v6, v4

    goto :goto_3

    :catch_2
    move-exception v7

    move-object v6, v4

    .line 2783
    :goto_2
    invoke-static {v3, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2786
    :cond_3
    :goto_3
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getActive()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_5

    .line 2788
    new-instance v6, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    invoke-direct {v6}, Lcom/argusoft/sewa/android/app/model/ListValueBean;-><init>()V

    .line 2789
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getIdOfValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIdOfValue(I)V

    .line 2790
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getFormCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setFormCode(Ljava/lang/String;)V

    .line 2791
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setField(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getFieldType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setFieldType(Ljava/lang/String;)V

    .line 2793
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setValue(Ljava/lang/String;)V

    .line 2794
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getLastUpdateOfFieldValue()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setModifiedOn(Ljava/util/Date;)V

    .line 2796
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getFieldType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2797
    invoke-virtual {v6, v2}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIsDownloaded(Ljava/lang/String;)V

    goto :goto_4

    .line 2799
    :cond_4
    invoke-virtual {v6, v1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIsDownloaded(Ljava/lang/String;)V

    .line 2802
    :goto_4
    :try_start_3
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v6}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v5

    .line 2804
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2807
    :cond_5
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getFormCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setFormCode(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setField(Ljava/lang/String;)V

    .line 2809
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getFieldType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setFieldType(Ljava/lang/String;)V

    .line 2810
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setValue(Ljava/lang/String;)V

    .line 2811
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getLastUpdateOfFieldValue()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setModifiedOn(Ljava/util/Date;)V

    .line 2812
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getFieldType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2813
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2814
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2815
    invoke-virtual {v6, v1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIsDownloaded(Ljava/lang/String;)V

    goto :goto_5

    .line 2817
    :cond_6
    invoke-virtual {v6, v2}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIsDownloaded(Ljava/lang/String;)V

    goto :goto_5

    .line 2820
    :cond_7
    invoke-virtual {v6, v2}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIsDownloaded(Ljava/lang/String;)V

    .line 2825
    :goto_5
    :try_start_4
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v6}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v5

    .line 2827
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2835
    :cond_8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2836
    const-string v5, "fieldType"

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2840
    :try_start_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForFieldValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 2842
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v4

    :goto_6
    if-eqz p1, :cond_c

    .line 2845
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2846
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/ListValueBean;

    .line 2847
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2848
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 2849
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DOWNLOADED:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2850
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2851
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "File Not Exists for List Value : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " :: id :: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getIdOfValue()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :try_start_6
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->downloadFileFromServer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2854
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIsDownloaded(Ljava/lang/String;)V

    goto :goto_8

    .line 2856
    :cond_a
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/ListValueBean;->setIsDownloaded(Ljava/lang/String;)V

    .line 2858
    :goto_8
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 2860
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2864
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "File Exists for List value : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    :goto_9
    return-void
.end method

.method private storeAmrutpanEnabledFlag(Z)V
    .locals 3

    const-string v0, "amrutpanEnabled_"

    .line 3440
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3442
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3443
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3447
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    goto :goto_1

    .line 3444
    :cond_1
    :goto_0
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3445
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 3449
    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    :goto_2
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3450
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3452
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private storeBaselineModuleCourseIds(Ljava/lang/String;)V
    .locals 6

    .line 3803
    const-string v0, "TechoServiceImpl"

    const-string v1, "key"

    const-string v2, "baselineModuleCourseIds"

    .line 0
    const-string v3, "Baseline Module Course Ids : "

    .line 3803
    :try_start_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz p1, :cond_3

    .line 3804
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 3812
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    .line 3814
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3818
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    goto :goto_1

    .line 3815
    :cond_2
    :goto_0
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3816
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 3820
    :goto_1
    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3821
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 3805
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 3806
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 3807
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3808
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 3823
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private storeCampaignDetails(Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 3702
    const-string v0, "configId"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3704
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3705
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    .line 3707
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 3708
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    if-eqz p1, :cond_7

    .line 3710
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3714
    :try_start_0
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    .line 3715
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string v7, "startedOn"

    .line 3716
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 3717
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v5

    .line 3719
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 3720
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3723
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "sessionId"

    if-nez v5, :cond_1

    .line 3724
    :try_start_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v5

    .line 3725
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 3726
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 3729
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;

    .line 3730
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3731
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v5

    .line 3732
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3733
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 3735
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getSessionId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3736
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v5

    .line 3737
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3738
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 3741
    :cond_3
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getRescheduleDtoObj()Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3742
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignRescheduleBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v5

    .line 3743
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3744
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 3747
    :cond_4
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getCampaignActive()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getLocationActive()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3748
    new-instance v5, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {v5, v4}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;-><init>(Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3749
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getSessionId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3750
    new-instance v5, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-direct {v5, v4}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;-><init>(Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3753
    :cond_5
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getRescheduleDtoObj()Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getRescheduleDtoObj()Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;->getActiveFlag()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3754
    new-instance v5, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->getRescheduleDtoObj()Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;-><init>(Lcom/argusoft/sewa/android/app/databean/CampaignRescheduleDataBean;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3757
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 3758
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 3759
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignRescheduleBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3761
    const-string p2, "TechoServiceImpl"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method

.method private storeCbacDetailsToDatabaseForASHA(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2531
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2533
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2534
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;

    .line 2535
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;->getActualId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2538
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 2539
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualID"

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2540
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2544
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private storeChlorinationStatusAreas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3777
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3778
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    .line 3780
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getWaterQualityId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->setId(Ljava/lang/Integer;)V

    goto :goto_0

    .line 3782
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3784
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private storeCovidTravellersInfo(Ljava/util/List;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 3343
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p2

    const-class v0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    goto :goto_1

    .line 3345
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;

    .line 3346
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 3347
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CovidTravellersInfoBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3348
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    .line 3351
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->covidTravellersInfoBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3353
    const-string p2, "TechoServiceImpl"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private storeFhsLastUpdateTime(Ljava/lang/String;)V
    .locals 3

    .line 3423
    const-string v0, "fhsLastUpdateTime"

    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3424
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3428
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    goto :goto_1

    .line 3425
    :cond_1
    :goto_0
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3426
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    move-object v0, v1

    .line 3430
    :goto_1
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3431
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3433
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private storeFhwServiceDetailBeans(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 2365
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->fhwServiceDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2366
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    .line 2367
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->fhwServiceDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2370
    const-string v0, "TechoServiceImpl"

    const-string v1, "SQL Exception While Inserting FHW Service Details"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private storeHealthInfraAssignedDetails(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3789
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3792
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 3794
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfraAssignedBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/HealthInfraAssignedBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3795
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfraAssignedBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3797
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private storeHealthInfraTypeLocationDetails(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3672
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3674
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;

    .line 3675
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfraTypeLocationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 3676
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "healthInfraTypeId"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/HealthInfraTypeLocationBean;->getHealthInfraTypeId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3677
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    .line 3679
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfraTypeLocationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3681
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private storeHealthInfrastructureDetails(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;Z)V"
        }
    .end annotation

    .line 3080
    const-string v0, "lastUpdateDateForHealthInfrastructure"

    const-string v1, "lastUpdateDateForLocationMaster"

    const-string v2, "key"

    const-string v3, "TechoServiceImpl"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p2, :cond_0

    .line 3083
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 3084
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v5

    .line 3085
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string v7, "actualId"

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getActualId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3086
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    .line 3089
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3091
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 3098
    :try_start_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, v2, v1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3099
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 3105
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 3106
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3107
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_3

    .line 3100
    :cond_3
    :goto_2
    new-instance p2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p2}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3101
    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 3102
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3103
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 3110
    invoke-virtual {p2}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3115
    :goto_3
    :try_start_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3118
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_4

    .line 3119
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "MAX(modifiedOn)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v1

    .line 3120
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v4, p1, [Ljava/lang/String;

    invoke-interface {v2, v1, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3121
    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz p2, :cond_6

    .line 3126
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    .line 3132
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 3133
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3134
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_6

    .line 3127
    :cond_6
    :goto_5
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3128
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3130
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 3137
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method private storeIncentiveMasterBeans(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3474
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3478
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3480
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;

    .line 3481
    new-instance v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;-><init>(Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3482
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMasterDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3485
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 3486
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualId"

    invoke-virtual {v2, v3, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 3487
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 3489
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3491
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private storeIncentiveMonthlyDetailsDetails(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3514
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3518
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### All Incentive Details : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3520
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3522
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    .line 3523
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3524
    new-instance v3, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;-><init>(Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3527
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 3528
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualId"

    invoke-virtual {v2, v3, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 3529
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 3530
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3532
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private storeIncentiveOccurrenceDetails(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3537
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3541
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### All Incentive Occurrence Details : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3543
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;

    .line 3546
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3547
    new-instance v3, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;-><init>(Lcom/argusoft/sewa/android/app/databean/IncentiveOccurrenceDetailsDataBean;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3550
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveOccurrenceBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 3551
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualId"

    invoke-virtual {v2, v3, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 3552
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 3553
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveOccurrenceBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3555
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private storeLabelsDetailsToDatabase(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V
    .locals 3

    .line 2551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertQueryMobDataBeanToLabelModel(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Ljava/util/List;

    move-result-object p1

    .line 2552
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LabelBean;

    .line 2554
    :try_start_0
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->listLabelBeans:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 2555
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->listLabelBeans:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LabelBean;->getMapIndex()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LabelBean;

    if-eqz v1, :cond_0

    .line 2557
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LabelBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/LabelBean;->setId(Ljava/lang/Integer;)V

    .line 2558
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    .line 2560
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0

    .line 2563
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2566
    const-string v1, "TechoServiceImpl"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private storeLibraryDataBeans(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;",
            ">;)V"
        }
    .end annotation

    .line 3016
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;

    .line 3017
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "actualId"

    .line 3018
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getActualId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 3019
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LibraryBean;

    .line 3021
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INACTIVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3022
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_LIBRARY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3024
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz v1, :cond_0

    .line 3027
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    .line 3033
    new-instance v1, Lcom/argusoft/sewa/android/app/model/LibraryBean;

    invoke-direct {v1, v0}, Lcom/argusoft/sewa/android/app/model/LibraryBean;-><init>(Lcom/argusoft/sewa/android/app/databean/LibraryDataBean;)V

    .line 3034
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3038
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3040
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/LibraryDownloadServiceImpl;->retrieveNotDownloadedAndStartDownload()V

    return-void
.end method

.method private storeLmsCourses(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 3573
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3574
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### All Courses : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3576
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    .line 3577
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 3578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    .line 3579
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3580
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3581
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;->getArchived()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->setArchived(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 3585
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3586
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    .line 3587
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;-><init>(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)V

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_1

    .line 3589
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->lmsDownloadService:Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/LmsDownloadServiceImpl;->addLmsMediaFilesToDownloadList()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3591
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_2

    .line 3595
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->courseBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    const-class v0, Lcom/argusoft/sewa/android/app/model/LmsCourseBean;

    invoke-static {p1, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 3597
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private storeLmsUserMetaData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;",
            ">;)V"
        }
    .end annotation

    .line 3604
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->lmsUserMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    if-eqz p1, :cond_0

    .line 3605
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3606
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->lmsUserMetadataBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 3607
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLmsViewedMediaBean(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3610
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private storeLmsViewedMediaBean(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;",
            ">;)V"
        }
    .end annotation

    .line 3615
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;

    .line 3616
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;

    invoke-direct {v1, v0}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;-><init>(Lcom/argusoft/sewa/android/app/model/LmsUserMetaDataBean;)V

    .line 3617
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getLessonMetaData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getLessonMetaData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3618
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getLessonMetaData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;

    .line 3619
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->lmsService:Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getLessonId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/LmsServiceImpl;->getViewedLessonById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3621
    new-instance v3, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;-><init>()V

    .line 3622
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/LmsUserMetaData;->getCourseId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCourseId(Ljava/lang/Integer;)V

    .line 3623
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getModuleId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setModuleId(Ljava/lang/Integer;)V

    .line 3624
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getLessonId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLessonId(Ljava/lang/Integer;)V

    .line 3625
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getStartDate()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3626
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getStartDate()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setStartDate(Ljava/util/Date;)V

    .line 3628
    :cond_2
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getEndDate()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3629
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getEndDate()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setEndDate(Ljava/util/Date;)V

    .line 3631
    :cond_3
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getUserFeedback()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setUserFeedback(Ljava/lang/Integer;)V

    .line 3632
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getSessions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getSessions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3633
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getSessions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setSessions(Ljava/lang/String;)V

    .line 3635
    :cond_4
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getLastPausedOn()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setLastPausedOn(Ljava/lang/Integer;)V

    .line 3636
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsUserLessonMetaData;->getCompleted()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/LmsViewedMediaBean;->setCompleted(Ljava/lang/Boolean;)V

    .line 3638
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->lmsViewedMediaBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 3640
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private storeLocationBeansAssignedToUser(Ljava/util/Map;)V
    .locals 5
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

    .line 2208
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    const-class v3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-static {v2, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2210
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz p1, :cond_1

    .line 2214
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2215
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2216
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v3, v2, v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertLocationDataBeanToLocationModel(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2217
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 2218
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2223
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private storeLocationCoordinates(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationCoordinatesBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2229
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p1

    .line 2231
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2237
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 2239
    const-string v2, "lgd_code"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2240
    const-string v3, "coordinates_csv"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2242
    new-instance v3, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;-><init>()V

    .line 2243
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->setLgdCode(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->setCoordinates(Ljava/lang/String;)V

    .line 2245
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2248
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationCoordinatesBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    return-void
.end method

.method private storeLocationMasterBeans(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;Z)V"
        }
    .end annotation

    .line 3044
    const-string v0, "lastUpdateDateForLocationMaster"

    const-string v1, "TechoServiceImpl"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3045
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Location Master Count : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 3048
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 3049
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v3

    .line 3050
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "actualID"

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3051
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    .line 3054
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3056
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3063
    :cond_1
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string p2, "key"

    invoke-interface {p1, p2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3064
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 3070
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 3071
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3072
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_3

    .line 3065
    :cond_3
    :goto_2
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3066
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 3067
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3068
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 3075
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private storeLocationTypeDetails(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationTypeBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3687
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3689
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationTypeBean;

    .line 3690
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationTypeBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 3691
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationTypeBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3692
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    .line 3694
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationTypeBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3696
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private storeMemberRchIds(Ljava/util/List;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 3405
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 3406
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p2

    const-class v0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    goto :goto_1

    .line 3408
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;

    .line 3409
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 3410
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "memberId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberRchIdBean;->getMemberId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3411
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    .line 3414
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3416
    const-string p2, "TechoServiceImpl"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private storeMenuDetails(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MenuBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3649
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3650
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### All menus : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Menubean-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menu"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3654
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3656
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private storeMigrationDetails(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;

    .line 2502
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertMigratedMembersDataBeanToBean(Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;)Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    move-result-object v1

    .line 2503
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2507
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->migratedMembersBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    const-class v1, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    invoke-static {p1, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2508
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->migratedMembersBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2510
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private storeMigrationFamilyDetails(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2517
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;

    .line 2518
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertMigratedFamilyDataBeanToBean(Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;)Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    move-result-object v1

    .line 2519
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2523
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->migratedFamilyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    const-class v1, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    invoke-static {p1, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2524
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->migratedFamilyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2526
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private storeNotificationsForUser(Ljava/util/List;Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_2

    .line 2447
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2448
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 2450
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2453
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 2454
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "notificationId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2455
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2457
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 2458
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertNotificationDataBeanToNotificationBeanModel(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2459
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    goto :goto_1

    .line 2462
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p2

    const-class v0, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2464
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_2

    .line 2465
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2466
    invoke-static {}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->getInstance()Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertNotificationDataBeanToNotificationBeanModel(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2467
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private storeOrphanedAndReverificationFamiliesForFHW(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2375
    const-string v0, "Issue During Inserting Orphaned Family FHS Data"

    const-string v1, "TechoServiceImpl"

    const-string v2, "familyId"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    .line 2377
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_6

    .line 2381
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2382
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.argusoft.imtecho.family.state.orphan"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2383
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2385
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2389
    :cond_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2390
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v5

    .line 2391
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v6

    .line 2392
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2393
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2394
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2395
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2397
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2398
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2399
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2400
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v8, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v8, v6}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-interface {v7, v8}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_2

    .line 2403
    :cond_3
    new-instance v5, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-direct {v5, v3}, Lcom/argusoft/sewa/android/app/model/FamilyBean;-><init>(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 2404
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->setAssignedTo(Ljava/lang/Long;)V

    .line 2405
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v5}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2408
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2409
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 2413
    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2414
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2415
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2416
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 2417
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v5}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    .line 2418
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2419
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2420
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 2421
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7, v6}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_4

    .line 2428
    :cond_6
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2429
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2430
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2431
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v7, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v7, v5}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-interface {v6, v7}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_5

    .line 2434
    :cond_7
    new-instance v4, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/model/FamilyBean;-><init>(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 2435
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->setReverificationFlag(Ljava/lang/Boolean;)V

    .line 2436
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->setAssignedTo(Ljava/lang/Long;)V

    .line 2437
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 2440
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2441
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    :cond_8
    :goto_6
    return-void
.end method

.method private storePregnancyStatusBeans(Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;)V
    .locals 3

    .line 3317
    const-string v0, "lastUpdateDateForPregnancyStatus"

    :try_start_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getPregnancyStatus()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getPregnancyStatus()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3318
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->pregnancyStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3319
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->pregnancyStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getPregnancyStatus()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 3322
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3324
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3330
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 3331
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLastPregnancyStatusDate()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3332
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_1

    .line 3325
    :cond_1
    :goto_0
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3326
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 3327
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLastPregnancyStatusDate()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3328
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3336
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private storePreviousYearIncentives(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3496
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3499
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### All Incentive Details : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3501
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;

    .line 3504
    new-instance v2, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;

    invoke-direct {v2, v1}, Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;-><init>(Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3506
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->previousYearIncentiveDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3508
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private storeRchVillageProfileBeanFromServer(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2482
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2483
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;

    .line 2484
    new-instance v2, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;-><init>()V

    .line 2485
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/RchVillageProfileDataBean;->getVillage()Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LocationDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->setVillageId(Ljava/lang/Integer;)V

    .line 2486
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;->setRchVillageProfileDto(Ljava/lang/String;)V

    .line 2487
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2489
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2490
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->rchVillageProfileBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    const-class v1, Lcom/argusoft/sewa/android/app/model/RchVillageProfileBean;

    invoke-static {p1, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2491
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->rchVillageProfileBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2494
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private storeSchoolDetails(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3177
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 3180
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 3181
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 3182
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "actualId"

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3183
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    .line 3186
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3188
    const-string p2, "TechoServiceImpl"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private storeSmartReferralExceptionDetails(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3160
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3162
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->smartReferralScheduleExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p2

    const-class v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3163
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->smartReferralScheduleExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3165
    const-string p2, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3169
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->smartReferralScheduleExceptionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    const-class p2, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3171
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private storeSmartReferralMasterDetails(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3144
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->smartReferralScheduleMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p2

    const-class v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3145
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->smartReferralScheduleMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3147
    const-string p2, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3151
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->smartReferralScheduleMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    const-class p2, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3153
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private storeUpdatedFamilyData(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)Z"
        }
    .end annotation

    .line 2321
    const-string v0, "familyId"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2325
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2326
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2328
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2329
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2330
    new-instance v8, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v8, v7}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2331
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2336
    :cond_1
    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setPendingAbhaCount(I)V

    .line 2338
    new-instance v5, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    invoke-direct {v5, v4}, Lcom/argusoft/sewa/android/app/model/FamilyBean;-><init>(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 2339
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->setAssignedTo(Ljava/lang/Long;)V

    .line 2340
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2343
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 2347
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2348
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2350
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object p1

    .line 2351
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 2352
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 2354
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I

    .line 2355
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2357
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method private storeUserDetails(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3560
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3563
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 3565
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->userBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 3566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->userBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3568
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private storeVersionBeanForBlockedImei(Z)V
    .locals 5

    .line 304
    const-string v0, "imeiBlocked"

    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 307
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 313
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_2

    .line 315
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 316
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 322
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 325
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private storeXlsDataToDatabaseForASHA(Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2628
    const-string v0, "entity"

    const-string v1, "ASHA SHEET VERSION"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2629
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "TechoServiceImpl"

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2630
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2631
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2633
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2636
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3, v5}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToQuestionBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2637
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v8, v7, v3, v5}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToAnswerBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2640
    :try_start_0
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v8

    .line 2641
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9, v0, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2642
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2644
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v8}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 2646
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    .line 2647
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v8}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_1

    .line 2650
    :cond_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v6

    .line 2651
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2652
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2654
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v5}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 2656
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    .line 2657
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v5}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 2660
    invoke-static {v4, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2661
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_6

    .line 2668
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v0, "key"

    .line 2669
    invoke-virtual {p1, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    if-nez p1, :cond_5

    .line 2671
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 2672
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 2674
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setVersion(Ljava/lang/String;)V

    .line 2675
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2677
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private storeXlsDataToDatabaseForAWW(Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2683
    const-string v0, "entity"

    const-string v1, "AWW SHEET VERSION"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2684
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "TechoServiceImpl"

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2685
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2686
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2688
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2691
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3, v5}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToQuestionBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2692
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v8, v7, v3, v5}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToAnswerBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2695
    :try_start_0
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v8

    .line 2696
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9, v0, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2697
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2699
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v8}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 2701
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    .line 2702
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v8}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_1

    .line 2705
    :cond_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v6

    .line 2706
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2707
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2709
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v5}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 2711
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    .line 2712
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v5}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 2715
    invoke-static {v4, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2716
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_6

    .line 2723
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v0, "key"

    .line 2724
    invoke-virtual {p1, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    if-nez p1, :cond_5

    .line 2726
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 2727
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 2729
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setVersion(Ljava/lang/String;)V

    .line 2730
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2732
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private storeXlsDataToDatabaseForFHW(Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ComponentTagBean;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2572
    const-string v0, "entity"

    const-string v1, "FHW SHEET VERSION"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2573
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "TechoServiceImpl"

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2574
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2575
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2577
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2580
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3, v5}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToQuestionBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2581
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaTransformer:Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;

    invoke-virtual {v8, v7, v3, v5}, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->convertComponentDataBeanToAnswerBeanModel(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2584
    :try_start_0
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v8

    .line 2585
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9, v0, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2586
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2588
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v8}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 2590
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/QuestionBean;

    .line 2591
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v8}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_1

    .line 2594
    :cond_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v6

    .line 2595
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 2596
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2598
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8, v6}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 2600
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/AnswerBean;

    .line 2601
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8, v6}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 2604
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Error in download sheet : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    invoke-static {v4, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2606
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_6

    .line 2612
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string v0, "key"

    .line 2613
    invoke-virtual {p1, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    if-nez p1, :cond_5

    .line 2615
    new-instance p1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 2616
    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 2618
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setVersion(Ljava/lang/String;)V

    .line 2619
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 2620
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sheet Version is set to  : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2622
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private storeYearEndSummaryFlag(Ljava/lang/String;)V
    .locals 3

    .line 3459
    const-string v0, "showYearEndSummary"

    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3460
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3464
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    goto :goto_1

    .line 3461
    :cond_1
    :goto_0
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 3462
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    move-object v0, v1

    .line 3466
    :goto_1
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 3467
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3469
    const-string v0, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public checkIfDeviceIsBlockedOrDeleteDatabase()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 260
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isBlocked"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v4, "isDatabaseDeleted"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :try_start_0
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 264
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    .line 268
    :cond_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 269
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v5, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->checkIfDeviceIsBlockedOrDeleteDatabase(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 271
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 272
    const-string v7, "isBlockDevice"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 273
    const-string v8, "isDeleteDatabase"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v7, :cond_1

    .line 274
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 275
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 276
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeVersionBeanForBlockedImei(Z)V

    .line 278
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteDatabaseFileFromLocal(Landroid/content/Context;)V

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    .line 279
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 280
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteDatabaseFileFromLocal(Landroid/content/Context;)V

    .line 283
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->removeEntryForDeviceOfIMEI(Ljava/lang/String;)V

    goto :goto_2

    .line 285
    :cond_2
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeVersionBeanForBlockedImei(Z)V

    goto :goto_2

    .line 288
    :cond_3
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeVersionBeanForBlockedImei(Z)V

    goto :goto_2

    .line 291
    :cond_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v4, "key"

    const-string v5, "imeiBlocked"

    invoke-interface {v2, v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 292
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 293
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 297
    :goto_1
    const-string v2, "TechoServiceImpl"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v0
.end method

.method public checkIfFeatureIsReleased()Z
    .locals 4

    const/4 v0, 0x0

    .line 3224
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v2, "key"

    const-string v3, "featuresList"

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3225
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3226
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 3227
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GEO_FENCING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3230
    const-string v2, "TechoServiceImpl"

    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public checkIfOfflineAnyFormFilledForFormType(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 3258
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 3262
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    .line 3263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    .line 3264
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getAnswerEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 3265
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3269
    const-string v1, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public checkIfOfflineAnyFormFilledForLocation(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 3298
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 3302
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    .line 3303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    .line 3304
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getLocationId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 3305
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3309
    const-string v1, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public checkIfOfflineAnyFormFilledForMember(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 3238
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 3242
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    .line 3243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    .line 3244
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getMemberId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 3245
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3249
    const-string v1, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 3278
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 3282
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    .line 3283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    .line 3284
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getMemberId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->getAnswerEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 3285
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3289
    const-string p2, "TechoServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public deleteDatabaseFileFromLocal(Landroid/content/Context;)V
    .locals 5

    .line 332
    :try_start_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/argusoft/sewa/android/app/util/SewaConstants;->DIR_DATABASE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 335
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 336
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 340
    const-string v0, "TechoServiceImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public deleteQuestionAndAnswersByFormCode(Ljava/lang/String;)V
    .locals 3

    .line 3359
    const-string v0, "entity"

    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 3360
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3361
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3363
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->questionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 3366
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 3367
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 3368
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->answerBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public fetchLocationMasterData()V
    .locals 11

    .line 376
    const-string v0, "TechoServiceImpl"

    .line 0
    const-string v1, "All Location Master Count : "

    const-string v2, "Data from Location Master API retrieved in : "

    .line 376
    :try_start_0
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 378
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_1

    .line 379
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const-string v5, "MAX(modifiedOn)"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 380
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v6, v9, [Ljava/lang/String;

    invoke-interface {v5, v4, v6}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 381
    aget-object v4, v4, v9

    if-eqz v4, :cond_0

    .line 382
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v3, v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {v3, v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLocation(Ljava/lang/String;)V

    .line 390
    :goto_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 391
    const-string v5, "Calling Location Master Api"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v5, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getLocationMasterData(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Ljava/util/List;

    move-result-object v5

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDifferenceBetweenTwoDates(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForLocation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    const-class v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const/4 v1, 0x1

    .line 399
    invoke-direct {p0, v5, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationMasterBeans(Ljava/util/List;Z)V

    goto :goto_1

    .line 401
    :cond_2
    invoke-direct {p0, v5, v9}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationMasterBeans(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 404
    const-string v2, "Network Issue During Fetching Data for User"

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 405
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getBaselineModuleCourseIds()Ljava/lang/String;
    .locals 3

    .line 3830
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v1, "key"

    const-string v2, "baselineModuleCourseIds"

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3831
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3832
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3835
    const-string v1, "TechoServiceImpl"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataForASHA()V
    .locals 11

    .line 876
    const-string v0, "ASHA SHEET VERSION"

    const-string v1, "key"

    const-string v2, "TechoServiceImpl"

    .line 0
    const-string v3, "Available Space (in MB) : "

    .line 876
    :try_start_0
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 877
    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 878
    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 879
    const-string v5, "H"

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 880
    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 881
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 882
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 884
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v5, :cond_0

    .line 885
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 886
    sget-object v5, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 887
    sget-object v5, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 891
    :cond_0
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    mul-long v6, v6, v8

    const-wide/32 v8, 0x100000

    .line 893
    div-long/2addr v6, v8

    .line 894
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 897
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 898
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    const-string v6, "MAX(updatedOn)"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 899
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 900
    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 901
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForFamily(Ljava/lang/String;)V

    .line 904
    :cond_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "MAX(modifiedOn)"

    cmp-long v10, v5, v7

    if-lez v10, :cond_3

    .line 905
    :try_start_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 906
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 907
    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 908
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveMaster(Ljava/lang/Long;)V

    goto :goto_0

    .line 910
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveMaster(Ljava/lang/Long;)V

    .line 913
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_5

    .line 914
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 915
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 916
    aget-object v5, v5, v3

    if-eqz v5, :cond_4

    .line 917
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveDetails(Ljava/lang/Long;)V

    goto :goto_1

    .line 919
    :cond_4
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveDetails(Ljava/lang/Long;)V

    .line 924
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveOccurrenceBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_7

    .line 925
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveOccurrenceBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 926
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveOccurrenceBeansDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 927
    aget-object v5, v5, v3

    if-eqz v5, :cond_6

    .line 928
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveOccurrenceDetails(Ljava/lang/Long;)V

    goto :goto_2

    .line 930
    :cond_6
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveOccurrenceDetails(Ljava/lang/Long;)V

    .line 935
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_9

    .line 936
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 937
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberCbacDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 938
    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    .line 939
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForCbacDetails(Ljava/lang/Long;)V

    goto :goto_3

    .line 941
    :cond_8
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForCbacDetails(Ljava/lang/Long;)V

    goto :goto_3

    .line 944
    :cond_9
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForCbacDetails(Ljava/lang/Long;)V

    .line 947
    :goto_3
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_b

    .line 948
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 949
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 950
    aget-object v5, v5, v3

    if-eqz v5, :cond_a

    .line 951
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    goto :goto_4

    .line 953
    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    .line 957
    :cond_b
    :goto_4
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_d

    .line 958
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 959
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 960
    aget-object v5, v5, v3

    if-eqz v5, :cond_c

    .line 961
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    goto :goto_5

    .line 963
    :cond_c
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    .line 967
    :cond_d
    :goto_5
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_f

    .line 968
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 969
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 970
    aget-object v5, v5, v3

    if-eqz v5, :cond_e

    .line 971
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_6

    .line 973
    :cond_e
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_6

    .line 976
    :cond_f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    .line 979
    :goto_6
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_11

    .line 980
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 981
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 982
    aget-object v5, v5, v3

    if-eqz v5, :cond_10

    .line 983
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_7

    .line 985
    :cond_10
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_7

    .line 988
    :cond_11
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    .line 991
    :goto_7
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_13

    .line 992
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 993
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 994
    aget-object v5, v5, v3

    if-eqz v5, :cond_12

    .line 995
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForNotifications(Ljava/lang/Long;)V

    goto :goto_8

    .line 997
    :cond_12
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForNotifications(Ljava/lang/Long;)V

    .line 1001
    :cond_13
    :goto_8
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->readNotificationsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_15

    .line 1002
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->readNotificationsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v6

    .line 1004
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;

    .line 1005
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;->getNotificationId()Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1007
    :cond_14
    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setReadNotifications(Ljava/util/List;)V

    .line 1010
    :cond_15
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-lez v10, :cond_17

    .line 1011
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 1012
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v3, [Ljava/lang/String;

    invoke-interface {v6, v5, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 1013
    aget-object v5, v5, v3

    if-eqz v5, :cond_16

    .line 1014
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForCampaignSessions(Ljava/lang/Long;)V

    goto :goto_a

    .line 1016
    :cond_16
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForCampaignSessions(Ljava/lang/Long;)V

    .line 1020
    :cond_17
    :goto_a
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1021
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_18

    .line 1022
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1023
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1025
    :cond_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :goto_b
    invoke-virtual {v4, v6}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSheetNameVersionMap(Ljava/util/Map;)V

    .line 1041
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "lastUpdateDateForHealthInfrastructure"

    invoke-interface {v0, v1, v5}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_19

    .line 1042
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 1043
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1044
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-nez v0, :cond_19

    .line 1045
    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1049
    :cond_19
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_1a

    .line 1050
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1052
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 1073
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling Main API for bringing all data"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDetailsForAsha(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v0

    .line 1075
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data from Main API retrieved in : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1079
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assigned Families Count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAssignedFamilies(Ljava/util/List;)V

    .line 1084
    :cond_1b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 1085
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated Families Count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeUpdatedFamilyData(Ljava/util/List;)Z

    .line 1090
    :cond_1c
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForNotifications()Ljava/lang/Long;

    move-result-object v6
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "Notifications Count : "

    if-eqz v6, :cond_1e

    .line 1091
    :try_start_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted Notifications Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteNotificationsForUser(Ljava/util/List;)V

    .line 1095
    :cond_1d
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    .line 1096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForNotifications()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeNotificationsForUser(Ljava/util/List;Ljava/util/Date;)V

    goto :goto_c

    .line 1100
    :cond_1e
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeNotificationsForUser(Ljava/util/List;Ljava/util/Date;)V

    goto :goto_c

    .line 1104
    :cond_1f
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v5

    const-class v6, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-static {v5, v6}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1108
    :cond_20
    :goto_c
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "featuresList"

    if-eqz v5, :cond_23

    :try_start_3
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1109
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v1, v6}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1111
    const-string v5, ","

    if-eqz v1, :cond_22

    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_d

    .line 1117
    :cond_21
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 1118
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 1119
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_e

    .line 1112
    :cond_22
    :goto_d
    new-instance v1, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 1113
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 1115
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_e

    .line 1122
    :cond_23
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v5

    .line 1123
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1124
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 1128
    :goto_e
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMemberCbacDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMemberCbacDetails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CBAC Details Count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMemberCbacDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMemberCbacDetails()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeCbacDetailsToDatabaseForASHA(Ljava/util/List;)V

    .line 1134
    :cond_24
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Labels Count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLabelsDetailsToDatabase(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V

    .line 1140
    :cond_25
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List Values Count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllListValues(Ljava/util/List;)V

    .line 1146
    :cond_26
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Announcements Count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAnnouncement(Ljava/util/List;)V

    goto :goto_f

    .line 1150
    :cond_27
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->downloadAnnouncementFileFromServer()V

    .line 1154
    :goto_f
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XLS Data Count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCurrentSheetVersion()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeXlsDataToDatabaseForASHA(Ljava/util/Map;Ljava/util/Map;)V

    .line 1160
    :cond_28
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assigned Locations & Child Locations Count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationBeansAssignedToUser(Ljava/util/Map;)V

    .line 1166
    :cond_29
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Library Count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLibraryDataBeans(Ljava/util/List;)V

    .line 1171
    :cond_2a
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getShowYearEndSummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Year End Summary"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getShowYearEndSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getShowYearEndSummary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeYearEndSummaryFlag(Ljava/lang/String;)V

    .line 1176
    :cond_2b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getBaselineModuleCourseIds()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeBaselineModuleCourseIds(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForHealthInfrastructure()Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x1

    if-nez v1, :cond_2c

    .line 1189
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    const-class v3, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-static {v1, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All Health Infrastructures Count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    goto :goto_10

    .line 1193
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Health Infrastructures Count : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    .line 1198
    :goto_10
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileMenus()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMenuDetails(Ljava/util/List;)V

    .line 1201
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleMasterBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralMasterDetails(Ljava/util/List;Z)V

    .line 1204
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleExceptionBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralExceptionDetails(Ljava/util/List;Z)V

    .line 1207
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCourseDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLmsCourses(Ljava/util/List;)V

    .line 1209
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getIncentiveMasterBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeIncentiveMasterBeans(Ljava/util/List;)V

    .line 1211
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getIncentiveMonthlyDetails()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeIncentiveMonthlyDetailsDetails(Ljava/util/List;)V

    .line 1213
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getIncentiveOccurrenceBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeIncentiveOccurrenceDetails(Ljava/util/List;)V

    .line 1215
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getPreviousYearIncentives()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storePreviousYearIncentives(Ljava/util/List;)V

    .line 1218
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLmsUserMetaData()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLmsUserMetaData(Ljava/util/List;)V

    .line 1221
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfraTypeLocationBeanList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfraTypeLocationDetails(Ljava/util/List;)V

    .line 1224
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationTypeBeanList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationTypeDetails(Ljava/util/List;)V

    .line 1226
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfraAssignedBeans()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfraAssignedDetails(Ljava/util/List;)V

    .line 1228
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForCampaignSessions()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1229
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Campaign Count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeCampaignDetails(Ljava/util/List;Ljava/lang/Boolean;)V

    goto :goto_12

    .line 1234
    :cond_2d
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    const-class v3, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-static {v1, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1235
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    const-class v3, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-static {v1, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1236
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignRescheduleBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    const-class v3, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;

    invoke-static {v1, v3}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All Campaign Count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeCampaignDetails(Ljava/util/List;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    .line 1242
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_12
    return-void
.end method

.method public getDataForASHAFacilitator()V
    .locals 15

    .line 3843
    const-string v0, "ASHA SHEET VERSION"

    const-string v1, "TechoServiceImpl"

    .line 0
    const-string v2, "XLS Data Count : "

    const-string v3, "List Values Count : "

    const-string v4, "Labels Count : "

    const-string v5, "Data from Main API retrieved in : "

    const-string v6, "Calling Main API for bringing all data"

    const-string v7, "Available Space (in MB) : "

    .line 3843
    :try_start_0
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 3844
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 3845
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 3846
    const-string v9, "H"

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 3847
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 3848
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 3849
    invoke-direct {p0, v8}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 3851
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v9, :cond_0

    .line 3852
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 3853
    sget-object v9, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 3854
    sget-object v9, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 3858
    :cond_0
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3859
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v12

    mul-long v10, v10, v12

    const-wide/32 v12, 0x100000

    .line 3860
    div-long/2addr v10, v12

    .line 3861
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 3864
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "MAX(modifiedOn)"

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-lez v14, :cond_2

    .line 3865
    :try_start_1
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 3866
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v14, v11, [Ljava/lang/String;

    invoke-interface {v10, v9, v14}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 3867
    aget-object v9, v9, v11

    if-eqz v9, :cond_1

    .line 3868
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_0

    .line 3870
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_0

    .line 3873
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    .line 3876
    :goto_0
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v14, v9, v12

    if-lez v14, :cond_4

    .line 3877
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 3878
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v14, v11, [Ljava/lang/String;

    invoke-interface {v10, v9, v14}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 3879
    aget-object v9, v9, v11

    if-eqz v9, :cond_3

    .line 3880
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_1

    .line 3882
    :cond_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_1

    .line 3885
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    .line 3889
    :goto_1
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v14, v9, v12

    if-lez v14, :cond_5

    .line 3890
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 3892
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 3896
    :cond_5
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v10, "key"

    invoke-interface {v9, v10, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 3897
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    if-eqz v9, :cond_6

    .line 3898
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 3899
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3901
    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3903
    :goto_2
    invoke-virtual {v8, v10}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSheetNameVersionMap(Ljava/util/Map;)V

    .line 3907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDataForASHAFacilitator(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v0

    .line 3909
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLabelsDetailsToDatabase(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V

    .line 3919
    :cond_7
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllListValues(Ljava/util/List;)V

    .line 3925
    :cond_8
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-lez v5, :cond_a

    .line 3926
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v3

    .line 3927
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v5, v11, [Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3928
    aget-object v3, v3, v11

    if-eqz v3, :cond_9

    .line 3929
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveMaster(Ljava/lang/Long;)V

    goto :goto_3

    .line 3931
    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveMaster(Ljava/lang/Long;)V

    .line 3934
    :cond_a
    :goto_3
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-lez v5, :cond_c

    .line 3935
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v3

    .line 3936
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v5, v11, [Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 3937
    aget-object v3, v3, v11

    if-eqz v3, :cond_b

    .line 3938
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveDetails(Ljava/lang/Long;)V

    goto :goto_4

    .line 3940
    :cond_b
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveDetails(Ljava/lang/Long;)V

    .line 3945
    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getIncentiveMasterBeans()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeIncentiveMasterBeans(Ljava/util/List;)V

    .line 3947
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getIncentiveMonthlyDetails()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeIncentiveMonthlyDetailsDetails(Ljava/util/List;)V

    .line 3949
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getBaselineModuleCourseIds()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeBaselineModuleCourseIds(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCurrentSheetVersion()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeXlsDataToDatabaseForASHA(Ljava/util/Map;Ljava/util/Map;)V

    .line 3955
    :cond_d
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCourseDataBeans()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLmsCourses(Ljava/util/List;)V

    .line 3956
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLmsUserMetaData()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLmsUserMetaData(Ljava/util/List;)V

    .line 3957
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeUserDetails(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 3961
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method public getDataForAWW()V
    .locals 26

    move-object/from16 v1, p0

    .line 1877
    const-string v2, "key"

    const-string v3, "AWW SHEET VERSION"

    const-string v4, "TechoServiceImpl"

    .line 0
    const-string v5, "All Health Infrastructures Count : "

    const-string v6, "Library Count : "

    const-string v7, "Health Infrastructures Count : "

    const-string v8, "Assigned Locations & Child Locations Count : "

    const-string v9, "XLS Data Count : "

    const-string v10, "Announcements Count : "

    const-string v11, "List Values Count : "

    const-string v12, "Labels Count : "

    const-string v13, "Deleted Notifications Count : "

    const-string v14, "Updated Families Count : "

    const-string v15, "Assigned Families Count : "

    move-object/from16 v16, v7

    const-string v7, "Data from Main API retrieved in : "

    move-object/from16 v17, v5

    const-string v5, "Calling Main API for bringing all data"

    move-object/from16 v18, v6

    const-string v6, "Available Space (in MB) : "

    move-object/from16 v19, v8

    .line 1877
    :try_start_0
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 1878
    sget-object v20, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v20}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 1879
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 1880
    const-string v9, "H"

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 1881
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 1882
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 1883
    invoke-direct {v1, v8}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 1885
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v9, :cond_0

    .line 1886
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 1887
    sget-object v9, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 1888
    sget-object v9, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 1892
    :cond_0
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v23

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v9

    mul-long v23, v23, v9

    const-wide/32 v9, 0x100000

    .line 1894
    div-long v9, v23, v9

    move-object/from16 v20, v11

    .line 1895
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 1898
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    const-wide/16 v23, 0x0

    const/4 v6, 0x0

    cmp-long v11, v9, v23

    if-lez v11, :cond_1

    .line 1899
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    const-string v10, "MAX(updatedOn)"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 1900
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v11, v6, [Ljava/lang/String;

    invoke-interface {v10, v9, v11}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1901
    aget-object v9, v9, v6

    if-eqz v9, :cond_1

    .line 1902
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForFamily(Ljava/lang/String;)V

    .line 1906
    :cond_1
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "MAX(modifiedOn)"

    cmp-long v25, v9, v23

    if-lez v25, :cond_3

    .line 1907
    :try_start_1
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 1908
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v25, v12

    new-array v12, v6, [Ljava/lang/String;

    invoke-interface {v10, v9, v12}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1909
    aget-object v9, v9, v6

    if-eqz v9, :cond_2

    .line 1910
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForNotifications(Ljava/lang/Long;)V

    goto :goto_0

    .line 1912
    :cond_2
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForNotifications(Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    move-object/from16 v25, v12

    .line 1916
    :goto_0
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v12, v9, v23

    if-lez v12, :cond_5

    .line 1917
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 1918
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v12, v6, [Ljava/lang/String;

    invoke-interface {v10, v9, v12}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1919
    aget-object v9, v9, v6

    if-eqz v9, :cond_4

    .line 1920
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    goto :goto_1

    .line 1922
    :cond_4
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    .line 1926
    :cond_5
    :goto_1
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v12, v9, v23

    if-lez v12, :cond_7

    .line 1927
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 1928
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v12, v6, [Ljava/lang/String;

    invoke-interface {v10, v9, v12}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 1929
    aget-object v9, v9, v6

    if-eqz v9, :cond_6

    .line 1930
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_2

    .line 1932
    :cond_6
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_2

    .line 1935
    :cond_7
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    .line 1938
    :goto_2
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v12, v9, v23

    if-lez v12, :cond_9

    .line 1939
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 1940
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v12, v6, [Ljava/lang/String;

    invoke-interface {v10, v9, v12}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 1941
    aget-object v9, v9, v6

    if-eqz v9, :cond_8

    .line 1942
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_3

    .line 1944
    :cond_8
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_3

    .line 1947
    :cond_9
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    .line 1950
    :goto_3
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v12, v9, v23

    if-lez v12, :cond_b

    .line 1951
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v9

    .line 1952
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v11, v6, [Ljava/lang/String;

    invoke-interface {v10, v9, v11}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 1953
    aget-object v9, v9, v6

    if-eqz v9, :cond_a

    .line 1954
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    goto :goto_4

    .line 1956
    :cond_a
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    .line 1960
    :cond_b
    :goto_4
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v2, v3}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 1961
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    if-eqz v9, :cond_c

    .line 1962
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1963
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1965
    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    :goto_5
    invoke-virtual {v8, v10}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSheetNameVersionMap(Ljava/util/Map;)V

    .line 1981
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v9, "lastUpdateDateForHealthInfrastructure"

    invoke-interface {v3, v2, v9}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 1982
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1983
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1984
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v2, v9, v23

    if-nez v2, :cond_d

    .line 1985
    invoke-virtual {v8, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1989
    :cond_d
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v2, v9, v23

    if-lez v2, :cond_e

    .line 1990
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1992
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 2013
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v2, v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDetailsForAww(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v2

    .line 2015
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 2019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAssignedFamilies(Ljava/util/List;)V

    .line 2024
    :cond_f
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 2025
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeUpdatedFamilyData(Ljava/util/List;)Z

    .line 2030
    :cond_10
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForNotifications()Ljava/lang/Long;

    move-result-object v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "Notifications Count : "

    if-eqz v5, :cond_12

    .line 2031
    :try_start_2
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteNotificationsForUser(Ljava/util/List;)V

    .line 2035
    :cond_11
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForNotifications()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeNotificationsForUser(Ljava/util/List;Ljava/util/Date;)V

    goto :goto_6

    .line 2040
    :cond_12
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    .line 2041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeNotificationsForUser(Ljava/util/List;Ljava/util/Date;)V

    goto :goto_6

    .line 2044
    :cond_13
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v3

    const-class v5, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-static {v3, v5}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2049
    :cond_14
    :goto_6
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 2050
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLabelsDetailsToDatabase(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V

    .line 2055
    :cond_15
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 2056
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllListValues(Ljava/util/List;)V

    .line 2061
    :cond_16
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 2062
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAnnouncement(Ljava/util/List;)V

    goto :goto_7

    .line 2065
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->downloadAnnouncementFileFromServer()V

    .line 2069
    :goto_7
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 2070
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCurrentSheetVersion()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeXlsDataToDatabaseForAWW(Ljava/util/Map;Ljava/util/Map;)V

    .line 2075
    :cond_18
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 2076
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationBeansAssignedToUser(Ljava/util/Map;)V

    .line 2081
    :cond_19
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2082
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLibraryDataBeans(Ljava/util/List;)V

    .line 2096
    :cond_1a
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForHealthInfrastructure()Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    if-nez v3, :cond_1b

    .line 2097
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v3

    const-class v6, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-static {v3, v6}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 2098
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    goto :goto_8

    .line 2101
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v7, v16

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    .line 2106
    :goto_8
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleMasterBeans()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralMasterDetails(Ljava/util/List;Z)V

    .line 2109
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleExceptionBeans()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralExceptionDetails(Ljava/util/List;Z)V

    .line 2112
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileMenus()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMenuDetails(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_9
    move-object v2, v0

    .line 2115
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-void
.end method

.method public getDataForFHSR()V
    .locals 20

    move-object/from16 v1, p0

    .line 1250
    const-string v2, "TechoServiceImpl"

    .line 0
    const-string v3, "All Health Infrastructures Count : "

    const-string v4, "Library Count : "

    const-string v5, "Health Infrastructures Count : "

    const-string v6, "Announcements Count : "

    const-string v7, "Assigned Locations & Child Locations Count : "

    const-string v8, "Labels Count : "

    const-string v9, "List Values Count : "

    const-string v10, "Data from Main API retrieved in : "

    const-string v11, "Calling Main API for bringing all data"

    const-string v12, "Available Space (in MB) : "

    .line 1250
    :try_start_0
    new-instance v13, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v13}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 1251
    sget-object v14, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 1252
    sget-object v14, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 1253
    const-string v14, "H"

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 1254
    sget-object v14, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 1255
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 1256
    invoke-direct {v1, v13}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 1258
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v14, :cond_0

    .line 1259
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 1260
    sget-object v14, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 1261
    sget-object v14, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 1265
    :cond_0
    new-instance v14, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v15

    invoke-virtual {v14}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v17

    mul-long v15, v15, v17

    const-wide/32 v17, 0x100000

    .line 1267
    div-long v14, v15, v17

    move-object/from16 v16, v5

    .line 1268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 1271
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "MAX(modifiedOn)"

    const/4 v12, 0x0

    const-wide/16 v17, 0x0

    cmp-long v19, v14, v17

    if-lez v19, :cond_2

    .line 1272
    :try_start_1
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v14}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v14

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v14

    .line 1273
    iget-object v15, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v19, v3

    new-array v3, v12, [Ljava/lang/String;

    invoke-interface {v15, v14, v3}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1274
    aget-object v3, v3, v12

    if-eqz v3, :cond_1

    .line 1275
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    goto :goto_0

    .line 1277
    :cond_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    goto :goto_0

    :cond_2
    move-object/from16 v19, v3

    .line 1281
    :goto_0
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v14

    cmp-long v3, v14, v17

    if-lez v3, :cond_4

    .line 1282
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v3

    .line 1283
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v15, v12, [Ljava/lang/String;

    invoke-interface {v14, v3, v15}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1284
    aget-object v3, v3, v12

    if-eqz v3, :cond_3

    .line 1285
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_1

    .line 1287
    :cond_3
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_1

    .line 1290
    :cond_4
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    .line 1293
    :goto_1
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v14

    cmp-long v3, v14, v17

    if-lez v3, :cond_6

    .line 1294
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v3

    .line 1295
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v15, v12, [Ljava/lang/String;

    invoke-interface {v14, v3, v15}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1296
    aget-object v3, v3, v12

    if-eqz v3, :cond_5

    .line 1297
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    goto :goto_2

    .line 1299
    :cond_5
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    .line 1303
    :cond_6
    :goto_2
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v14

    cmp-long v3, v14, v17

    if-lez v3, :cond_8

    .line 1304
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v3

    .line 1305
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v14, v12, [Ljava/lang/String;

    invoke-interface {v5, v3, v14}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1306
    aget-object v3, v3, v12

    if-eqz v3, :cond_7

    .line 1307
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_3

    .line 1309
    :cond_7
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_3

    .line 1312
    :cond_8
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    .line 1327
    :goto_3
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "key"

    const-string v14, "lastUpdateDateForHealthInfrastructure"

    invoke-interface {v3, v5, v14}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1328
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1329
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1330
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v14

    cmp-long v3, v14, v17

    if-nez v3, :cond_9

    const/4 v3, 0x0

    .line 1331
    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1335
    :cond_9
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v14

    cmp-long v3, v14, v17

    if-lez v3, :cond_a

    .line 1336
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1338
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 1359
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v3, v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDetailsForFHSR(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v3

    .line 1361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllListValues(Ljava/util/List;)V

    .line 1370
    :cond_b
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationBeansAssignedToUser(Ljava/util/Map;)V

    .line 1376
    :cond_c
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLabelsDetailsToDatabase(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V

    .line 1382
    :cond_d
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAnnouncement(Ljava/util/List;)V

    goto :goto_4

    .line 1386
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->downloadAnnouncementFileFromServer()V

    .line 1390
    :goto_4
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLibraryDataBeans(Ljava/util/List;)V

    .line 1405
    :cond_f
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForHealthInfrastructure()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_10

    .line 1406
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v4

    const-class v6, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-static {v4, v6}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1407
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    goto :goto_5

    .line 1410
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v12}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    .line 1415
    :goto_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileMenus()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMenuDetails(Ljava/util/List;)V

    .line 1418
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleMasterBeans()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralMasterDetails(Ljava/util/List;Z)V

    .line 1421
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleExceptionBeans()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralExceptionDetails(Ljava/util/List;Z)V

    .line 1423
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentlyDownloadingFamilyData:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1424
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentlyDownloadingFamilyData:Ljava/lang/Boolean;

    .line 1425
    new-instance v3, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$1;

    invoke-direct {v3, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$1;-><init>(Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_6
    move-object v3, v0

    .line 1433
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_7
    return-void
.end method

.method public getDataForFHW()V
    .locals 11

    .line 413
    const-string v0, "FHW SHEET VERSION"

    const-string v1, "TechoServiceImpl"

    .line 0
    const-string v2, "Available Space (in MB) : "

    .line 413
    :try_start_0
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 414
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 415
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 416
    const-string v4, "F"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 417
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 418
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 419
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 421
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v4, :cond_0

    .line 422
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 423
    sget-object v4, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 424
    sget-object v4, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 428
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    mul-long v5, v5, v7

    const-wide/32 v7, 0x100000

    .line 430
    div-long/2addr v5, v7

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 434
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 435
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const-string v5, "MAX(updatedOn)"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 436
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v8, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v8}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 437
    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 438
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForFamily(Ljava/lang/String;)V

    .line 441
    :cond_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "MAX(modifiedOn)"

    cmp-long v9, v4, v6

    if-lez v9, :cond_3

    .line 442
    :try_start_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 443
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 444
    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 445
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForNotifications(Ljava/lang/Long;)V

    goto :goto_0

    .line 447
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForNotifications(Ljava/lang/Long;)V

    .line 450
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_5

    .line 451
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 452
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 453
    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    .line 454
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveMaster(Ljava/lang/Long;)V

    goto :goto_1

    .line 456
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveMaster(Ljava/lang/Long;)V

    .line 459
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_7

    .line 460
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 461
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->incentiveMonthlyDetailsBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 462
    aget-object v4, v4, v2

    if-eqz v4, :cond_6

    .line 463
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveDetails(Ljava/lang/Long;)V

    goto :goto_2

    .line 465
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForIncentiveDetails(Ljava/lang/Long;)V

    .line 469
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->migratedMembersBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_9

    .line 470
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->migratedMembersBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 471
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->migratedMembersBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 472
    aget-object v4, v4, v2

    if-eqz v4, :cond_8

    .line 473
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMigrationDetails(Ljava/lang/Long;)V

    goto :goto_3

    .line 475
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMigrationDetails(Ljava/lang/Long;)V

    .line 479
    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_b

    .line 480
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 481
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 482
    aget-object v4, v4, v2

    if-eqz v4, :cond_a

    .line 483
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForCampaignSessions(Ljava/lang/Long;)V

    goto :goto_4

    .line 485
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForCampaignSessions(Ljava/lang/Long;)V

    .line 489
    :cond_b
    :goto_4
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->readNotificationsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_d

    .line 490
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 491
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->readNotificationsBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v5

    .line 492
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;

    .line 493
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/ReadNotificationsBean;->getNotificationId()Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 495
    :cond_c
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setReadNotifications(Ljava/util/List;)V

    .line 498
    :cond_d
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_f

    .line 499
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 500
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->libraryBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 501
    aget-object v4, v4, v2

    if-eqz v4, :cond_e

    .line 502
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    goto :goto_6

    .line 504
    :cond_e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForLibrary(Ljava/lang/Long;)V

    .line 508
    :cond_f
    :goto_6
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_11

    .line 509
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 510
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 511
    aget-object v4, v4, v2

    if-eqz v4, :cond_10

    .line 512
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    goto :goto_7

    .line 514
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateOfAnnouncements(Ljava/lang/Long;)V

    .line 518
    :cond_11
    :goto_7
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_13

    .line 519
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 520
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 521
    aget-object v4, v4, v2

    if-eqz v4, :cond_12

    .line 522
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_8

    .line 524
    :cond_12
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_8

    .line 527
    :cond_13
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    .line 530
    :goto_8
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v9, v4, v6

    if-lez v9, :cond_15

    .line 531
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 532
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->dataQualityBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 533
    aget-object v4, v4, v2

    if-eqz v4, :cond_14

    .line 534
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForDataQualityValue(Ljava/lang/Long;)V

    goto :goto_9

    .line 536
    :cond_14
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForDataQualityValue(Ljava/lang/Long;)V

    goto :goto_9

    .line 539
    :cond_15
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForDataQualityValue(Ljava/lang/Long;)V

    .line 542
    :goto_9
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->pregnancyStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "key"

    cmp-long v10, v4, v6

    if-lez v10, :cond_16

    .line 543
    :try_start_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "lastUpdateDateForPregnancyStatus"

    invoke-interface {v4, v9, v5}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 544
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    .line 545
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForPregnancyStatus(Ljava/lang/Long;)V

    .line 549
    :cond_16
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v10, v4, v6

    if-lez v10, :cond_18

    .line 550
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 551
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v10, v2, [Ljava/lang/String;

    invoke-interface {v5, v4, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 552
    aget-object v4, v4, v2

    if-eqz v4, :cond_17

    .line 553
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_a

    .line 555
    :cond_17
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_a

    .line 558
    :cond_18
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    .line 561
    :goto_a
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v9, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 562
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_19

    .line 563
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_19

    .line 564
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 566
    :cond_19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :goto_b
    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSheetNameVersionMap(Ljava/util/Map;)V

    .line 578
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_1a

    .line 579
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v4, "lastUpdateDateForHealthInfrastructure"

    invoke-interface {v0, v9, v4}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 580
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 581
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 599
    :cond_1a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_1b

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 602
    aget-object v0, v0, v2

    if-eqz v0, :cond_1b

    .line 603
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForSchoolMaster(Ljava/lang/String;)V

    .line 607
    :cond_1b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_1c

    .line 608
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 610
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 615
    :cond_1c
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 616
    const-string v4, "Calling Main API for bringing all data"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDetails(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v4

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data from Main API retrieved in : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDifferenceBetweenTwoDates(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1d

    return-void

    .line 625
    :cond_1d
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedFamilies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedFamilies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete Families Count : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedFamilies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedFamilies()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteFamiliesFromDatabaseFHW(Ljava/util/List;)V

    .line 631
    :cond_1e
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assigned Families Count : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAssignedFamilies(Ljava/util/List;)V

    .line 638
    :cond_1f
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x1

    if-eqz v0, :cond_20

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated Families Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUpdatedFamilyByDate()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeUpdatedFamilyData(Ljava/util/List;)Z

    move-result v0

    goto :goto_c

    :cond_20
    const/4 v0, 0x1

    .line 643
    :goto_c
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationsForFamilyDataDeletion()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_21

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationsForFamilyDataDeletion()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21

    if-eqz v0, :cond_21

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete Families by Location Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationsForFamilyDataDeletion()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationsForFamilyDataDeletion()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteFamiliesByLocationFHW(Ljava/util/List;)V

    .line 650
    :cond_21
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFhwServiceStatusDtos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFhwServiceStatusDtos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FHW Service Status Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFhwServiceStatusDtos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFhwServiceStatusDtos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeFhwServiceDetailBeans(Ljava/util/List;)V

    goto :goto_d

    .line 654
    :cond_22
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->fhwServiceDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v6, Lcom/argusoft/sewa/android/app/model/FhwServiceDetailBean;

    invoke-static {v0, v6}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 658
    :goto_d
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getOrphanedAndReverificationFamilies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getOrphanedAndReverificationFamilies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Orphaned & Reverification Families Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getOrphanedAndReverificationFamilies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getOrphanedAndReverificationFamilies()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeOrphanedAndReverificationFamiliesForFHW(Ljava/util/List;)V

    .line 664
    :cond_23
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Assigned Locations & Child Locations Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationBeansAssignedToUser(Ljava/util/Map;)V

    .line 669
    :cond_24
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCsvCoordinates()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 670
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCsvCoordinates()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationCoordinates(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V

    .line 674
    :cond_25
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForNotifications()Ljava/lang/Long;

    move-result-object v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "Notifications Count : "

    if-eqz v0, :cond_27

    .line 675
    :try_start_3
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted Notifications Count : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDeletedNotifications()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->deleteNotificationsForUser(Ljava/util/List;)V

    .line 679
    :cond_26
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v0

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForNotifications()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeNotificationsForUser(Ljava/util/List;Ljava/util/Date;)V

    goto :goto_e

    .line 684
    :cond_27
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getNotifications()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeNotificationsForUser(Ljava/util/List;Ljava/util/Date;)V

    goto :goto_e

    .line 688
    :cond_28
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->notificationBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v6, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-static {v0, v6}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 693
    :cond_29
    :goto_e
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRchVillageProfileDataBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRchVillageProfileDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RCH Village Profiles Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRchVillageProfileDataBeans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRchVillageProfileDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeRchVillageProfileBeanFromServer(Ljava/util/List;)V

    .line 699
    :cond_2a
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedMembersDataBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedMembersDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrated Members Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedMembersDataBeans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedMembersDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMigrationDetails(Ljava/util/List;)V

    .line 705
    :cond_2b
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedFamilyDataBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedFamilyDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrated Family Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedFamilyDataBeans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMigratedFamilyDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMigrationFamilyDetails(Ljava/util/List;)V

    .line 711
    :cond_2c
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Labels Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLabelsDetailsToDatabase(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V

    .line 717
    :cond_2d
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XLS Data Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCurrentSheetVersion()Ljava/util/Map;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeXlsDataToDatabaseForFHW(Ljava/util/Map;Ljava/util/Map;)V

    .line 723
    :cond_2e
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List Values Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllListValues(Ljava/util/List;)V

    .line 729
    :cond_2f
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDataQualityBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDataQualityBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data Quality Values Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDataQualityBeans()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getDataQualityBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllDataQualityValues(Ljava/util/List;)V

    .line 735
    :cond_30
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storePregnancyStatusBeans(Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;)V

    .line 738
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Announcements Count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedAnnouncements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAnnouncement(Ljava/util/List;)V

    goto :goto_f

    .line 742
    :cond_31
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->downloadAnnouncementFileFromServer()V

    .line 745
    :goto_f
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v6, "featuresList"

    if-eqz v0, :cond_34

    :try_start_4
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 746
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v9, v6}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 748
    const-string v7, ","

    if-eqz v0, :cond_33

    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_32

    goto :goto_10

    .line 754
    :cond_32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 755
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 756
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_11

    .line 749
    :cond_33
    :goto_10
    new-instance v0, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 750
    invoke-virtual {v0, v6}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 752
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_11

    .line 759
    :cond_34
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v7, v9, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 761
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 774
    :goto_11
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForHealthInfrastructure()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_35

    .line 775
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-static {v0, v2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All Health Infrastructures Count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    goto :goto_12

    .line 779
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Health Infrastructures Count : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    .line 800
    :goto_12
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFhsLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHS Last Update Time : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFhsLastUpdateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFhsLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeFhsLastUpdateTime(Ljava/lang/String;)V

    .line 805
    :cond_36
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAmrutpanEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 806
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAmrutpanEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAmrutpanEnabledFlag(Z)V

    .line 809
    :cond_37
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getShowYearEndSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year End Summary"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getShowYearEndSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getShowYearEndSummary()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeYearEndSummaryFlag(Ljava/lang/String;)V

    .line 816
    :cond_38
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Library Count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileLibraryDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLibraryDataBeans(Ljava/util/List;)V

    .line 821
    :cond_39
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForCampaignSessions()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 822
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Campaign Count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeCampaignDetails(Ljava/util/List;Ljava/lang/Boolean;)V

    goto :goto_13

    .line 827
    :cond_3a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignMasterBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-static {v0, v2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 828
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignSessionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-static {v0, v2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 829
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->campaignRescheduleBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/argusoft/sewa/android/app/model/CampaignRescheduleBean;

    invoke-static {v0, v2}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All Campaign Count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCampaignSessionMasterBeanList()Ljava/util/List;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeCampaignDetails(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 836
    :cond_3b
    :goto_13
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCourseDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLmsCourses(Ljava/util/List;)V

    .line 839
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLmsUserMetaData()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLmsUserMetaData(Ljava/util/List;)V

    .line 842
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileMenus()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMenuDetails(Ljava/util/List;)V

    .line 845
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfraTypeLocationBeanList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfraTypeLocationDetails(Ljava/util/List;)V

    .line 848
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationTypeBeanList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationTypeDetails(Ljava/util/List;)V

    .line 851
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getIncentiveMasterBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeIncentiveMasterBeans(Ljava/util/List;)V

    .line 853
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getIncentiveMonthlyDetails()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeIncentiveMonthlyDetailsDetails(Ljava/util/List;)V

    .line 855
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeUserDetails(Ljava/util/List;)V

    .line 857
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfraAssignedBeans()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfraAssignedDetails(Ljava/util/List;)V

    .line 860
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getVbdsChlorinationStatusAreas()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeChlorinationStatusAreas(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    .line 867
    const-string v2, "Network Issue During Fetching Data for User"

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 868
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_1
    move-exception v0

    .line 863
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    const-string v1, "Database issue while refresh/login. Please contact your co-ordinator."

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 865
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v2, "SQL"

    invoke-interface {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method public getDataForMO()V
    .locals 15

    .line 1441
    const-string v0, "FHW SHEET VERSION"

    const-string v1, "TechoServiceImpl"

    .line 0
    const-string v2, "List Values Count : "

    const-string v3, "XLS Data Count : "

    const-string v4, "Assigned Locations & Child Locations Count : "

    const-string v5, "Assigned Families Count : "

    const-string v6, "Data from Main API retrieved in : "

    const-string v7, "Available Space (in MB) : "

    .line 1441
    :try_start_0
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v8}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 1442
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 1443
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 1444
    const-string v9, "F"

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 1445
    sget-object v9, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 1446
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 1447
    invoke-direct {p0, v8}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 1449
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v9, :cond_0

    .line 1450
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 1451
    sget-object v9, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 1452
    sget-object v9, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 1456
    :cond_0
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v12

    mul-long v10, v10, v12

    const-wide/32 v12, 0x100000

    .line 1458
    div-long/2addr v10, v12

    .line 1459
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 1462
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v9, "key"

    invoke-interface {v7, v9, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1463
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    if-eqz v7, :cond_1

    .line 1464
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1465
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1467
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    :goto_0
    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSheetNameVersionMap(Ljava/util/Map;)V

    .line 1480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_3

    .line 1481
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v7, "MAX(modifiedOn)"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v9, v10, [Ljava/lang/String;

    invoke-interface {v7, v0, v9}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1483
    aget-object v0, v0, v10

    if-eqz v0, :cond_2

    .line 1484
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_1

    .line 1486
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_1

    .line 1489
    :cond_3
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    .line 1492
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v9

    cmp-long v0, v9, v13

    if-lez v0, :cond_4

    .line 1493
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1495
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 1500
    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1501
    const-string v7, "Calling Main API for bringing all data"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDetailsForMO(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v7

    .line 1503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDifferenceBetweenTwoDates(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_5

    return-void

    .line 1509
    :cond_5
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getAssignedFamilies()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllAssignedFamilies(Ljava/util/List;)V

    .line 1514
    :cond_6
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationBeansAssignedToUser(Ljava/util/Map;)V

    .line 1520
    :cond_7
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCurrentSheetVersion()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeXlsDataToDatabaseForFHW(Ljava/util/Map;Ljava/util/Map;)V

    .line 1526
    :cond_8
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllListValues(Ljava/util/List;)V

    .line 1532
    :cond_9
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileMenus()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMenuDetails(Ljava/util/List;)V

    .line 1533
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationTypeBeanList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationTypeDetails(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1540
    const-string v2, "Network Issue During Fetching Data for User"

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 1541
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1536
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    const-string v1, "Database issue while refresh/login. Please contact your co-ordinator."

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 1538
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v2, "SQL"

    invoke-interface {v1, v0, v2}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getDataForMemberRchId()V
    .locals 7

    .line 3379
    const-string v0, "TechoServiceImpl"

    .line 3381
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 3382
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "MAX(modifiedOn)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v1

    .line 3383
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->memberRchIdBeanDao:Lcom/j256/ormlite/dao/Dao;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v2, v1, v6}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3384
    aget-object v1, v1, v5

    if-eqz v1, :cond_0

    .line 3385
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 3388
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMemberRchIds(Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3389
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3390
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMemberRchIds(Ljava/util/List;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3398
    const-string v2, "Network Issue During Fetching Data for User"

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 3399
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3394
    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3395
    const-string v0, "Database issue while refresh/login. Please contact your co-ordinator."

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 3396
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    const-string v2, "SQL"

    invoke-interface {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/SewaService;->storeException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDataForOA()V
    .locals 23

    move-object/from16 v1, p0

    .line 1716
    const-string v0, "FHW SHEET VERSION"

    const-string v2, "key"

    const-string v3, "TechoServiceImpl"

    .line 0
    const-string v4, "XLS Data Count : "

    const-string v5, "Assigned Locations & Child Locations Count : "

    const-string v6, "Labels Count : "

    const-string v7, "List Values Count : "

    const-string v8, "All Schools Count : "

    const-string v9, "Schools Count : "

    const-string v10, "All Health Infrastructures Count : "

    const-string v11, "Health Infrastructures Count : "

    const-string v12, "Data from Main API retrieved in : "

    const-string v13, "Calling Main API for bringing all data"

    const-string v14, "Available Space (in MB) : "

    .line 1716
    :try_start_0
    new-instance v15, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v15}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 1717
    sget-object v16, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 1718
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 1719
    const-string v4, "H"

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 1720
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 1721
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 1722
    invoke-direct {v1, v15}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 1724
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v4, :cond_0

    .line 1725
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 1726
    sget-object v4, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 1727
    sget-object v4, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 1731
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    move-object/from16 v18, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v19

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v21

    mul-long v19, v19, v21

    const-wide/32 v21, 0x100000

    move-object v6, v5

    .line 1733
    div-long v4, v19, v21

    move-object/from16 v16, v6

    .line 1734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 1737
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v5, "lastUpdateDateForHealthInfrastructure"

    invoke-interface {v4, v2, v5}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_1

    .line 1738
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1739
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1740
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v19

    cmp-long v4, v19, v5

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 1741
    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1746
    :cond_1
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "MAX(modifiedOn)"

    cmp-long v21, v19, v5

    if-lez v21, :cond_3

    .line 1747
    :try_start_1
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 1748
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->listValueBeanDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v21, v7

    new-array v7, v14, [Ljava/lang/String;

    invoke-interface {v6, v5, v7}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1749
    aget-object v5, v5, v14

    if-eqz v5, :cond_2

    .line 1750
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x0

    .line 1752
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    :goto_0
    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v21, v7

    .line 1755
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForListValue(Ljava/lang/Long;)V

    .line 1758
    :goto_1
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v19

    cmp-long v7, v19, v5

    if-lez v7, :cond_5

    .line 1759
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    .line 1760
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->labelBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v7, v14, [Ljava/lang/String;

    invoke-interface {v6, v5, v7}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1761
    aget-object v5, v5, v14

    if-eqz v5, :cond_4

    .line 1762
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    .line 1764
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    :goto_2
    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x0

    .line 1767
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setCreatedOnDateForLabel(Ljava/lang/Long;)V

    .line 1770
    :goto_3
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v19

    cmp-long v7, v19, v5

    if-lez v7, :cond_6

    .line 1771
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1773
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 1779
    :cond_6
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v5

    const-wide/16 v19, 0x0

    cmp-long v7, v5, v19

    if-lez v7, :cond_7

    .line 1780
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 1781
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v6, v14, [Ljava/lang/String;

    invoke-interface {v5, v4, v6}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 1782
    aget-object v4, v4, v14

    if-eqz v4, :cond_7

    .line 1783
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForSchoolMaster(Ljava/lang/String;)V

    .line 1787
    :cond_7
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1788
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_8

    .line 1789
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1790
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1792
    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    :goto_4
    invoke-virtual {v15, v5}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSheetNameVersionMap(Ljava/util/Map;)V

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, v15}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDetailsForOA(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v0

    .line 1799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForHealthInfrastructure()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_9

    .line 1803
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v4

    const-class v6, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-static {v4, v6}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    goto :goto_5

    .line 1807
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v14}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    .line 1812
    :goto_5
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1813
    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForSchoolMaster()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 1814
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v4

    const-class v6, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-static {v4, v6}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1815
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSchoolDetails(Ljava/util/List;Z)V

    goto :goto_6

    .line 1818
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v14}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSchoolDetails(Ljava/util/List;Z)V

    .line 1823
    :cond_b
    :goto_6
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "featuresList"

    if-eqz v4, :cond_e

    :try_start_2
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1824
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2, v5}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1826
    const-string v4, ","

    if-eqz v2, :cond_d

    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_7

    .line 1832
    :cond_c
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 1833
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 1834
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_8

    .line 1827
    :cond_d
    :goto_7
    new-instance v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 1828
    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 1830
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_8

    .line 1837
    :cond_e
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v4

    .line 1838
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1839
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 1843
    :goto_8
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileMenus()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMenuDetails(Ljava/util/List;)V

    .line 1845
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1846
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedListValues()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeAllListValues(Ljava/util/List;)V

    .line 1851
    :cond_f
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1852
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationBeansAssignedToUser(Ljava/util/Map;)V

    .line 1857
    :cond_10
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1858
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedLabels()Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLabelsDetailsToDatabase(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)V

    .line 1862
    :cond_11
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1863
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCurrentSheetVersion()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeXlsDataToDatabaseForFHW(Ljava/util/Map;Ljava/util/Map;)V

    .line 1867
    :cond_12
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationTypeBeanList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationTypeDetails(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 1870
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void
.end method

.method public getDataForRbsk()V
    .locals 19

    move-object/from16 v1, p0

    .line 1550
    const-string v0, "FHW SHEET VERSION"

    const-string v2, "key"

    const-string v3, "TechoServiceImpl"

    .line 0
    const-string v4, "XLS Data Count : "

    const-string v5, "Assigned Locations & Child Locations Count : "

    const-string v6, "All Schools Count : "

    const-string v7, "Schools Count : "

    const-string v8, "All Health Infrastructures Count : "

    const-string v9, "Health Infrastructures Count : "

    const-string v10, "Data from Main API retrieved in : "

    const-string v11, "Calling Main API for bringing all data"

    const-string v12, "Available Space (in MB) : "

    .line 1550
    :try_start_0
    new-instance v13, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;

    invoke-direct {v13}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;-><init>()V

    .line 1551
    sget-object v14, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setToken(Ljava/lang/String;)V

    .line 1552
    sget-object v14, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setUserId(Ljava/lang/Long;)V

    .line 1553
    const-string v14, "H"

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setRoleType(Ljava/lang/String;)V

    .line 1554
    sget-object v14, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getVillageCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setVillageCode(Ljava/lang/String;)V

    .line 1555
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSdkVersion(Ljava/lang/Integer;)V

    .line 1556
    invoke-direct {v1, v13}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->setImeiAndPhoneNumberInLoginParam(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)V

    .line 1558
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    if-eqz v14, :cond_0

    .line 1559
    sget-object v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->getLocation()V

    .line 1560
    sget-object v14, Lcom/argusoft/sewa/android/app/service/GPSTracker;->latitude:Ljava/lang/Double;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLongitude(Ljava/lang/String;)V

    .line 1561
    sget-object v14, Lcom/argusoft/sewa/android/app/service/GPSTracker;->longitude:Ljava/lang/Double;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLatitude(Ljava/lang/String;)V

    .line 1565
    :cond_0
    new-instance v14, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v15

    invoke-virtual {v14}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v17

    mul-long v15, v15, v17

    const-wide/32 v17, 0x100000

    .line 1567
    div-long v14, v15, v17

    move-object/from16 v16, v4

    .line 1568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setFreeSpaceMB(Ljava/lang/Long;)V

    .line 1583
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v12, "lastUpdateDateForHealthInfrastructure"

    invoke-interface {v4, v2, v12}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-wide/16 v14, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_1

    .line 1584
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1585
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1586
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v17

    cmp-long v4, v17, v14

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 1587
    invoke-virtual {v13, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForHealthInfrastructure(Ljava/lang/Long;)V

    .line 1591
    :cond_1
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v17

    cmp-long v4, v17, v14

    if-lez v4, :cond_2

    .line 1592
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->menuBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getModifiedOn()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1594
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForMenuMaster(Ljava/lang/Long;)V

    .line 1614
    :cond_2
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v17

    cmp-long v4, v17, v14

    if-lez v4, :cond_3

    .line 1615
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const-string v14, "MAX(modifiedOn)"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    .line 1616
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    new-array v15, v12, [Ljava/lang/String;

    invoke-interface {v14, v4, v15}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1617
    aget-object v4, v4, v12

    if-eqz v4, :cond_3

    .line 1618
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setLastUpdateDateForSchoolMaster(Ljava/lang/String;)V

    .line 1622
    :cond_3
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1623
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_4

    .line 1624
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 1625
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1627
    :cond_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :goto_0
    invoke-virtual {v13, v14}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->setSheetNameVersionMap(Ljava/util/Map;)V

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getDetailsForRbsk(Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;)Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;

    move-result-object v0

    .line 1634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForHealthInfrastructure()Ljava/lang/Long;

    move-result-object v4

    const/4 v10, 0x1

    if-nez v4, :cond_5

    .line 1647
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->healthInfrastructureBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v4

    const-class v9, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-static {v4, v9}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v10}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    goto :goto_1

    .line 1651
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getHealthInfrastructures()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v12}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeHealthInfrastructureDetails(Ljava/util/List;Z)V

    .line 1656
    :goto_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleMasterBeans()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v10}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralMasterDetails(Ljava/util/List;Z)V

    .line 1659
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSmartReferralScheduleExceptionBeans()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v10}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSmartReferralExceptionDetails(Ljava/util/List;Z)V

    .line 1661
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "featuresList"

    if-eqz v4, :cond_8

    :try_start_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1662
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2, v8}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1664
    const-string v4, ","

    if-eqz v2, :cond_7

    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_2

    .line 1670
    :cond_6
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 1671
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 1672
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_3

    .line 1665
    :cond_7
    :goto_2
    new-instance v2, Lcom/argusoft/sewa/android/app/model/VersionBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/VersionBean;-><init>()V

    .line 1666
    invoke-virtual {v2, v8}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setKey(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getFeatures()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->stringListJoin(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/VersionBean;->setValue(Ljava/lang/String;)V

    .line 1668
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_3

    .line 1675
    :cond_8
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v4

    .line 1676
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9, v2, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1677
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 1681
    :goto_3
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/LoginRequestParamDetailDataBean;->getLastUpdateDateForSchoolMaster()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1682
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->schoolBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    const-class v4, Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-static {v2, v4}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSchoolDetails(Ljava/util/List;Z)V

    goto :goto_4

    .line 1686
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getSchools()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeSchoolDetails(Ljava/util/List;Z)V

    .line 1691
    :goto_4
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getMobileMenus()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeMenuDetails(Ljava/util/List;)V

    .line 1694
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedVillageAndChildLocations()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationBeansAssignedToUser(Ljava/util/Map;)V

    .line 1699
    :cond_a
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getRetrievedXlsData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getCurrentSheetVersion()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeXlsDataToDatabaseForFHW(Ljava/util/Map;Ljava/util/Map;)V

    .line 1705
    :cond_b
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LoggedInUserPrincipleDataBean;->getLocationTypeBeanList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->storeLocationTypeDetails(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1708
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public getLgdCodeWiseCoordinates()V
    .locals 10

    .line 3195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3197
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 3198
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->locationCoordinatesBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v2

    .line 3199
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;

    .line 3200
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3202
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3203
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->getCoordinates()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$2;

    invoke-direct {v8, p0}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$2;-><init>(Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;)V

    .line 3204
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 3203
    invoke-virtual {v1, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3206
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Double;

    const/4 v9, 0x0

    .line 3207
    aget-object v9, v8, v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    .line 3208
    aget-object v8, v8, v9

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3210
    :cond_0
    const-string v7, "longArray"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    const-string v6, "latArray"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3212
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationCoordinatesBean;->getLgdCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3214
    :cond_1
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfLatLongWithLGDCode:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3216
    const-string v1, "TechoServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 3217
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfLatLongWithLGDCode:Ljava/util/Map;

    :goto_2
    return-void
.end method

.method public isNewNotification()Z
    .locals 4

    const/4 v0, 0x0

    .line 3663
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->announcementBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "isPlayedAnnouncement"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 3664
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 3666
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    return v0
.end method

.method public syncMergedFamiliesInformationWithServer()Ljava/lang/Boolean;
    .locals 6

    .line 346
    const-string v0, "isSyncedWithServer"

    const/4 v1, 0x0

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->mergedFamiliesBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 349
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 350
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->syncMergedFamiliesInformationWithServer(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v2

    .line 351
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->mergedFamiliesBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 354
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/UpdateBuilder;

    .line 355
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 358
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 360
    :goto_0
    const-string v2, "TechoServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
