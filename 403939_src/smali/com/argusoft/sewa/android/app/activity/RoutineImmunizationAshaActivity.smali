.class public Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "RoutineImmunizationAshaActivity.java"

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

.field private static final NOTIFICATION_DISPLAY_SCREEN:Ljava/lang/String; = "notificationDisplayScreen"

.field private static final REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY:Ljava/lang/Integer;

.field private static final REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

.field private static final SERVICE_CHILDREN_ABOVE_5:Ljava/lang/String; = "childrenAbove5"

.field private static final SERVICE_CHILDREN_UPTO_5:Ljava/lang/String; = "childrenUpto5"

.field private static final SERVICE_ELIGIBLE_COUPLES:Ljava/lang/String; = "eligibleCouples"

.field private static final SERVICE_NEWLY_WED:Ljava/lang/String; = "newlyWed"

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

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

.field private locationFilter:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

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

.field private notificationsCountMapOtherService:Ljava/util/Map;
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

.field private selectedLocationId:Ljava/lang/Integer;

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

.field private selectedNotificationCode:Ljava/lang/String;

.field private selectedPeopleIndex:I

.field private selectedService:Ljava/lang/String;

.field private selectedServiceIndex:I

.field private selectedSessionDataBean:Lcom/argusoft/sewa/android/app/databean/CampaignSessionDataBean;

.field private selectedVisitIndex:I

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

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

    const/16 v0, 0x7d1

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 150
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    .line 157
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 169
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedPeopleIndex:I

    .line 170
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedVisitIndex:I

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->isScanAbha:Z

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 189
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberType:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->servicesCountMap:Ljava/util/Map;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationBeans:Ljava/util/List;

    .line 205
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedLocations:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedAreaIds:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->mapOfAreaNameWithIdAsKey:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)Ljava/util/Timer;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;J)J
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    return-object p0
.end method

