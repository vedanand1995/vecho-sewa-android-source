.class public Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;
.super Ljava/lang/Object;
.source "SharedStructureData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData$MorbidityCode;
    }
.end annotation


# static fields
.field public static ACTIVE_CTBA_QUESTION_ID:Ljava/lang/Integer;

.field public static CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

.field public static MORBIDITY_CODE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static NETWORK_MESSAGE:Ljava/lang/String;

.field public static RBSK_ATTENDANCE_IS_MARKED_PRESENCE:Z

.field public static addedHighRisksForDangerousSigns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ashaSheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static audioFilesToUpload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final awwSheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static childrenFrom3To6Years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static choAttendanceTimer:Ljava/util/Timer;

.field public static context:Landroid/content/Context;

.field public static currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field public static currentGravida:Ljava/lang/String;

.field public static currentMemberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field public static currentMemberUHId:Ljava/lang/String;

.field public static currentNotificationOtherDetails:Ljava/lang/String;

.field public static currentQuestion:I

.field public static currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field public static currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

.field public static currentlyDownloadingFamilyData:Ljava/lang/Boolean;

.field public static dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/DailyNutritionLogService;

.field public static dueImmunisations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field public static final fhwSheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static filariaAnswerMapWithMemberAsKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static finalFilesToUpload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            ">;"
        }
    .end annotation
.end field

.field public static formFillUpTime:J

.field public static formType:Ljava/lang/String;

.field public static givenVaccinesToChild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static gps:Lcom/argusoft/sewa/android/app/service/GPSTracker;

.field public static final gpsEnabledForms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;

.field public static healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

.field public static highRiskConditions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static highRiskConditionsChild:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static imageFilesToUpload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

.field public static isAadharNumberScanned:Ljava/lang/Boolean;

.field public static isAnyMemberMobileVerificationDone:Ljava/lang/Boolean;

.field public static isDobScannedFromAadhar:Ljava/lang/Boolean;

.field public static isFromLmp:Ljava/lang/Boolean;

.field public static isLogin:Z

.field public static isMobileVerificationBlocked:Ljava/lang/Boolean;

.field public static isOnlineSearch:Z

.field public static isVeryHighRisk:Z

.field public static ismapUpdate:Z

.field public static lcdcSuspectedDataBeans:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static listLabelBeans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/model/LabelBean;",
            ">;"
        }
    .end annotation
.end field

.field public static locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

.field public static loopBakCounter:I

.field private static mapAllMobidites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mapDataMapLabelBean:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mapIndexPage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/datastructure/PageFormBean;",
            ">;"
        }
    .end annotation
.end field

.field public static mapIndexQuestion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            ">;"
        }
    .end annotation
.end field

.field public static mapOfLatLongWithLGDCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mapOfListOfQuestionLIC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static membersOfFamily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static membersUnderTwenty:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static middleNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static ncdScoreService:Lcom/argusoft/sewa/android/app/core/NcdScoreService;

.field public static ncdService:Lcom/argusoft/sewa/android/app/core/NcdService;

.field public static newBindingForMorbidity:I

.field public static nonHofMemberNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static notificationMobDataBean:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field public static npcbService:Lcom/argusoft/sewa/android/app/core/NPCBService;

.field public static numberOfTimesLoggedIn:Ljava/lang/Integer;

.field public static onLineSelectedFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field public static onLineSelectedMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

.field public static ordtIntent:Landroid/content/Intent;

.field public static ordtTimer:Ljava/util/Timer;

.field public static rbskAttendanceTimer:Ljava/util/Timer;

.field public static rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

.field public static final relatedPropertyHashTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static riMotherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static riMotherMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static routineImmunisationService:Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;

.field public static schoolService:Lcom/argusoft/sewa/android/app/core/SchoolService;

.field public static selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

.field public static selectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

.field public static selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

.field public static sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

.field public static sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

.field public static sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;

.field public static techoAshaService:Lcom/argusoft/sewa/android/app/core/TechoAshaService;

.field public static techoService:Lcom/argusoft/sewa/android/app/core/TechoService;

.field public static telephonyManager:Landroid/telephony/TelephonyManager;

.field public static totalFamilyMembersCount:Ljava/lang/Integer;

.field public static totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

.field public static typeface:Landroid/graphics/Typeface;

.field public static vaccineGivenDateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static vaccineGivenDateMapList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;>;"
        }
    .end annotation
.end field

.field public static videoShownMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static welcomeContext:Landroid/content/Context;

