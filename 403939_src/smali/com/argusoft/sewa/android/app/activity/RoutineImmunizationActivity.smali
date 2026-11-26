.class public Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "RoutineImmunizationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final CAMPAIGN_SELECTION_SCREEN:Ljava/lang/String; = "CAMPAIGN_SELECTION_SCREEN"

.field private static final DELAY:J = 0x1f4L

.field private static final IMMUNISATION_INVENTORY_SCREEN:Ljava/lang/String; = "IMMUNISATION_INVENTORY_SCREEN"

.field private static final LIMIT:J = 0x1eL

.field private static final LOCATION_SCREEN:Ljava/lang/String; = "LOCATION_SCREEN"

.field private static final LOCATION_SELECTION_SCREEN:Ljava/lang/String; = "locationSelectionScreen"

.field private static final MEMBER_DETAILS_TO_ASHA_USER_SCREEN:Ljava/lang/String; = "MEMBER_DETAILS_TO_ASHA_USER_SCREEN"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final MEMBER_TYPE_SCREEN:Ljava/lang/String; = "memberTypeScreen"

.field private static final NOTIFICATION_SELECTION_SCREEN:Ljava/lang/String; = "notificationSelectionScreen"

.field private static final REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY:Ljava/lang/Integer;

.field private static final REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

.field private static final SERVICE_CHILDREN_ABOVE_5:Ljava/lang/String; = "childrenAbove5"

.field private static final SERVICE_CHILDREN_UPTO_5:Ljava/lang/String; = "childrenUpto5"

.field private static final SERVICE_PNC_MOTHERS:Ljava/lang/String; = "pncMothers"

.field private static final SERVICE_PREGNANCY_OUTCOME:Ljava/lang/String; = "pregnancyOutcome"

.field private static final SERVICE_PREGNANT_WOMEN:Ljava/lang/String; = "pregnantWomen"

.field private static final TAG:Ljava/lang/String; = "RIActivity"

.field private static final VISIT_SELECTION_SCREEN:Ljava/lang/String; = "visitSelectionScreen"


# instance fields
.field private assignedAreaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private assignedLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private buttonList:Landroid/widget/ListView;

.field private campaignMasterBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

.field private dateForOfflineSearch:Ljava/util/Date;

.field private dayNumWithCampaignMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private districtComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;

.field private expiredConfigIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl;

.field healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

.field immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

.field private inventoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private isAsha:Ljava/lang/Boolean;

.field private isOnlineSearch:Ljava/lang/Boolean;

.field private isScanAbha:Z

.field private locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private locationSelection:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

.field private locationSelectionForSession:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

.field private mapOfAreaNameWithIdAsKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
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

.field private memberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private memberType:Ljava/lang/String;

.field private membersOfFamily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private notificationBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

.field private notificationsCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private offset:J

.field private ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

.field private pagingHeaderView:Landroid/widget/LinearLayout;

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private qrScanFilter:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

.field private screen:Ljava/lang/String;

.field sdf:Ljava/text/SimpleDateFormat;

.field private search:Ljava/lang/CharSequence;

.field private searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

.field private selectOptionTv:Lcom/google/android/material/textview/MaterialTextView;

.field private selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private selectedNotificationCode:Ljava/lang/String;

.field private selectedPeopleIndex:I

.field private selectedService:Ljava/lang/String;

.field private selectedServiceIndex:I

.field private selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

.field private selectedSessionDataBean:Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;

.field private servicesCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sessionButtonLayout:Landroid/widget/LinearLayout;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private titleView:Lcom/google/android/material/textview/MaterialTextView;

.field userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

.field private visits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

    const/16 v0, 0x7d1

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    .line 165
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    .line 177
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isScanAbha:Z

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 194
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->expiredConfigIds:Ljava/util/List;

    .line 207
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedLocations:Ljava/util/List;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedAreaIds:Ljava/util/List;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->mapOfAreaNameWithIdAsKey:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Ljava/util/Timer;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;J)J
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Lcom/argusoft/sewa/android/app/component/SearchComponent;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    return-object p0
.end method