.method private addSearchTextBox()V
    .locals 9

    .line 651
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 652
    const-string v0, "NAME"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    const-string v0, "MOBILE_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    const-string v0, "ABHA_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    const-string v0, "MEMBER_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    const-string v0, "FAMILY_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    const-string v0, "DOB"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v0, "LOCATION"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    new-instance v8, Lcom/argusoft/sewa/android/app/component/SearchComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v0, "Enter text and click search icon to search online"

    .line 660
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/SearchComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;)V

    iput-object v8, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 662
    invoke-virtual {v8, v0, v1, v0, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->setPadding(IIII)V

    .line 663
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getTextWatcherForOfflineSearch()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addTextWatcherInEditText(Landroid/text/TextWatcher;)V

    .line 664
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addOnDateSetListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkForAssignedAreas()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationBeans:Ljava/util/List;

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedLocationId:Ljava/lang/Integer;

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 274
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveCampaignSessionsByLocation()V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setLocationSelectionScreen()V

    :goto_0
    return-void
.end method

.method private getCampaignList(Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    if-eqz p1, :cond_3

    .line 352
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 355
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    .line 359
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->mapOfAreaNameWithIdAsKey:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDayNameFromNumber(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "N/A"

    :goto_1
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 353
    :cond_3
    :goto_2
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

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 775
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    const-string v3, "childrenUpto5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->search:Ljava/lang/CharSequence;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v3 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrieveChildrenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v1

    .line 778
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    const-string v3, "childrenAbove5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->search:Ljava/lang/CharSequence;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v3 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrieveChildrenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v1

    .line 782
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

    .line 783
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setDueVaccinesCountInMemberBean(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 784
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getListViewItemsFoDPTMembersList(Ljava/util/List;)Ljava/util/List;
    .locals 20
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

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 590
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 591
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 592
    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v5, 0x2

    const/4 v7, 0x3

    .line 593
    invoke-virtual {v4, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 594
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {v0, v8}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v19, 0x1

    goto :goto_1

    :cond_0
    const/16 v19, 0x0

    .line 595
    :goto_1
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v7, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v9

    .line 598
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 599
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 601
    :goto_2
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 602
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_3

    .line 603
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    const-string v4, "N/A"

    :goto_3
    move-object v13, v4

    .line 604
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v11

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 605
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v12, "Mob No"

    const-string v14, "DOB"

    const/16 v16, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v19}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 604
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v1
.end method

.method private getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;
    .locals 21
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

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 533
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

    .line 532
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->setOverdueFlag(Ljava/lang/Boolean;)V

    .line 535
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 543
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getTask()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v7, "ASHA_CS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "N/A"

    const/4 v8, 0x0

    if-nez v4, :cond_4

    .line 567
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 568
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    .line 570
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 571
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v8

    :cond_1
    move-object v10, v8

    .line 573
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v5

    .line 574
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 575
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_2
    move-object v14, v7

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 576
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 578
    :goto_3
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v12

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 579
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 580
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    const-string v13, "Mob No"

    const-string v15, "DOB"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v20}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 545
    :cond_4
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 546
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    .line 548
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 549
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object v9, v8

    .line 551
    :goto_4
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v10

    if-eqz v9, :cond_6

    .line 552
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_7

    .line 553
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v7

    :cond_7
    :goto_5
    move-object v14, v7

    .line 555
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 556
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getExpectedDueDate()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v6, v6, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->convertDateToString(JZZZ)Ljava/lang/String;

    move-result-object v8

    :cond_8
    move-object v10, v8

    .line 558
    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setDueVaccinesCountInMemberBean(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    .line 559
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 560
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    const-string v5, "No Due Vaccines"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 562
    :goto_6
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v12

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 563
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 564
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;->getOverdueFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    const-string v13, "Mob No"

    const-string v15, "DOB"

    const/16 v17, 0x0

    const-string v18, "Due Vaccines"

    move-object v9, v7

    invoke-direct/range {v9 .. v20}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 562
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v1
.end method

.method private getMemberListItem(Ljava/util/List;)Ljava/util/List;
    .locals 24
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

    .line 875
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 877
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

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
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "pregnantWomen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "childrenUpto5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "childrenAbove5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 900
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 901
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getVisitNumberByLmpDate(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v4

    .line 902
    new-instance v13, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHighRiskCase()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v9, "Visit"

    const/4 v11, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 881
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 882
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccines()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 884
    new-instance v15, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 885
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v9

    .line 886
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v10

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 887
    invoke-static {v3, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMotherAndFatherNameForListDisplay(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Due Vaccines"

    .line 888
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 884
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 890
    :cond_4
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 891
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v18

    .line 892
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v19

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 893
    invoke-static {v3, v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMotherAndFatherNameForListDisplay(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/core/SewaFhsService;)Ljava/lang/String;

    move-result-object v21

    const-string v3, "No Due Vaccines"

    .line 894
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v23}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 890
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x2b3620e9 -> :sswitch_3
        0x4a0e01e0 -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
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

    .line 790
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->search:Ljava/lang/CharSequence;

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-wide/16 v2, 0x1e

    invoke-virtual/range {v0 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrievePregnantWomenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 794
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;
    .locals 3

    if-eqz p1, :cond_0

    .line 763
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 764
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getWeekNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 765
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 767
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 769
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1
.end method

.method private getTextWatcherForOfflineSearch()Landroid/text/TextWatcher;
    .locals 1

    .line 675
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    return-object v0
.end method

.method private getVisitNumberByLmpDate(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 9

    if-eqz p1, :cond_7

    .line 913
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 914
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 915
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x1c

    const/4 v3, 0x5

    .line 916
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 917
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 918
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v4, 0x5b

    .line 919
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 920
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 921
    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0xbd

    .line 922
    invoke-virtual {v4, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 923
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 924
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xf5

    .line 925
    invoke-virtual {v5, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 926
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 927
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 929
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

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 931
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

    .line 932
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 933
    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    .line 934
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    .line 928
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private initView()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 250
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setContentView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 253
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setContentView(Landroid/view/View;)V

    .line 258
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    .line 261
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfraTypeLocationServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveCampaignSessionsByLocation()V

    return-void
.end method

.method private setDueVaccinesCountInMemberBean(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 8

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    new-instance v2, Ljava/util/Date;

    .line 1295
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

    .line 1296
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/Date;

    .line 1297
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

    .line 1296
    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;->getMissedImmunisationListFromDueList(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1298
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1299
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setDueVaccinesCount(Ljava/lang/Integer;)V

    .line 1300
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1303
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

    .line 1305
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setDueVaccines(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setHeaderForMemberScreen()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setLocationSelectionScreen()V
    .locals 4

    .line 283
    const-string v0, "locationSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 285
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 286
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-direct {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Ljava/util/List;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method private setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 758
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

    .line 1041
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
    const-string v0, "PNCM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "CPW"

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

    .line 1046
    :pswitch_0
    const-string p1, "childrenAbove5"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1052
    :pswitch_1
    const-string p1, "pncMothers"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1049
    :pswitch_2
    const-string p1, "pregnantWomen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1043
    :pswitch_3
    const-string p1, "childrenUpto5"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_3
        0x1058a -> :sswitch_2
        0x258ae8 -> :sswitch_1
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


# virtual methods
.method public addChildrenListView(Z)V
    .locals 3

    .line 799
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 800
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    const-string v0, "Select a Child"

    if-nez p1, :cond_0

    .line 801
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->servicesCountMap:Ljava/util/Map;

    const-string v1, "childrenUpto5"

    .line 802
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 801
    invoke-static {p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 804
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->servicesCountMap:Ljava/util/Map;

    const-string v1, "childrenAbove5"

    .line 805
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 804
    invoke-static {p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    .line 807
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 809
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getMemberListItem(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 811
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 816
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_due_vaccine:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 817
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 819
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 820
    const-string p1, "No child member in your Area"

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 821
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 823
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addDPTMembersScreen(Z)V
    .locals 5

    .line 495
    const-string v0, "notificationDisplayScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    const-string v1, "Okay"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    const-string v0, "Select Beneficiary"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 511
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 518
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getListViewItemsFoDPTMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 519
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 520
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    :cond_1
    return-void

    .line 499
    :cond_2
    :goto_0
    const-string v0, "No notifications! Thank you for doing your work."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 500
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_3

    .line 505
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    :cond_3
    return-void
.end method

.method public addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 368
    const-string v0, "memberTypeScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    const/4 v0, -0x1

    .line 369
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->isScanAbha:Z

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 373
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveCountsForEachNotificationType(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    .line 374
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addNotificationDisplayScreen(Z)V
    .locals 5

    .line 455
    const-string v0, "notificationDisplayScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    const-string v1, "Okay"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "FMI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_0

    .line 473
    :cond_1
    const-string v0, "Select Beneficiary"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 475
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 482
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 483
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date_and_info:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 484
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    :cond_2
    return-void

    .line 459
    :cond_3
    :goto_1
    const-string v0, "No notifications! Thank you for doing your work."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 460
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_4

    .line 465
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    :cond_4
    return-void
.end method

.method public addPncWomenListView()V
    .locals 4

    .line 852
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->servicesCountMap:Ljava/util/Map;

    const-string v1, "pncMothers"

    .line 855
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 853
    const-string v1, "Select a PNC Mother"

    invoke-static {p0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    .line 856
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 857
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getMemberListItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 859
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 864
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 865
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 868
    const-string v0, "No PNC Women in your Area"

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 869
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 871
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addPregnantWomenListView(Z)V
    .locals 3

    .line 828
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 829
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->servicesCountMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    .line 830
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 829
    const-string v0, "Select a pregnant women"

    invoke-static {p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getTitleWithCountView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    .line 831
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 833
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getMemberListItem(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 835
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 840
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 841
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 843
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 844
    const-string p1, "No pregnant women in your area"

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 845
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSelectedServiceMemberList()V
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 622
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

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
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "pregnantWomen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "childrenUpto5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "childrenAbove5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 634
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addPncWomenListView()V

    goto :goto_1

    .line 631
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addPregnantWomenListView(Z)V

    goto :goto_1

    .line 627
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addChildrenListView(Z)V

    .line 637
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 638
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Main Menu"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b3620e9 -> :sswitch_3
        0x4a0e01e0 -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$addChildrenListView$12$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 812
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 813
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedPeopleIndex:I

    :cond_0
    return-void
.end method

.method synthetic lambda$addDPTMembersScreen$5$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/view/View;)V
    .locals 0

    .line 502
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    return-void
.end method

.method synthetic lambda$addDPTMembersScreen$6$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 514
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 515
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    :cond_0
    return-void
.end method

.method synthetic lambda$addNotificationDisplayScreen$3$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/view/View;)V
    .locals 0

    .line 462
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    return-void
.end method

.method synthetic lambda$addNotificationDisplayScreen$4$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 478
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 479
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    :cond_0
    return-void
.end method

.method synthetic lambda$addPncWomenListView$14$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 860
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 861
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedPeopleIndex:I

    :cond_0
    return-void
.end method

.method synthetic lambda$addPregnantWomenListView$13$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 836
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 837
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedPeopleIndex:I

    :cond_0
    return-void
.end method

.method synthetic lambda$addSearchTextBox$10$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/view/View;)V
    .locals 1

    .line 665
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 666
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 668
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$addSearchTextBox$8$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity()V
    .locals 7

    .line 666
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveMembersForDPTAlertFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method synthetic lambda$addSearchTextBox$9$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity()V
    .locals 7

    .line 668
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    return-void
.end method

.method synthetic lambda$addSelectedServiceMemberList$7$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 639
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$onBackPressed$15$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/view/View;)V
    .locals 1

    .line 1156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1158
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->navigateToHomeScreen(Z)V

    .line 1159
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->finish()V

    goto :goto_0

    .line 1161
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$retrieveCampaignSessionsByLocation$0$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v1, "No area assigned. Please re-sync the app or contact support."

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$setCampaignSelectionScreen$1$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->campaignMasterBeans:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    .line 334
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setCampaignSelectionScreen$2$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/view/View;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setLocationSelectionScreen()V

    return-void
.end method

.method synthetic lambda$setServiceListView$11$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 741
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    .line 742
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onServiceSelectionClick()V

    return-void
.end method

.method synthetic lambda$showMemberDetailsToAshaUser$16$com-argusoft-sewa-android-app-activity-RoutineImmunizationAshaActivity(Landroid/view/View;)V
    .locals 0

    .line 1290
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onServiceSelectionClick()V

    return-void
.end method

.method public loadMoreDPTMembersList()V
    .locals 11

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedAreaIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->search:Ljava/lang/CharSequence;

    iget-wide v9, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1e

    invoke-virtual/range {v0 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveMembersForDPTAlertForAshaAsPerCampaign(Ljava/util/List;Ljava/util/Date;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v0

    .line 965
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    .line 966
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onLoadMoreUiDPTMembers(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 968
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 997
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 999
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1000
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->REQUEST_CODE_FOR_JE_VACCINATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1001
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->isScanAbha:Z

    if-eqz p1, :cond_0

    .line 1002
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    goto/16 :goto_0

    .line 1003
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    const-string p2, "LOCATION_SCREEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1004
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onServiceSelectionClick()V

    goto/16 :goto_0

    .line 1005
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    const-string p2, "memberSelectionScreen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1006
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setMemberSelectionScreen()V

    goto/16 :goto_0

    .line 1008
    :cond_2
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->REQUEST_CODE_FOR_INVENTORY_RETURN_FORM_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 1009
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setLocationSelectionScreen()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_8

    .line 1011
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1012
    const-string p1, "Failed to scan QR"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :cond_4
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    .line 1016
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "QR Scanner Data : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RIActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    const-string p3, "memberTypeScreen"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1018
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setQrScanFilterData(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 1019
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberUsingAbhaScan(Ljava/util/LinkedHashMap;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object p1

    .line 1020
    const-string p2, "No member found with scan ABHA number."

    if-eqz p1, :cond_6

    .line 1021
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberType(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setSelectedService(Ljava/lang/String;)V

    .line 1022
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 1023
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    goto :goto_0

    .line 1026
    :cond_5
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_6
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_7
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setQrScanFilterData(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 1032
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    .line 1036
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->navigateToHomeScreen(Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1155
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 1165
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close campaign?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1168
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1060
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2729

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1061
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->isScanAbha:Z

    .line 1062
    new-instance p1, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {p1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 1063
    const-class v0, Lcom/argusoft/sewa/android/app/qrscanner/QRScannerActivity;

    invoke-virtual {p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 1064
    invoke-virtual {p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void

    .line 1067
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-eq p1, v0, :cond_1

    return-void

    .line 1071
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

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
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "CAMPAIGN_SELECTION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v0, "notificationDisplayScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1073
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 1074
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1075
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v0, "Please select location"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void

    .line 1079
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedLocationId:Ljava/lang/Integer;

    .line 1080
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1081
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveCampaignSessionsByLocation()V

    goto :goto_2

    .line 1084
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 1085
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    if-eqz p1, :cond_6

    .line 1086
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    .line 1087
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    goto :goto_2

    .line 1089
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v0, "No campaign has been selected"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void

    .line 1095
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    .line 1096
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x40af975d -> :sswitch_2
        -0x1ed34e12 -> :sswitch_1
        0x5165dca3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 217
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 219
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-nez p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;->getLoginBeanFromDb()Lcom/argusoft/sewa/android/app/model/LoginBean;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    .line 222
    :cond_0
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Asha"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->isAsha:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 223
    sput-boolean p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 224
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 10

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v0 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUserAsPerCampaignDate(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 954
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    .line 955
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onLoadMoreUi(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 957
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
    .locals 2

    .line 943
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->loadMoreDPTMembersList()V

    goto :goto_0

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onLoadMoreBackground()V

    :goto_0
    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
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

    .line 974
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 976
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 977
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 979
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiDPTMembers(Ljava/util/List;)V
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

    .line 985
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 987
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getListViewItemsFoDPTMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 988
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 990
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 1103
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_9

    .line 1106
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v2, "memberSelectionScreen"

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "memberTypeScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "locationSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "MEMBER_DETAILS_TO_ASHA_USER_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "visitSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "CAMPAIGN_SELECTION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "LOCATION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "notificationDisplayScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1145
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 1129
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 1130
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveCampaignSessionsByLocation()V

    goto :goto_2

    .line 1142
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 1133
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onServiceSelectionClick()V

    goto :goto_2

    .line 1108
    :pswitch_3
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->isScanAbha:Z

    if-eqz p1, :cond_8

    .line 1109
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    goto :goto_2

    .line 1111
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1112
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    .line 1113
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedPeopleIndex:I

    .line 1114
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 1115
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1116
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setHeaderForMemberScreen()V

    .line 1118
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addSearchTextBox()V

    .line 1120
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v8, 0x1e

    iget-wide v10, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v7, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    const/4 p1, 0x0

    .line 1121
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    goto :goto_2

    .line 1139
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 1136
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->onServiceSelectionClick()V

    goto :goto_2

    .line 1126
    :pswitch_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addMemberTypeScreen(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V

    :cond_9
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x40af975d -> :sswitch_7
        -0x206703ca -> :sswitch_6
        -0x1ed34e12 -> :sswitch_5
        0xe6d904d -> :sswitch_4
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
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .line 239
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setContentView(Landroid/view/View;)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->resumeActivity()V

    .line 244
    const-string v0, "Mamta campaign Immunization"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceSelectionClick()V
    .locals 7

    .line 386
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 387
    const-string v0, "Please select a type of service"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    const-string v0, "pncMothers"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    .line 408
    const-string v0, "PNC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberType:Ljava/lang/String;

    .line 409
    const-string v0, "ASHA_PNC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    goto :goto_0

    .line 402
    :cond_2
    const-string v0, "pregnantWomen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    .line 403
    const-string v0, "PW"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberType:Ljava/lang/String;

    .line 404
    const-string v0, "ASHA_ANC"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_3
    const-string v0, "childrenAbove5"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    .line 398
    const-string v0, "C_5_20"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberType:Ljava/lang/String;

    .line 399
    const-string v0, "DPT_BOOSTER_2_ALERT"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    goto :goto_0

    .line 392
    :cond_4
    const-string v0, "childrenUpto5"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    .line 393
    const-string v0, "C"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberType:Ljava/lang/String;

    .line 394
    const-string v0, "ASHA_CS"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 413
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 414
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 415
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setHeaderForMemberScreen()V

    .line 417
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addSearchTextBox()V

    .line 418
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedServiceIndex:I

    if-ne v0, v1, :cond_5

    .line 419
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveMembersForDPTAlertFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    goto :goto_1

    .line 421
    :cond_5
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    :goto_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 229
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 234
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

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveAllAshaAreaAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedLocations:Ljava/util/List;

    .line 299
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 301
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->mapOfAreaNameWithIdAsKey:Ljava/util/Map;

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

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedAreaIds:Ljava/util/List;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignSessionByLocationId(Ljava/util/List;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->ongoingSessionBean:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 312
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedAreaIds:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getCampaignMasterByLocationId(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->campaignMasterBeans:Ljava/util/List;

    .line 313
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setCampaignSelectionScreen()V

    return-void

    .line 305
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retrieveCountsForEachNotificationType(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotificationCode:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForNotificationTypeBasedOnCampaign(Ljava/util/List;Ljava/util/List;Ljava/util/Date;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    .line 381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveCountForAshaDptBoosterNotificationBasedOnCampaign(Ljava/util/List;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationsCountMapOtherService:Ljava/util/Map;

    .line 382
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setServiceListView()V

    return-void
.end method

.method public retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 14

    move-object v1, p0

    move-object/from16 v12, p2

    const/4 v13, 0x0

    .line 427
    iput-object v13, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 428
    iput-object v12, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->search:Ljava/lang/CharSequence;

    const-wide/16 v9, 0x0

    .line 429
    iput-wide v9, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    .line 431
    :try_start_0
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->assignedAreaIds:Ljava/util/List;

    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v11

    const/4 v4, 0x0

    const-wide/16 v7, 0x1e

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveNotificationsForUserAsPerCampaignDate(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;JJLjava/util/Date;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    .line 432
    iget-wide v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v12, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addNotificationDisplayScreen(Z)V

    return-void
.end method

.method public retrieveMemberCountForServices(Ljava/lang/Integer;)V
    .locals 2

    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->servicesCountMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 722
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->isOnlineSearch:Ljava/lang/Boolean;

    .line 723
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 724
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 730
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->retrieveCountForRIServices(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->servicesCountMap:Ljava/util/Map;

    .line 731
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setServiceListView()V

    return-void
.end method

.method public retrieveMembersForDPTAlertFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 441
    iput-object v3, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 442
    iput-object v2, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->search:Ljava/lang/CharSequence;

    const-wide/16 v4, 0x0

    .line 443
    iput-wide v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    .line 445
    :try_start_0
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedCampaign:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-direct {v1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getSelectedCampaignDate(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Ljava/util/Date;

    move-result-object v8

    iget-object v9, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->search:Ljava/lang/CharSequence;

    iget-wide v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x1e

    move-wide v15, v4

    invoke-virtual/range {v6 .. v16}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->retrieveMembersForDPTAlertForAshaAsPerCampaign(Ljava/util/List;Ljava/util/Date;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    .line 446
    iget-wide v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J

    const-wide/16 v6, 0x1e

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 448
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 450
    :goto_1
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addDPTMembersScreen(Z)V

    return-void
.end method

.method public setCampaignSelectionScreen()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 319
    const-string v0, "CAMPAIGN_SELECTION_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->campaignMasterBeans:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->dayNumWithCampaignMap:Ljava/util/Map;

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->campaignMasterBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    .line 324
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->dayNumWithCampaignMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    :cond_0
    const-string v0, "Select a campaign"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->campaignMasterBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->getCampaignList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 332
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda16;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 336
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->custom_button_list:I

    invoke-static {v3, v0, v4, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->pagingHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 342
    const-string v0, "No campaign scheduled"

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 343
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->showProcessDialog()V

    .line 614
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->addSelectedServiceMemberList()V

    return-void
.end method

.method public setServiceListView()V
    .locals 7

    .line 736
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectOptionTv:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 737
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->buttonList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 739
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 740
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    .line 745
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Due Children 0 to 5 year age"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    const-string v5, "ASHA_CS"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due Children 5 to 7 year age"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationsCountMapOtherService:Ljava/util/Map;

    const-string v6, "DPT_BOOSTER_2_ALERT"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due Pregnant Women"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    const-string v6, "ASHA_ANC"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Due PNC Women"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->notificationsCountMap:Ljava/util/Map;

    const-string v5, "ASHA_PNC"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->setNotificationCountFromMap(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v3, "Please select an option"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectOptionTv:Lcom/google/android/material/textview/MaterialTextView;

    .line 751
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->buttonList:Landroid/widget/ListView;

    .line 753
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 754
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public showMemberDetailsToAshaUser(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1173
    const-string v2, "MEMBER_DETAILS_TO_ASHA_USER_SCREEN"

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->screen:Ljava/lang/String;

    .line 1174
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1176
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v2

    .line 1177
    const-string v3, "FHW_PNC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "Member Id"

    const/4 v8, 0x0

    if-nez v3, :cond_b

    const-string v3, "ASHA_PNC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 1211
    :cond_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1212
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1213
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v8

    .line 1218
    :goto_0
    const-string v1, "Age as per date selected"

    const-string v3, "Date of birth (as per Aadhaar)"

    const-string v9, "Name"

    if-eqz v2, :cond_4

    .line 1219
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v12, "Head of family details"

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1220
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v8, v8, v11, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1221
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1222
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1223
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v8, v8, v11, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1224
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1225
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v10

    .line 1226
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v8, v8, v12, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1227
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    aget v13, v10, v6

    aget v14, v10, v5

    aget v10, v10, v4

    invoke-static {v13, v14, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1229
    :cond_3
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v8, v8, v11, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1230
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1233
    :cond_4
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    const-string v10, "childrenUpto5"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1234
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1235
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1237
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v12, "Mother Details"

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1238
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v8, v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1239
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1240
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1241
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v8, v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1242
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1243
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v10

    .line 1244
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v8, v12, v13}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1245
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    aget v13, v10, v6

    aget v14, v10, v5

    aget v10, v10, v4

    invoke-static {v13, v14, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1247
    :cond_5
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v8, v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1248
    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1252
    :cond_6
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v11, "Child Details"

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1253
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v8, v10, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1254
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1256
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1257
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v8, v9, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1258
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1259
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v2

    .line 1260
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v8, v9, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1261
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    aget v6, v2, v6

    aget v5, v2, v5

    aget v2, v2, v4

    invoke-static {v6, v5, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1263
    :cond_7
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v8, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1264
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1265
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "memberId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    .line 1267
    new-instance v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 1268
    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 1269
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getImmunisationGivenComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1270
    :cond_8
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    const-string v10, "pregnantWomen"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->selectedService:Ljava/lang/String;

    const-string v10, "pregnancyOutcome"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1271
    :cond_9
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v11, "Pregnant Woman Details"

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1272
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v8, v10, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1273
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1274
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1275
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v8, v9, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1276
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1277
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v2

    .line 1278
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v8, v9, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1279
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    aget v6, v2, v6

    aget v5, v2, v5

    aget v2, v2, v4

    invoke-static {v6, v5, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1281
    :cond_a
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v8, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1282
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1283
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1284
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v3, "Last menstrual period (LMP):"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v8, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1285
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1178
    :cond_b
    :goto_1
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v9, "PNC Details"

    invoke-static {v3, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1179
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v9, "Name of beneficiary"

    invoke-static {v8, v8, v3, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1180
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1181
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v8, v8, v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1182
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1183
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v7, "Member Abha Id"

    invoke-static {v8, v8, v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1184
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1185
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1186
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1188
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v9, "Husband Name"

    invoke-static {v8, v8, v7, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1189
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1192
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1193
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v7, "Last delivery date"

    invoke-static {v8, v8, v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1194
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1196
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1197
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v1

    .line 1198
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v9, "Age"

    invoke-static {v8, v8, v7, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1199
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    aget v6, v1, v6

    aget v5, v1, v5

    aget v1, v1, v4

    invoke-static {v6, v5, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1201
    :cond_e
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v4, "BPL"

    invoke-static {v8, v8, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1202
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1203
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v4, "Blood group"

    invoke-static {v8, v8, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1204
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1205
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v4, "Address"

    invoke-static {v8, v8, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1206
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1207
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    const-string v3, "Mobile Number"

    invoke-static {v8, v8, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1208
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1289
    :cond_f
    :goto_2
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/RoutineImmunizationAshaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