.field public static workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ashaSheets:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->awwSheets:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->fhwSheets:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gpsEnabledForms:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfLatLongWithLGDCode:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditions:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->addedHighRisksForDangerousSigns:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->highRiskConditionsChild:Ljava/util/Set;

    const/4 v0, 0x0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 103
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ismapUpdate:Z

    .line 104
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    .line 105
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->numberOfTimesLoggedIn:Ljava/lang/Integer;

    .line 108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->videoShownMap:Ljava/util/Map;

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->middleNameList:Ljava/util/List;

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->nonHofMemberNameList:Ljava/util/List;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->givenVaccinesToChild:Ljava/util/List;

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->childrenFrom3To6Years:Ljava/util/List;

    .line 115
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    .line 117
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 121
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 125
    const-string v3, "Network Available"

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->NETWORK_MESSAGE:Ljava/lang/String;

    .line 127
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    .line 128
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->typeface:Landroid/graphics/Typeface;

    .line 130
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->audioFilesToUpload:Ljava/util/Map;

    .line 131
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->finalFilesToUpload:Ljava/util/List;

    .line 133
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isAadharNumberScanned:Ljava/lang/Boolean;

    .line 134
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isDobScannedFromAadhar:Ljava/lang/Boolean;

    .line 135
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formType:Ljava/lang/String;

    .line 142
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentlyDownloadingFamilyData:Ljava/lang/Boolean;

    .line 145
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    .line 146
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isAnyMemberMobileVerificationDone:Ljava/lang/Boolean;

    .line 149
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->CHO_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 150
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->RBSK_ATTENDANCE_IS_MARKED_PRESENCE:Z

    .line 157
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 159
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 160
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 161
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isFromLmp:Ljava/lang/Boolean;

    .line 162
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentGravida:Ljava/lang/String;

    .line 163
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersOfFamily:Ljava/util/List;

    .line 167
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isVeryHighRisk:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->riMotherList:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->riMotherMap:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->dueImmunisations:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->filariaAnswerMapWithMemberAsKey:Ljava/util/Map;

    .line 173
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ACTIVE_CTBA_QUESTION_ID:Ljava/lang/Integer;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->lcdcSuspectedDataBeans:Ljava/util/Set;

    .line 177
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->groupAshaSheets()V

    .line 178
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->groupAwwSheets()V

    .line 179
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->groupFHWSheets()V

    .line 180
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gpsFeatureEnabledForms()V

    .line 181
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->includeMorbidityCodeNNamesMap()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility Class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addItemInLICList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 206
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfListOfQuestionLIC:Ljava/util/Map;

    .line 210
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfListOfQuestionLIC:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfListOfQuestionLIC:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 219
    sput-boolean p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ismapUpdate:Z

    return-void
.end method