.method private addSearchTextBox()V
    .locals 9

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 767
    const-string v0, "NAME"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    const-string v0, "MOBILE_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v0, "ABHA_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const-string v0, "MEMBER_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    const-string v0, "FAMILY_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v0, "DOB"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    const-string v0, "LOCATION"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    new-instance v8, Lcom/argusoft/sewa/android/app/component/SearchComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string v0, "Enter text and click search icon to search online"

    .line 778
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 779
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSearchClickOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/SearchComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;)V

    iput-object v8, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 780
    invoke-virtual {v8, v0, v1, v0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->setPadding(IIII)V

    .line 781
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getTextWatcherForOfflineSearch()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addTextWatcherInEditText(Landroid/text/TextWatcher;)V

    .line 782
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addOnDateSetListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private apiCallsForFetchingOnlineMembers(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 912
    const-string v3, "-"

    :try_start_0
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setSelectedService(Ljava/lang/String;)V

    .line 913
    const-string v4, "MOBILE_NUMBER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, p5

    invoke-virtual/range {v5 .. v17}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto/16 :goto_0

    .line 915
    :cond_0
    const-string v4, "ABHA_NUMBER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 916
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_1

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 922
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v13, p5

    invoke-virtual/range {v2 .. v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v4, p1

    .line 923
    const-string v3, "FAMILY_ID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 924
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    move-object/from16 v15, p5

    invoke-virtual/range {v4 .. v16}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto/16 :goto_0

    .line 925
    :cond_3
    const-string v3, "MEMBER_ID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 926
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    move-object/from16 v15, p5

    invoke-virtual/range {v4 .. v16}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto/16 :goto_0

    .line 927
    :cond_4
    const-string v3, "NAME"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 928
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    move-object/from16 v15, p5

    invoke-virtual/range {v4 .. v16}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto/16 :goto_0

    .line 929
    :cond_5
    const-string v3, "DOB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "dd-MM-yyyy"

    if-eqz v3, :cond_6

    .line 930
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 931
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, p5

    invoke-virtual/range {v6 .. v18}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto/16 :goto_0

    .line 932
    :cond_6
    const-string v3, "LMP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 933
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 934
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, p5

    invoke-virtual/range {v6 .. v18}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 935
    :cond_7
    const-string v0, "LOCATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 936
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v2 .. v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 937
    :cond_8
    const-string v0, "UWIN_ID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 938
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    const-string v2, "uwin-id"

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMemberFromUwinOnline(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 941
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda22;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    :cond_9
    :goto_0
    return-void
.end method

.method private checkForPreviousSessions(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/lang/Boolean;
    .locals 5

    .line 1729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dayNumWithCampaignMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1731
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1732
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1735
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->expiredConfigIds:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1736
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private endSesionBySessionId(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignMasterByConfigIdAndWeek(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->endSessionBySessionId(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showFormSubmitMessage(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    .line 328
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 329
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveCampaignSessionsByLocation()V

    return-void
.end method

.method private getCampaignList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 428
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 431
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    .line 436
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignSessionByConfigId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v2

    .line 437
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->mapOfAreaNameWithIdAsKey:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 439
    const-string v4, "N/A"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getStartedOn()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 440
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 441
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDayNameFromNumber(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-direct {v2, v5, v6, v1, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_2
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDayNameFromNumber(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-direct {v2, v5, v6, v1, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0

    .line 429
    :cond_5
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getChildrenListFromDataBase()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 983
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    const-string v3, "childrenUpto5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 984
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->search:Ljava/lang/CharSequence;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v3 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrieveChildrenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v1

    .line 986
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    const-string v3, "childrenAbove5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 987
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->search:Ljava/lang/CharSequence;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v3 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrieveChildrenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v1

    .line 990
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 991
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setDueVaccinesCountInMemberBean(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 992
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 612
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 611
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 614
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 622
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v7, "FHW_CS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x0

    const-string v8, "N/A"

    if-nez v4, :cond_5

    .line 650
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 651
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 652
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 654
    :cond_1
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 655
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    .line 657
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v9

    .line 658
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    .line 659
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    :cond_3
    :goto_2
    move-object v13, v8

    .line 662
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 663
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v7

    :cond_4
    move-object v9, v7

    .line 666
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v11

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 667
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 668
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const-string v12, "Mob No"

    const-string v14, "DOB"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v19}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 666
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 624
    :cond_5
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 625
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 626
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    :cond_6
    :goto_3
    move-object v13, v8

    goto :goto_5

    .line 628
    :cond_7
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 629
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    .line 631
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 632
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v9

    goto :goto_4

    :cond_8
    move-object v9, v7

    .line 634
    :goto_4
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v10

    if-eqz v9, :cond_9

    .line 635
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_9
    if-eqz v10, :cond_6

    .line 636
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 639
    :goto_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 640
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v7

    :cond_a
    move-object v9, v7

    .line 642
    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setDueVaccinesCountInMemberBean(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 643
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 644
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_b
    const-string v5, "No Due Vaccines"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 646
    :goto_6
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v11

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 647
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const-string v12, "Mob No"

    const-string v14, "DOB"

    const/16 v16, 0x0

    const-string v17, "Due Vaccines"

    move-object v8, v7

    invoke-direct/range {v8 .. v19}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 646
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-object v1
.end method

.method private getListViewItemsForNotificationListFromMemberDataBeans(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 678
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotDueDate()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotDueDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {v0, v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v18, 0x1

    goto :goto_1

    :cond_0
    const/16 v18, 0x0

    .line 679
    :goto_1
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 687
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    const-string v7, "childrenUpto5"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "N/A"

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    .line 688
    new-instance v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 689
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotDueDate()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 690
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotDueDate()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v8

    .line 692
    :goto_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 693
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    const-string v6, "No Due Vaccines"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object/from16 v17, v6

    .line 694
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 695
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v8

    .line 697
    :cond_3
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v6

    if-eqz v8, :cond_4

    .line 698
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object v12, v6

    goto :goto_5

    :cond_4
    if-eqz v6, :cond_5

    .line 699
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v12, v7

    .line 701
    :goto_5
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 702
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, "Due Vaccines"

    const-string v11, "Mob No"

    const-string v13, "DOB"

    move-object v7, v6

    move-object v8, v5

    invoke-direct/range {v7 .. v18}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 701
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 705
    :cond_6
    new-instance v4, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 706
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotDueDate()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 707
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotDueDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .line 709
    :cond_7
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v5

    .line 710
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 711
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object v12, v5

    goto :goto_7

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 712
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object v12, v7

    .line 714
    :goto_7
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 715
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v11, "Mob No"

    const-string v13, "DOB"

    const/4 v15, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v18}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 714
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v1
.end method

.method private getMemberListItem(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "pncMothers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "pregnantWomen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "childrenUpto5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "pregnancyOutcome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "childrenAbove5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    const-string v2, "N/A"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    .line 1133
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1134
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v5

    .line 1135
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1136
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v11, v5

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1137
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    move-object v11, v2

    .line 1139
    :goto_3
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getVisitNumberByLmpDate(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v5

    .line 1140
    new-instance v15, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 1141
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Visit - "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1142
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHighRiskCase()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v17

    const-string v10, "Mob No"

    const-string v12, "DOB"

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v6, v15

    move-object v5, v15

    move-object v15, v4

    invoke-direct/range {v6 .. v17}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1140
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1106
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1107
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v7

    .line 1110
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1111
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v8

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    .line 1113
    :goto_5
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v9

    if-eqz v8, :cond_8

    .line 1114
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    :goto_6
    move-object v15, v8

    goto :goto_7

    :cond_8
    if-eqz v9, :cond_9

    .line 1115
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_9
    move-object v15, v2

    :goto_7
    if-eqz v7, :cond_a

    .line 1118
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v12

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 1119
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 1120
    invoke-static {v6, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMotherAndFatherNameForListDisplay(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;

    move-result-object v18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Due Vaccines"

    .line 1121
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/4 v10, 0x0

    const-string v13, "Mob No"

    const-string v6, "DOB"

    const/16 v17, 0x0

    move-object v9, v8

    move-object v14, v15

    move-object v15, v6

    invoke-direct/range {v9 .. v20}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1118
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1123
    :cond_a
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v12

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 1124
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 1125
    invoke-static {v6, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMotherAndFatherNameForListDisplay(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "No Due Vaccines"

    .line 1126
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string v14, "Mob No"

    const-string v16, "DOB"

    move-object v9, v7

    invoke-direct/range {v9 .. v20}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1123
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    :goto_8
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x2b3620e9 -> :sswitch_4
        0x873b365 -> :sswitch_3
        0x4a0e01e0 -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getPregnantWomenListFromDatabase()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->search:Ljava/lang/CharSequence;

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-wide/16 v2, 0x1e

    invoke-virtual/range {v0 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrievePregnantWomenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 1002
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSearchClickOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;
    .locals 1

    .line 832
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda21;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    return-object v0
.end method

.method private getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;
    .locals 3

    if-eqz p1, :cond_0

    .line 860
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 861
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getWeekNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 862
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 864
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 866
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1
.end method

.method private getTextWatcherForOfflineSearch()Landroid/text/TextWatcher;
    .locals 1

    .line 787
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    return-object v0
.end method

.method private getVisitNumberByLmpDate(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 9

    if-eqz p1, :cond_7

    .line 1153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1155
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x1c

    const/4 v3, 0x5

    .line 1156
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 1157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1158
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v4, 0x5b

    .line 1159
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1161
    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0xbd

    .line 1162
    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 1163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1164
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xf5

    .line 1165
    invoke-virtual {v5, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 1166
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1167
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1169
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x2

    .line 1170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1171
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x3

    .line 1172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1173
    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    .line 1174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    .line 1168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private initView()V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 252
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 253
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setContentView(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 255
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 258
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setContentView(Landroid/view/View;)V

    .line 260
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    .line 263
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveCampaignSessionsByLocation()V

    return-void
.end method

.method private setDueVaccinesCountInMemberBean(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 8

    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    new-instance v2, Ljava/util/Date;

    .line 1835
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1836
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/Date;

    .line 1837
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getImmunisationDateMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    .line 1836
    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getMissedImmunisationListFromDueList(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1838
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1839
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setDueVaccinesCount(Ljava/lang/Integer;)V

    .line 1840
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1842
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1843
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1845
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setDueVaccines(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setHeaderForMemberScreen()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setLocationSelectionScreen()V
    .locals 4

    .line 338
    const-string v0, "locationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 340
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 341
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-direct {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Ljava/util/List;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method private setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 891
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private setSelectedService(Ljava/lang/String;)V
    .locals 2

    .line 1275
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "C_5_20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "PNC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "PW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1280
    :pswitch_0
    const-string p1, "childrenAbove5"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1286
    :pswitch_1
    const-string p1, "pncMothers"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1283
    :pswitch_2
    const-string p1, "pregnantWomen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1277
    :pswitch_3
    const-string p1, "childrenUpto5"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_3
        0xa07 -> :sswitch_2
        0x13605 -> :sswitch_1
        0x77a8ed04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showEndCurrentSessionAlert(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 3

    .line 465
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    .line 472
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure want to close the ongoing session? You will not be able to add vaccines given in that session anymore"

    const/16 v2, -0x97

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 475
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private showFormSubmitMessage(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session for "

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDayNameFromNumber(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has been ended"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method private showFormSubmitMessage(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 2

    .line 489
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session at this location for "

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDayNameFromNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has ended"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->finish()V

    .line 491
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method private showOutOfSessionAlert(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 3

    .line 308
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda20;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    .line 318
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "This session was started more than a day ago and can no longer be continued. Please close this session and proceed with another if available"

    const/16 v2, -0x97

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 321
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private showPreviousInactiveSessionAlert(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 3

    .line 293
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 301
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Starting a new session on a recent date will close previous campaigns. You will no longer be able to start session for those campaigns. Do you want to proceed?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 304
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private showStartNewImmunisationAlert(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 2

    .line 450
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda19;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    .line 458
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "Please note that starting a new session will close the ongoing session and you will not be able to add vaccines given in that session anymore"

    const/16 v1, -0x97

    invoke-direct {p1, p0, v0, p2, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 461
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 6

    .line 1797
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1798
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1799
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1800
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1801
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->riMotherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1802
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->riMotherMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1803
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1804
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1807
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    .line 1808
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    if-eqz p2, :cond_0

    .line 1809
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "sessionId"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "fromMamtaCampaign"

    const-string v1, "1"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "servicePlace"

    const-string v1, "MAMTA_DAY"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v0, "serviceDate"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 1813
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getStartedOn()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1812
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1827
    const-string v0, "entity"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1828
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1829
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void

    .line 1816
    :catch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1817
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda17;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 1821
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "Some error occurred. Please refresh and try again"

    .line 1822
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1823
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private startDynamicFormActivityOnline(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    .line 1440
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1441
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1442
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1443
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1444
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->riMotherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1445
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->riMotherMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1446
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1447
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1449
    new-instance v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1450
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;-><init>()V

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 1451
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotificationId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNotificationId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setId(Ljava/lang/Long;)V

    .line 1455
    :cond_0
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    .line 1456
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currentDate"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currentDateDisplay"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    const-string v3, "1"

    if-eqz v0, :cond_1

    .line 1460
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getSessionId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sessionId"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "fromMamtaCampaign"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "servicePlace"

    const-string v5, "MAMTA_DAY"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 1464
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getStartedOn()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1463
    const-string v5, "serviceDate"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    :cond_1
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    if-eqz v0, :cond_2

    .line 1467
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "locationId"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v4

    const-string v5, "role"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    .line 1473
    const-string v4, "C"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "PW"

    const-string v6, "2"

    const-string v7, "C_5_20"

    const-string v8, "memberType"

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1475
    :cond_3
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1476
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1474
    :cond_4
    :goto_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_5
    :goto_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "newEntry"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "memberId"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "familyId"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    new-instance v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1483
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentRchFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 1486
    const-string v0, "FHW_ANC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    .line 1489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v10, -0x14

    .line 1490
    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->add(II)V

    .line 1491
    sget-object v10, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_6
    move-object v8, v3

    .line 1497
    :goto_2
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->membersOfFamily:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v12, v3

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-nez v12, :cond_7

    .line 1499
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v12, v14

    :cond_7
    if-eqz v0, :cond_a

    .line 1505
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v17, v12

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v6, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1506
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersUnderTwenty:Ljava/util/List;

    new-instance v11, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    .line 1507
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v12, v15, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object/from16 v17, v12

    .line 1512
    :cond_9
    :goto_4
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1513
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1514
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1515
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v17, v12

    :cond_b
    :goto_5
    move-object/from16 v12, v17

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_c
    if-eqz v0, :cond_d

    if-lez v13, :cond_d

    .line 1523
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1524
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "selectedChildren"

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "actualGravida"

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/4 v0, 0x2

    if-eqz v12, :cond_11

    .line 1530
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "hofFirstName"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "hofMiddleName"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "hofLastName"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 1534
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v8, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "hofDobDisplay"

    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v6

    const/4 v8, 0x0

    .line 1536
    aget v10, v6, v8

    const/4 v8, 0x1

    aget v11, v6, v8

    aget v6, v6, v0

    invoke-static {v10, v11, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 1538
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v10, "hofAgeDisplay"

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    :cond_e
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "hofHealthId"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 1543
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "hofGender"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    :cond_f
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 1546
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "hofNameAsAadhar"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_10
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1549
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v8, "hofAbhaNumber"

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    :cond_11
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "dob"

    const-string v8, "memberHealthId"

    const-string v10, ")"

    const-string v11, " ("

    const-string v12, "nameForLog"

    const-string v13, "lastName"

    const-string v14, "middleName"

    const-string v15, "firstName"

    if-nez v4, :cond_13

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move-object/from16 v18, v6

    goto/16 :goto_b

    .line 1554
    :cond_13
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 1556
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->membersOfFamily:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1557
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_8

    :cond_14
    const/4 v0, 0x2

    const/4 v3, 0x0

    goto :goto_7

    :cond_15
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_19

    .line 1563
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "motherFirstName"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "motherMiddleName"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "motherLastName"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1567
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "motherDobDisplay"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 1569
    aget v4, v0, v3

    const/4 v3, 0x1

    aget v2, v0, v3

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v4, v2, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1571
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "motherAgeDisplay"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    :cond_16
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "motherHealthId"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1576
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "motherNameAsAadhar"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    :cond_17
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1579
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "motherAbhaNumber"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    :cond_18
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "phoneNumber"

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    :cond_19
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameOfBeneficiary"

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1588
    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1591
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v18, v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dobDisplay"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 1594
    aget v3, v0, v2

    const/4 v2, 0x1

    aget v4, v0, v2

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {v3, v4, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1596
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ageDisplay"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1a
    move-object/from16 v18, v6

    .line 1599
    :cond_1b
    :goto_9
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1601
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gender"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1604
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "nameAsAadhar"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1607
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "abhaNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_1e
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1611
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1612
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1613
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "immunisationGiven"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getImmunisationDateMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    .line 1615
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMapList:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->vaccineGivenDateMap:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    new-instance v3, Ljava/util/Date;

    .line 1619
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v7

    .line 1618
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getDueImmunisationsForChild(Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1620
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    new-instance v3, Ljava/util/Date;

    .line 1621
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->getVaccineGivenDateMap(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    .line 1620
    invoke-virtual/range {v20 .. v25}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getMissedImmunisationListFromDueList(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1622
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1623
    const-string v0, "VITAMIN_A"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1624
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1625
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 1626
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "["

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "]"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1625
    const-string v4, "remainingVaccines"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    const-string v4, "-1"

    const-string v6, "-Select-"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1631
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    invoke-direct {v4}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>()V

    .line 1632
    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setKey(Ljava/lang/String;)V

    .line 1633
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;->setValue(Ljava/lang/String;)V

    .line 1634
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1636
    :cond_21
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->dueImmunisations:Ljava/util/List;

    .line 1638
    :goto_b
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1639
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1640
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    :cond_22
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1645
    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1644
    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1647
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "curPregRegDetId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1650
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dobDisplay"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 1653
    aget v3, v0, v2

    const/4 v2, 0x1

    aget v4, v0, v2

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {v3, v4, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1655
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "ageDisplay"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    :cond_24
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1660
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lmpDate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lmpDateDisplay"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastLmp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEdd()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1665
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edd"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1668
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "abhaNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1671
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TT_BOOSTER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "tt"

    const-string v3, "TT1"

    if-eqz v0, :cond_28

    .line 1672
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "TT_BOOSTER"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 1673
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TT2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1674
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "TT2"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 1675
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1676
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    :cond_2a
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1680
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1681
    array-length v4, v2

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v4, :cond_2c

    aget-object v0, v2, v8

    .line 1682
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 1683
    aget-object v6, v0, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1685
    :try_start_0
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "tt1GivenOn"

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v10, 0x1

    aget-object v11, v0, v10

    .line 1686
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1685
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "tt1GivenOnDisplay"

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v10, 0x1

    aget-object v0, v0, v10

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 1690
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 1696
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TD_BOOSTER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "td"

    const-string v3, "TD1"

    if-eqz v0, :cond_2d

    .line 1697
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "TD_BOOSTER"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1698
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TD2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1699
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "TD2"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1700
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1701
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    :cond_2f
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1705
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1706
    array-length v4, v2

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v4, :cond_31

    aget-object v0, v2, v8

    .line 1707
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 1708
    aget-object v6, v0, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1710
    :try_start_1
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v7, "td1GivenOn"

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sdf:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v11, 0x1

    :try_start_2
    aget-object v0, v0, v11

    .line 1711
    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1710
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    const/4 v11, 0x1

    .line 1713
    :goto_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_30
    const/4 v11, 0x1

    :goto_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 1721
    :cond_31
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1722
    const-string v2, "entity"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1723
    const-string v2, "isOnlineSearchPropagated"

    sget-boolean v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1724
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method private startNewSession()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->startNewSession(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 273
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 274
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addMemberTypeScreen()V

    return-void
.end method

.method private startNewSessionAlert()V
    .locals 4

    .line 278
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 286
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "You are about to start a new session. Are you sure you want to proceed ?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 289
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addChildrenListView(Z)V
    .locals 4

    .line 1007
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1008
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    const-string v1, "Select a Child"

    if-nez p1, :cond_0

    .line 1009
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    const-string v2, "childrenUpto5"

    .line 1010
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1009
    invoke-static {p0, v1, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1012
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    const-string v2, "childrenAbove5"

    .line 1013
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1012
    invoke-static {p0, v1, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    .line 1015
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1017
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 1024
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getListViewItemsForNotificationListFromMemberDataBeans(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1026
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    invoke-static {v2, v1, v3, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_1

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getMemberListItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1029
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    invoke-static {v1, v0, v2, p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1031
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1033
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1034
    const-string p1, "No child member in your Area"

    invoke-static {v0, v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1035
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1037
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addMemberTypeScreen()V
    .locals 2

    .line 496
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 497
    const-string v0, "memberTypeScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    const/4 v0, -0x1

    .line 498
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isScanAbha:Z

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveCountsForEachNotificationType(Ljava/lang/Integer;)V

    .line 503
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addNotificationSelectionScreen(Z)V
    .locals 4

    .line 564
    const-string v0, "notificationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 567
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 570
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 573
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 585
    :cond_2
    const-string v0, "Select Beneficiary"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 586
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda16;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 597
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    invoke-static {v2, v1, v3, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 599
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_3

    .line 604
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    :cond_3
    return-void

    .line 574
    :cond_4
    :goto_0
    const-string v0, "No notifications! Thank you for doing your work."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 575
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    :cond_5
    return-void
.end method

.method public addPncWomenListView()V
    .locals 5

    .line 1071
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    const-string v2, "pncMothers"

    .line 1074
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1072
    const-string v2, "Select a PNC Mother"

    invoke-static {p0, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    .line 1075
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1077
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda18;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 1083
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1084
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getListViewItemsForNotificationListFromMemberDataBeans(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1085
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    invoke-static {v3, v2, v4, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 1087
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getMemberListItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1088
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    invoke-static {v2, v1, v3, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1090
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1093
    const-string v0, "No PNC Women in your Area"

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1094
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1096
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addPregnantWomenListView(Z)V
    .locals 4

    .line 1042
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1043
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    .line 1044
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1043
    const-string v1, "Select a pregnant women"

    invoke-static {p0, v1, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    .line 1045
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1047
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 1053
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getListViewItemsForNotificationListFromMemberDataBeans(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1055
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    invoke-static {v2, v1, v3, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getMemberListItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1058
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    invoke-static {v1, v0, v2, p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1060
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1062
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1063
    const-string p1, "No pregnant women in your area"

    invoke-static {v0, v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1064
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1066
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSelectedServiceMemberList()V
    .locals 4

    .line 731
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 732
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 733
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 734
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 735
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 736
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "pncMothers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "pregnantWomen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "childrenUpto5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "pregnancyOutcome"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "childrenAbove5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 749
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addPncWomenListView()V

    goto :goto_1

    .line 746
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addPregnantWomenListView(Z)V

    goto :goto_1

    .line 742
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addChildrenListView(Z)V

    .line 752
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 753
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b3620e9 -> :sswitch_4
        0x873b365 -> :sswitch_3
        0x4a0e01e0 -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 2

    .line 1428
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveFamilyDataByMemberId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 1429
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersOfFamilyByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->membersOfFamily:Ljava/util/List;

    const/4 v0, 0x1

    .line 1430
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 1431
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 1432
    new-instance v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1433
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivityOnline(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public endSessionOnline(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->endOnlinePreviousSession(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionDataBean:Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getEndedOn()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;->setEndedOn(Ljava/lang/Long;)V

    .line 483
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addChildrenListView$18$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1018
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 1019
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    :cond_0
    return-void
.end method

.method synthetic lambda$addNotificationSelectionScreen$10$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 0

    .line 577
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addMemberTypeScreen()V

    return-void
.end method

.method synthetic lambda$addNotificationSelectionScreen$11$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 589
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 590
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    if-eqz p1, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 593
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    :cond_1
    return-void
.end method

.method synthetic lambda$addPncWomenListView$20$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1078
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 1079
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    :cond_0
    return-void
.end method

.method synthetic lambda$addPregnantWomenListView$19$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1048
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 1049
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    :cond_0
    return-void
.end method

.method synthetic lambda$addSearchTextBox$13$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity()V
    .locals 7

    .line 782
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method synthetic lambda$addSearchTextBox$14$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 0

    .line 782
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addSelectedServiceMemberList$12$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 0

    .line 754
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addMemberTypeScreen()V

    return-void
.end method

.method synthetic lambda$apiCallsForFetchingOnlineMembers$17$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity()V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string v1, "Unable to fetch members. Please try again."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$endSessionOnline$9$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showFormSubmitMessage(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    return-void
.end method

.method synthetic lambda$getSearchClickOnline$15$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 8

    .line 833
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 836
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string p2, "You need internet to search members online"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onBackPressed$21$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 1

    .line 1781
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1782
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1783
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->navigateToHomeScreen(Z)V

    .line 1784
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->finish()V

    goto :goto_0

    .line 1786
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$retrieveCampaignSessionsByLocation$3$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string v1, "No area assigned. Please re-sync the app or contact support."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$setCampaignSelectionScreen$4$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignMasterBeans:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    .line 395
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setCampaignSelectionScreen$5$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 0

    .line 409
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showEndCurrentSessionAlert(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    return-void
.end method

.method synthetic lambda$setCampaignSelectionScreen$6$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 422
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setServiceListView$16$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 874
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    .line 875
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onServiceSelectionClick()V

    return-void
.end method

.method synthetic lambda$showEndCurrentSessionAlert$8$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;Landroid/view/View;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 467
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 468
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 469
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->endSesionBySessionId(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$showOutOfSessionAlert$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;Landroid/view/View;)V
    .locals 1

    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 310
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 311
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    const/4 p2, 0x0

    .line 312
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 313
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->endSesionBySessionId(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showPreviousInactiveSessionAlert$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 1

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 296
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startNewSession()V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showStartNewImmunisationAlert$7$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;Landroid/view/View;)V
    .locals 1

    .line 451
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 453
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 454
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->endSesionBySessionId(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$startDynamicFormActivity$22$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 0

    .line 1818
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1819
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$startNewSessionAlert$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationActivity(Landroid/view/View;)V
    .locals 1

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 280
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 281
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startNewSession()V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1229
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 1231
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1232
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_3

    .line 1233
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isScanAbha:Z

    if-eqz p1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addMemberTypeScreen()V

    goto/16 :goto_0

    .line 1235
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    const-string p2, "LOCATION_SCREEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1236
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onServiceSelectionClick()V

    goto/16 :goto_0

    .line 1237
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    const-string p2, "memberSelectionScreen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1238
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setMemberSelectionScreen()V

    goto/16 :goto_0

    .line 1239
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    const-string p2, "notificationSelectionScreen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1240
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addNotificationSelectionScreen(Z)V

    goto/16 :goto_0

    .line 1242
    :cond_3
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 1243
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setLocationSelectionScreen()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_9

    .line 1245
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 1246
    const-string p1, "Failed to scan QR"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    :cond_5
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    .line 1250
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "QR Scanner Data : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RIActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    const-string p3, "memberTypeScreen"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1252
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setQrScanFilterData(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 1253
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberUsingAbhaScan(Ljava/util/LinkedHashMap;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object p1

    .line 1254
    const-string p2, "No member found with scan ABHA number."

    if-eqz p1, :cond_7

    .line 1255
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setSelectedService(Ljava/lang/String;)V

    .line 1256
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 1257
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    goto :goto_0

    .line 1260
    :cond_6
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :cond_7
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1265
    :cond_8
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setQrScanFilterData(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 1266
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto :goto_0

    .line 1270
    :cond_9
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->navigateToHomeScreen(Z)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1780
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 1790
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close campaign?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1793
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1293
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2729

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1294
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isScanAbha:Z

    .line 1295
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 1296
    const-class v0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 1297
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void

    .line 1300
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-eq p1, v0, :cond_1

    return-void

    .line 1304
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "locationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "notificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :sswitch_3
    const-string v0, "CAMPAIGN_SELECTION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    const-string p1, "FHW_PNC"

    const-string v0, "FHW_ANC"

    const-string v3, "pncMothers"

    const-string v4, "DPT_BOOSTER_2_ALERT"

    const-string v5, "pregnantWomen"

    const-string v6, "FHW_CS"

    const-string v7, "childrenAbove5"

    const-string v8, "childrenUpto5"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 1306
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1307
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1308
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select location"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void

    .line 1312
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1313
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveCampaignSessionsByLocation()V

    goto/16 :goto_4

    .line 1346
    :pswitch_1
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    if-eq v2, v1, :cond_e

    .line 1347
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1348
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1350
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1351
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1352
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p0, p1, v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1354
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v6, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1356
    :cond_8
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1357
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1359
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1360
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1361
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1363
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v4, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1365
    :cond_a
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1366
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1368
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1369
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1370
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1372
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1374
    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1378
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1381
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1385
    :cond_e
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1389
    :pswitch_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_2

    .line 1395
    :cond_f
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    if-nez v1, :cond_10

    .line 1396
    const-string p1, "Please select a task"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1399
    :cond_10
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1400
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1402
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1403
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1404
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v6, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1406
    :cond_11
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1408
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1409
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1410
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v4, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1412
    :cond_12
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1414
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1416
    :cond_13
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1418
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_4

    .line 1390
    :cond_14
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addMemberTypeScreen()V

    .line 1391
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 1392
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    return-void

    .line 1316
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1317
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    if-eqz p1, :cond_1a

    .line 1318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getConfigId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignSessionByConfigId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 1319
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    if-eqz p1, :cond_17

    .line 1320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 1321
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1322
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1324
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getStartedOn()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1325
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showOutOfSessionAlert(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    goto :goto_3

    .line 1326
    :cond_15
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getConfigId()Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 1327
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showStartNewImmunisationAlert(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    goto :goto_3

    .line 1329
    :cond_16
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addMemberTypeScreen()V

    goto :goto_3

    .line 1332
    :cond_17
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->checkForPreviousSessions(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showPreviousInactiveSessionAlert(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    goto :goto_3

    .line 1335
    :cond_18
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->startNewSessionAlert()V

    .line 1338
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    :cond_19
    :goto_4
    return-void

    .line 1340
    :cond_1a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string v0, "No campaign has been selected"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1ed34e12 -> :sswitch_3
        0x1db0a0ad -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x5165dca3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 222
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;->getLoginBeanFromDb()Lcom/argusoft/sewa/android/app/model/LoginBean;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 225
    :cond_0
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Asha"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isAsha:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 226
    sput-boolean p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 227
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 14

    .line 1188
    :try_start_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x1e

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getPregnantWomenListFromDatabase()Ljava/util/List;

    move-result-object v0

    .line 1190
    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    .line 1191
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1192
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    goto :goto_0

    .line 1194
    :cond_0
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    iget-wide v11, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v13

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x1e

    invoke-virtual/range {v4 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUserAsPerCampaignDate(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 1195
    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    .line 1196
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onLoadMoreUiNotifications(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 1182
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUiMember(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1216
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getMemberListItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1218
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1221
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    .line 1223
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method public onLoadMoreUiNotifications(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1207
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1210
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1741
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1742
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 1744
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "memberTypeScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "locationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "MEMBER_DETAILS_TO_ASHA_USER_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "IMMUNISATION_INVENTORY_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "notificationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "CAMPAIGN_SELECTION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "LOCATION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1770
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 1750
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1751
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveCampaignSessionsByLocation()V

    goto :goto_1

    .line 1763
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 1754
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onServiceSelectionClick()V

    goto :goto_1

    .line 1766
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 1767
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveCampaignSessionsByLocation()V

    goto :goto_1

    .line 1747
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addMemberTypeScreen()V

    goto :goto_1

    .line 1760
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 1757
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->onServiceSelectionClick()V

    :cond_8
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x206703ca -> :sswitch_7
        -0x1ed34e12 -> :sswitch_6
        0x1db0a0ad -> :sswitch_5
        0x260258a5 -> :sswitch_4
        0x27b5194e -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x5165dca3 -> :sswitch_1
        0x7046d680 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setContentView(Landroid/view/View;)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->resumeActivity()V

    .line 247
    const-string v0, "Mamta campaign Immunization"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceSelectionClick()V
    .locals 7

    .line 507
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 508
    const-string v0, "Please select a type of service"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 528
    :cond_1
    const-string v0, "pncMothers"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    .line 529
    const-string v0, "PNC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    .line 530
    const-string v0, "FHW_PNC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_2
    const-string v0, "pregnantWomen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    .line 524
    const-string v0, "PW"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    .line 525
    const-string v0, "FHW_ANC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    goto :goto_0

    .line 518
    :cond_3
    const-string v0, "childrenAbove5"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    .line 519
    const-string v0, "C_5_20"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    .line 520
    const-string v0, "DPT_BOOSTER_2_ALERT"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    goto :goto_0

    .line 513
    :cond_4
    const-string v0, "childrenUpto5"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    .line 514
    const-string v0, "C"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    .line 515
    const-string v0, "FHW_CS"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 534
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setHeaderForMemberScreen()V

    .line 538
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addSearchTextBox()V

    .line 539
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedServiceIndex:I

    if-ne v0, v1, :cond_5

    .line 540
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedService:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_1

    .line 542
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    :goto_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 232
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 237
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onStop()V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveCampaignSessionsByLocation()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveAllAshaAreaAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedLocations:Ljava/util/List;

    .line 354
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 356
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->mapOfAreaNameWithIdAsKey:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedAreaIds:Ljava/util/List;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignSessionByLocationId(Ljava/util/List;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 367
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedAreaIds:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignMasterByLocationId(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignMasterBeans:Ljava/util/List;

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->assignedAreaIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCompletedSessionForTodayByLocationId(Ljava/util/List;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setCampaignSelectionScreen(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 372
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setCampaignSelectionScreen(Ljava/lang/Boolean;)V

    :goto_1
    return-void

    .line 360
    :cond_2
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retrieveCountsForEachNotificationType(Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x0

    .line 843
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 844
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 845
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    .line 846
    sput-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 847
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 853
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForNotificationTypeBasedOnCampaign(Ljava/util/List;Ljava/util/List;Ljava/util/Date;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationsCountMap:Ljava/util/Map;

    .line 854
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrieveCountForRIServices(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    .line 855
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setServiceListView()V

    return-void
.end method

.method public retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 15

    move-object v1, p0

    move-object/from16 v12, p2

    const/4 v13, 0x0

    .line 548
    iput-object v13, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    const/4 v0, -0x1

    .line 549
    iput v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    const/4 v14, 0x0

    .line 550
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    .line 551
    sput-boolean v14, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 552
    iput-object v12, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->search:Ljava/lang/CharSequence;

    .line 554
    :try_start_0
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v11

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    invoke-virtual/range {v2 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUserAsPerCampaignDate(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationBeanList:Ljava/util/List;

    .line 555
    iget-wide v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 557
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v12, :cond_0

    const/4 v14, 0x1

    .line 559
    :cond_0
    invoke-virtual {p0, v14}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addNotificationSelectionScreen(Z)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 949
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    const/4 v2, 0x0

    .line 950
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    .line 951
    sput-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    const/4 v3, -0x1

    .line 952
    iput v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedPeopleIndex:I

    const/4 v4, 0x0

    .line 953
    iput-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 954
    iput-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const-wide/16 v4, 0x0

    .line 955
    iput-wide v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    move-object/from16 v4, p2

    .line 956
    iput-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->search:Ljava/lang/CharSequence;

    move-object/from16 v5, p5

    .line 957
    iput-object v5, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dateForOfflineSearch:Ljava/util/Date;

    .line 958
    invoke-static/range {p3 .. p3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setQrScanFilterData(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 959
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v2, "pncMothers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "pregnantWomen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "childrenUpto5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "pregnancyOutcome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v5, "childrenAbove5"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 972
    :pswitch_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-wide v12, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dateForOfflineSearch:Ljava/util/Date;

    const/16 v16, 0x1

    const/4 v8, 0x0

    const-wide/16 v10, 0x1e

    move-object/from16 v9, p2

    move-object/from16 v14, p4

    invoke-virtual/range {v6 .. v16}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePncMothersByAshaAreaVhnd(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJLjava/lang/String;Ljava/util/Date;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 966
    :pswitch_1
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getPregnantWomenListFromDatabase()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 969
    :pswitch_2
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->search:Ljava/lang/CharSequence;

    iget-wide v6, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v2 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrieveWpdWomenByArea(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 962
    :pswitch_3
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getChildrenListFromDataBase()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 963
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    sget-object v2, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->CHILD_DUE_VACCINES_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 976
    :goto_2
    iget-wide v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->offset:J

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setMemberSelectionScreen()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b3620e9 -> :sswitch_4
        0x873b365 -> :sswitch_3
        0x4a0e01e0 -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 8

    .line 896
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->clear()V

    const/4 p5, 0x1

    .line 897
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->isOnlineSearch:Ljava/lang/Boolean;

    .line 898
    sput-boolean p5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 899
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 900
    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, p5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->apiCallsForFetchingOnlineMembers(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 902
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const-string p2, "C"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberType:Ljava/lang/String;

    const-string p2, "C_5_20"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 903
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 904
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setDueVaccinesCountInMemberBean(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setMemberSelectionScreen()V

    return-void
.end method

.method public setCampaignSelectionScreen(Ljava/lang/Boolean;)V
    .locals 6

    .line 378
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 379
    const-string p1, "CAMPAIGN_SELECTION_SCREEN"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    .line 381
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignMasterBeans:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 383
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dayNumWithCampaignMap:Ljava/util/Map;

    .line 384
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignMasterBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    .line 385
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->dayNumWithCampaignMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 388
    :cond_0
    const-string p1, "Select a campaign"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 389
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignMasterBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->getCampaignList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 393
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 397
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->custom_button_list:I

    invoke-static {v3, p1, v4, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 398
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    if-eqz p1, :cond_1

    .line 401
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {p1, v4, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sessionButtonLayout:Landroid/widget/LinearLayout;

    .line 402
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getConfigId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignMasterByConfigIdAndWeek(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    move-result-object p1

    .line 404
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string v2, "End Session"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getWhiteBackgroundButtonView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->notificationBadgeBackground:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 406
    const-string v2, "End Ongoing Session On "

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDayNameFromNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->mapOfAreaNameWithIdAsKey:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object p1, v4, v3

    .line 406
    const-string p1, "%s %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sessionButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const/16 v2, 0x1e

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getVerticalSpaceSeparator(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sessionButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->sessionButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 417
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 418
    const-string p1, "No campaign scheduled"

    invoke-static {v1, v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 419
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->showProcessDialog()V

    .line 725
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->screen:Ljava/lang/String;

    .line 726
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->addSelectedServiceMemberList()V

    return-void
.end method

.method public setServiceListView()V
    .locals 7

    .line 871
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectOptionTv:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->buttonList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 873
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;)V

    .line 878
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Due Children 0 to 5 year age"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationsCountMap:Ljava/util/Map;

    const-string v5, "FHW_CS"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due Children 5 to 7 year age"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationsCountMap:Ljava/util/Map;

    const-string v6, "DPT_BOOSTER_2_ALERT"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due Pregnant Women"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->servicesCountMap:Ljava/util/Map;

    const-string v6, "pregnantWomen"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due PNC Women"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->notificationsCountMap:Ljava/util/Map;

    const-string v5, "FHW_PNC"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    const-string v3, "Please select an option"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->selectOptionTv:Lcom/google/android/material/textview/MaterialTextView;

    .line 884
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 885
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->buttonList:Landroid/widget/ListView;

    .line 886
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 887
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationActivity;->hideProcessDialog()V

    return-void
.end method