.method public static getListOfLIC()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfListOfQuestionLIC:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 238
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 239
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfListOfQuestionLIC:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 244
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static gpsFeatureEnabledForms()V
    .locals 2

    .line 394
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->gpsEnabledForms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ashaSheets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->fhwSheets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->awwSheets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static groupAshaSheets()V
    .locals 2

    .line 359
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ashaSheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    const-string v1, "FHS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v1, "ASHA_LMPFU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v1, "ASHA_PNC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v1, "ASHA_ANC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v1, "ASHA_WPD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v1, "ASHA_CS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v1, "NCD_ASHA_CBAC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v1, "ASHA_NPCB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v1, "NPCB_SPECTS_APPROVAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const-string v1, "OA_NPCB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v1, "OA_NPCB_FU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v1, "CHO_NPCB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v1, "CHO_NPCB_FU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v1, "ANCMORB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v1, "PNCMORB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v1, "CCMORB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v1, "ASHA_SAM_SCREENING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v1, "CMAM_FOLLOWUP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v1, "IDSP_MEMBER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v1, "IDSP_MEMBER_2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const-string v1, "ANC_REFERRAL_VISIT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v1, "LCDC_CAMPAIGN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v1, "FILARIASIS_CAMPAIGN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v1, "LCDC_CAMPAIGN_02"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v1, "ILA_BASELINE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static groupAwwSheets()V
    .locals 2

    .line 388
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->awwSheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    const-string v1, "AWW_CS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v1, "AWW_THR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static groupFHWSheets()V
    .locals 2

    .line 306
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->fhwSheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    const-string v1, "FHS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    const-string v1, "CFHC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v1, "MEMBER_UPDATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v1, "LMPFU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v1, "FHW_ANC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v1, "FHW_PNC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v1, "FHW_WPD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v1, "FHW_CI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const-string v1, "FHW_CS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v1, "AMRUTPAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v1, "DPT_BOOSTER_2_ALERT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v1, "FHW_VAE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v1, "FHW_RIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v1, "DISCHARGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v1, "APPETITE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v1, "NCD_FHW_HYPERTENSION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v1, "NCD_FHW_DIABETES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v1, "NCD_FHW_ORAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v1, "NCD_FHW_BREAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v1, "NCD_FHW_CERVICAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v1, "TT2_ALERT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v1, "IRON_SUCROSE_ALERT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v1, "FHW_PREG_CONF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v1, "FHW_DEATH_CONF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v1, "FHW_SAM_SCREENING_REF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v1, "CMAM_FOLLOWUP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v1, "GMA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v1, "IDSP_MEMBER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v1, "IDSP_MEMBER_2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v1, "IDSP_NEW_FAMILY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v1, "TRAVELLERS_SCREENING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v1, "ADOLESCENT_HEALTH_SCREENING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v1, "NWC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v1, "FHW_NS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v1, "GAURAVI_DIWAS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v1, "MENTAL_ILLNESS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v1, "AMRUTPAN_SUPERVISION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v1, "ELDERLY_CARE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v1, "LAB_TEST_MALARIA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v1, "FILARIASIS_CAMPAIGN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v1, "MR_VACCINATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v1, "LCDC_CAMPAIGN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v1, "VBDS_WATER_QUALITY_MONITORING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v1, "VBDS_ANTILARVAL_ACTIVITIES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v1, "VBDS_ANTI_VECTOR_INTERVENTIONS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v1, "VBDS_MALARIA_TESTING"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v1, "VBDS_TPT_EVALUATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v1, "VBDS_CHLORINATION_STATUS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v1, "NPCB_SPECTS_APPROVAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static includeMorbidityCodeNNamesMap()V
    .locals 4

    .line 401
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 402
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "APH"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SAP"

    const-string v2, "Severe abdominal pain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "HEP"

    const-string v2, "Hepatitis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SCC"

    const-string v2, "Sickle cell crisis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PRM"

    const-string v2, "Premature rupture of membrane"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SEAM"

    const-string v2, "Severe anemia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "MAL"

    const-string v2, "Malpresentation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "DFM"

    const-string v2, "Decreased foetal movement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SPSBI"

    const-string v2, "Severe pneumonia or serious bacterial infection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "CCC"

    const-string v2, "Chronic cough or cold"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "DWSD"

    const-string v2, "Diarrhoea with severe dehydration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SPD"

    const-string v2, "Severe persistent diarrhoea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "VSFI"

    const-string v2, "Very severe febrile illness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SMAL"

    const-string v2, "Severe malnutrition"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SAFC"

    const-string v2, "Severe anemia for child"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SEP"

    const-string v2, "Sepsis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "LBWSH"

    const-string v2, "Very low birth weight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "DIAH"

    const-string v2, "Diarrhoea"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "JAUND"

    const-string v2, "Jaundice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "BFAP"

    const-string v2, "Bleeding from any part of the body(nose, mouth, anus, umbilicus)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PPH"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PPI"

    const-string v2, "Post partum infection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "MASTI"

    const-string v2, "Mastitis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PPMD"

    const-string v2, "Post partum mood disorder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PIHH"

    const-string v2, "PIH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "BOH"

    const-string v2, "Bad obstetric history"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "UP"

    const-string v2, "Unintented pregnancy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "MPIH"

    const-string v2, "Mild pregnancy induced hypertension"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "MIP"

    const-string v2, "Malaria in pregnancy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "FEVER"

    const-string v2, "Fever"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PT"

    const-string v3, "Possible TB"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "UTI"

    const-string v3, "Urinary tract infection"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "VAGIN"

    const-string v3, "Vaginitis"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "NB"

    const-string v3, "Night blindness"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PSA"

    const-string v3, "Probable severe anemia"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "SPIH"

    const-string v3, "Severe Pregnancy induced hypertension"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "FVRIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "BWLPC"

    const-string v2, "Low Birth Weight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "CONJUC"

    const-string v2, "Conjunctivitis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PNEUFC"

    const-string v2, "Pneumonia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "DSD"

    const-string v3, "Diarrhoea with some dehydration"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "DYSEN"

    const-string v3, "Dysentry"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "MALAR"

    const-string v3, "Malaria"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "VLW"

    const-string v3, "Very low weight"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "ANEMA"

    const-string v3, "Anemia"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "HYTH"

    const-string v3, "Hypothermia"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "PNEUM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "LI"

    const-string v2, "Local infection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "HRLB"

    const-string v2, "High risk Low Birth Weight or Pre-term"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "BASP"

    const-string v2, "Birth asphyxia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "EOP"

    const-string v2, "Emesis of pregnancy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "URTI"

    const-string v2, "Upper respiratory tract infection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "MDAN"

    const-string v2, "Moderate anemia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "BP"

    const-string v2, "Breast problems"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "COCOU"

    const-string v2, "Cold or Cough"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "DWND"

    const-string v2, "Diarrhoea with no dehydration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "NVW"

    const-string v2, "Not very low weight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "NANEM"

    const-string v2, "No anemia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->MORBIDITY_CODE_MAP:Ljava/util/HashMap;

    const-string v1, "FPRO"

    const-string v2, "Feeding problem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static initIndexQuestionMap(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/SewaService;Lcom/argusoft/sewa/android/app/core/SewaFhsService;Lcom/argusoft/sewa/android/app/core/TechoAshaService;Lcom/argusoft/sewa/android/app/core/RchHighRiskService;Lcom/argusoft/sewa/android/app/core/ImmunisationService;Lcom/argusoft/sewa/android/app/core/NcdService;Lcom/argusoft/sewa/android/app/core/NcdScoreService;Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/core/SchoolService;Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;Lcom/argusoft/sewa/android/app/core/DailyNutritionLogService;Lcom/argusoft/sewa/android/app/core/NPCBService;Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;)V
    .locals 1

    .line 272
    sput-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    .line 273
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    .line 274
    sput-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 275
    sput-object p4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->rchHighRiskService:Lcom/argusoft/sewa/android/app/core/RchHighRiskService;

    .line 276
    sput-object p5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    .line 277
    sput-object p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->techoAshaService:Lcom/argusoft/sewa/android/app/core/TechoAshaService;

    .line 278
    sput-object p6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ncdService:Lcom/argusoft/sewa/android/app/core/NcdService;

    .line 279
    sput-object p7, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ncdScoreService:Lcom/argusoft/sewa/android/app/core/NcdScoreService;

    .line 280
    sput-object p8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    .line 281
    sput-object p9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 282
    sput-object p13, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->npcbService:Lcom/argusoft/sewa/android/app/core/NPCBService;

    .line 283
    sput-object p10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->schoolService:Lcom/argusoft/sewa/android/app/core/SchoolService;

    .line 284
    sput-object p11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/SewaServiceRestClient;

    .line 285
    sput-object p12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->dailyNutritionLogService:Lcom/argusoft/sewa/android/app/core/DailyNutritionLogService;

    const/4 v0, 0x0

    .line 286
    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    .line 287
    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->newBindingForMorbidity:I

    .line 288
    sput-object p14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;

    .line 289
    sput-object p15, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;

    return-void
.end method

.method public static isEmptyMapAllMorbidities(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 185
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMorbiditiesOnlyRelatedToMother(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Delivery-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static mapAllMorbiditiesOnlyRelatedToMother(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 190
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "-"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 192
    array-length v4, v3

    if-le v4, v5, :cond_0

    invoke-static {}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getOnlyMotherRelatedPNCMorbidities()Ljava/util/List;

    move-result-object v4

    aget-object v3, v3, v1

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 199
    :cond_2
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Delivery-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 202
    :cond_3
    sget-object p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne v2, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static removeItemFromLICList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 230
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    .line 233
    sput-boolean p0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ismapUpdate:Z

    return-void
.end method

.method public static resetSharedStructureData()V
    .locals 2

    const/4 v0, -0x1

    .line 293
    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentQuestion:I

    const/4 v0, 0x0

    .line 294
    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->loopBakCounter:I

    .line 295
    sput v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->newBindingForMorbidity:I

    const/4 v1, 0x0

    .line 296
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexQuestion:Ljava/util/Map;

    .line 297
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapIndexPage:Ljava/util/Map;

    .line 298
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapDataMapLabelBean:Ljava/util/Map;

    .line 299
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapAllMobidites:Ljava/util/Map;

    .line 300
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->mapOfListOfQuestionLIC:Ljava/util/Map;

    .line 301
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->ismapUpdate:Z

    .line 302
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->imageFilesToUpload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
