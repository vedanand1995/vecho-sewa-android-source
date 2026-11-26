.class public Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MyPeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final CHART_SELECTION_SCREEN:Ljava/lang/String; = "chartSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "filSideEffectMemberSelectionScreen"

.field private static final FILARIASIS_TYPE_SELECTION_SCREEN:Ljava/lang/String; = "filariasisTypeSelectionScreen"

.field private static final MANAGE_FAMILY_MIGRATIONS_SCREEN:Ljava/lang/String; = "manageFamilyMigrationsScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final MIGRATED_FAMILY_SCREEN:Ljava/lang/String; = "migratedFamilyScreen"

.field private static final MIGRATED_MEMBERS_SCREEN:Ljava/lang/String; = "migratedMembersScreen"

.field private static final PEOPLE_SELECTION_SCREEN:Ljava/lang/String; = "peopleSelectionScreen"

.field private static final RCH_REGISTER_MEMBER_SCREEN:Ljava/lang/String; = "rchRegisterMemberScreen"

.field private static final RCH_REGISTER_TABLE_SCREEN:Ljava/lang/String; = "rchRegisterTableScreen"

.field private static final REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

.field private static final SERVICE_ADD_NEW_MEMBER:Ljava/lang/String; = "addNewMember"

.field private static final SERVICE_CHILDREN:Ljava/lang/String; = "children"

.field private static final SERVICE_CHILDREN_ABOVE_5:Ljava/lang/String; = "childrenAbove5"

.field private static final SERVICE_ELDERLY_CARE:Ljava/lang/String; = "elderlyCare"

.field private static final SERVICE_ELIGIBLE_COUPLES:Ljava/lang/String; = "eligibleCouples"

.field private static final SERVICE_FILARIASIS_DRUG_CAMPAIGN:Ljava/lang/String; = "filariasisCampaign"

.field private static final SERVICE_LEPROSY_SURVEY:Ljava/lang/String; = "leprosySurvey"

.field private static final SERVICE_MANAGE_FAMILY_MIGRATIONS:Ljava/lang/String; = "manageFamilyMigrations"

.field private static final SERVICE_MENTAL_HEALTH_SCREENING:Ljava/lang/String; = "mentalHealthScreening"

.field private static final SERVICE_MIGRATED_IN_FAMILY:Ljava/lang/String; = "migratedInFamily"

.field private static final SERVICE_MIGRATED_IN_MEMBERS:Ljava/lang/String; = "migratedInMembers"

.field private static final SERVICE_MIGRATED_OUT_FAMILY:Ljava/lang/String; = "migratedOutFamily"

.field private static final SERVICE_MIGRATED_OUT_MEMBERS:Ljava/lang/String; = "migratedOutMembers"

.field private static final SERVICE_NEWLY_WED_COUPLES:Ljava/lang/String; = "newlyWedCouples"

.field private static final SERVICE_PNC_MOTHERS:Ljava/lang/String; = "pncMothers"

.field private static final SERVICE_PREGNANT_WOMEN:Ljava/lang/String; = "pregnantWomen"

.field private static final SERVICE_RCH_REGISTER:Ljava/lang/String; = "rchRegister"

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"

.field private static final SERVICE_TEMP_REGISTRATION:Ljava/lang/String; = "tempRegistration"

.field private static final SERVICE_UPDATE_MEMBER:Ljava/lang/String; = "updateMember"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"

.field private static final VISIT_SELECTION_SCREEN:Ljava/lang/String; = "visitSelectionScreen"


# instance fields
.field private ashaAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private ashaAreaSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private dateForOfflineSearch:Ljava/util/Date;

.field private familyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headerTitle:Lcom/google/android/material/textview/MaterialTextView;

.field immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

.field private isMigratedOut:Z

.field private limit:Ljava/lang/Integer;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

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

.field private memberList:Ljava/util/List;
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

.field private migratedFamilyBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;",
            ">;"
        }
    .end annotation
.end field

.field private migratedMembersBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;",
            ">;"
        }
    .end annotation
.end field

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

.field private offset:Ljava/lang/Integer;

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private qrData:Ljava/lang/String;

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

.field private rbText:Ljava/lang/String;

.field private removedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private screen:Ljava/lang/String;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private search:Ljava/lang/CharSequence;

.field private searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

.field private searchDate:Ljava/util/Date;

.field private searchLocation:Ljava/lang/Long;

.field private searchString:Ljava/lang/CharSequence;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchType:Ljava/lang/String;

.field private selectedAshaAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFamilyIndex:I

.field private selectedFilariasisType:I

.field private selectedMemberToUpdateIndex:I

.field private selectedPeopleIndex:I

.field private selectedService:Ljava/lang/String;

.field private selectedServiceIndex:I

.field private selectedVillage:Ljava/lang/Integer;

.field private selectedVisitIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private timer:Ljava/util/Timer;

.field private villageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private villageSpinner:Landroid/widget/Spinner;

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

    const/16 v0, 0xc8

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 110
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    .line 198
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 199
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedServiceIndex:I

    .line 206
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    .line 207
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    .line 208
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVisitIndex:I

    const/16 v1, 0x1e

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 216
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedMemberToUpdateIndex:I

    .line 217
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFilariasisType:I

    .line 218
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/argusoft/sewa/android/app/component/PagingListView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/util/List;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/util/Timer;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/argusoft/sewa/android/app/component/SearchComponent;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method private addPreviousPregnancyDetailsRchRegister()V
    .locals 11

    .line 2406
    const-string v0, "F"

    const-string v1, "M"

    const-string v2, "gender"

    const-string v3, "state"

    const-string v4, "motherId"

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v6, "Previous pregnancy details"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2414
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2415
    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ARCHIVED_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2416
    sget-object v6, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_DEAD_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    .line 2419
    :try_start_0
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2420
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    .line 2421
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    .line 2422
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    sget-object v8, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ARCHIVED_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v7, v3, v8}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v7

    .line 2419
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2423
    :try_start_1
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2424
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    .line 2425
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    invoke-virtual {v8, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    .line 2426
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    sget-object v9, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ARCHIVED_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v8, v3, v9}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v8

    .line 2423
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2427
    :try_start_2
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2428
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    .line 2429
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9, v2, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 2430
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v9

    .line 2427
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2431
    :try_start_3
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2432
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    .line 2433
    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 2434
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->countOf()J

    move-result-wide v9

    .line 2431
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2436
    :try_start_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string v9, "dob"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 2437
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 2438
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v6

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v0, v6

    move-object v1, v0

    goto :goto_0

    :catch_3
    move-exception v2

    move-object v0, v6

    move-object v1, v0

    move-object v8, v1

    goto :goto_0

    :catch_4
    move-exception v2

    move-object v0, v6

    move-object v1, v0

    move-object v7, v1

    move-object v8, v7

    .line 2440
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v6

    .line 2443
    :goto_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Total number of child births"

    invoke-static {v6, v6, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2444
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2445
    const-string v5, "Male"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2444
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2446
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2447
    const-string v7, "Female"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2446
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2449
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Live children count"

    invoke-static {v6, v6, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2450
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2451
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2450
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2452
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2453
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2452
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2455
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Youngest child information"

    invoke-static {v6, v6, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_0

    .line 2457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Age"

    .line 2458
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2457
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2459
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gender"

    .line 2460
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2459
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 2462
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Not available"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private addTableRow(Landroid/widget/TableLayout;ILjava/util/LinkedHashMap;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2590
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 2591
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 2593
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 2594
    sget v5, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v6, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v5, v6, :cond_0

    .line 2595
    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 2597
    :cond_0
    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 2599
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xa

    const/16 v5, 0xf

    .line 2600
    invoke-virtual {v3, v0, v5, v0, v5}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 2603
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2604
    new-instance v6, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v6, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x10

    .line 2605
    invoke-virtual {v6, v7}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 2606
    invoke-virtual {v6, v0, v0, v0, v0}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 2607
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v8, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2608
    invoke-virtual {p3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2610
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2612
    :cond_1
    const-string v5, "N/A"

    invoke-virtual {v6, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    :goto_2
    invoke-virtual {v3, v6, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2617
    :cond_2
    new-instance p4, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v3, p4}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2628
    new-instance p3, Landroid/widget/TableRow$LayoutParams;

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-direct {p3, v4, v1, p4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 2629
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 2630
    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2632
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v1, v4, p4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2633
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-static {v2, v1, v4, p4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object p4

    .line 2634
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/16 v1, 0x1e

    .line 2635
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 2636
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 2637
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->listview_text_color_selector:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2638
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2640
    invoke-virtual {v3, v0, p3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2641
    invoke-virtual {p1, v3, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private createTableLayout(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 2553
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    .line 2554
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 2555
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 2557
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v6, 0xf

    .line 2558
    invoke-virtual {v3, v1, v6, v1, v6}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 2559
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2561
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2562
    new-instance v8, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v8, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x10

    .line 2563
    invoke-virtual {v8, v9}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 2564
    invoke-virtual {v8, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 2565
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2566
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v7}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2567
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v9, Lcom/argusoft/sewa/android/app/R$color;->textColor:I

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 2568
    invoke-virtual {v3, v8, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2571
    :cond_0
    new-instance v2, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v2, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 2572
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 2573
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 2574
    invoke-virtual {v3, v2, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2576
    invoke-virtual {v0, v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 2578
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2581
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 2582
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addTableRow(Landroid/widget/TableLayout;ILjava/util/LinkedHashMap;Ljava/util/List;)V

    add-int/2addr v2, v1

    goto :goto_1

    .line 2586
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Okay"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private fetchMembersFromServer(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1073
    const-string v3, "-"

    :try_start_0
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSelectedService(Ljava/lang/String;)V

    .line 1074
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    const-string v5, "MOBILE_NUMBER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1076
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v15, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v6 .. v18}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 1077
    :cond_0
    const-string v5, "ABHA_NUMBER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1078
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_1

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 1084
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    :cond_2
    move-object/from16 v5, p1

    .line 1085
    const-string v3, "FAMILY_ID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1086
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v17}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 1087
    :cond_3
    const-string v3, "MEMBER_ID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1088
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v17}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 1089
    :cond_4
    const-string v3, "NAME"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1090
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v17}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 1091
    :cond_5
    const-string v3, "DOB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "dd-MM-yyyy"

    if-eqz v3, :cond_6

    .line 1092
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1093
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v15, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v6 .. v18}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 1094
    :cond_6
    const-string v3, "LMP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1095
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1096
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v15, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v6 .. v18}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 1097
    :cond_7
    const-string v0, "LOCATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1098
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v13, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v15, p4

    invoke-virtual/range {v5 .. v17}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersForRIOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1100
    :cond_8
    :goto_0
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 1103
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->printStackTrace()V

    .line 1105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 1540
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1542
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 1544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 1545
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 1547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, " null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 1549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1550
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1552
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 1559
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    return-object v1
.end method

.method private getLocationSearchOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;
    .locals 1

    .line 1008
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    return-object v0
.end method

.method private getMembersList(Ljava/util/List;)Ljava/util/List;
    .locals 9
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

    .line 1485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    const-string v1, ""

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    .line 1487
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "pncMothers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "pregnantWomen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "eligibleCouples"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "children"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "mentalHealthScreening"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "elderlyCare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "newlyWedCouples"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "rchRegister"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "childrenAbove5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "updateMember"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_a
    const-string v2, "filariasisCampaign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    .line 1503
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->removedChildren:Ljava/util/List;

    .line 1504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1505
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1507
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 1509
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v4, "actualId"

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    :cond_b
    :goto_2
    sget-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    if-eqz v2, :cond_c

    .line 1515
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_3

    :cond_c
    if-nez v3, :cond_d

    .line 1518
    const-string v2, "Not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_3

    .line 1520
    :cond_d
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    .line 1523
    :goto_3
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Mother"

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1525
    :cond_e
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->removedChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1497
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1498
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    :goto_5
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6498eac5 -> :sswitch_a
        -0x431dcb3d -> :sswitch_9
        -0x2b3620e9 -> :sswitch_8
        -0x233dfbe6 -> :sswitch_7
        -0x150a0876 -> :sswitch_6
        0x16320c8 -> :sswitch_5
        0x205cf7b1 -> :sswitch_4
        0x62ea5dff -> :sswitch_3
        0x644a0edc -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getMigratedFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 1584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1585
    const-string v1, ""

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    .line 1586
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    .line 1587
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1588
    const-string v2, "LOST TO FOLLOW UP"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_1

    .line 1589
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1590
    const-string v2, "OUT OF STATE"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_1

    .line 1591
    :cond_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1592
    const-string v2, "CONFIRMATION PENDING"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_1

    .line 1594
    :cond_2
    const-string v2, "CONFIRMED"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    .line 1597
    :goto_1
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;->getFamilyIdString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v5, "Family ID"

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getMigratedMembersList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 1565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    const-string v1, ""

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    .line 1567
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    .line 1568
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getLfu()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    const-string v2, "LOST TO FOLLOW UP"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_1

    .line 1570
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getOutOfState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1571
    const-string v2, "OUT OF STATE"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_1

    .line 1572
    :cond_1
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getConfirmed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1573
    const-string v2, "CONFIRMATION PENDING"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    goto :goto_1

    .line 1575
    :cond_2
    const-string v2, "CONFIRMED"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    .line 1578
    :goto_1
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->rbText:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getSearchClickOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;
    .locals 1

    .line 958
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda18;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    return-object v0
.end method

.method private getTextWatcherForOfflineSearch()Landroid/text/TextWatcher;
    .locals 1

    .line 970
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 248
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 249
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setContentView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 251
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    .line 255
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setContentView(Landroid/view/View;)V

    .line 256
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setBodyDetail()V

    return-void
.end method

.method private onlineQRScanFromSearchBox(Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2879
    const-string v0, "isQrCodeScan"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2880
    const-string v0, "healthIdNumber"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2882
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaService:Lcom/argusoft/sewa/android/app/core/SewaService;

    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/core/SewaService;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2883
    const-string v0, "ABHA_NUMBER"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 2885
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    const-string v0, "You need internet to search members online"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMemberDetailsForChildRchRegister()V
    .locals 10

    .line 2467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    .line 2469
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "General Information"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2471
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "TeCHO ID"

    const/4 v3, 0x0

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2472
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2474
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Family ID"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2475
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2477
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Child Name"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2478
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2480
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Abha Number"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2481
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not available"

    if-eqz v1, :cond_0

    .line 2482
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2484
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2487
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Mother Name"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2489
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2490
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 2492
    :goto_1
    const-string v4, ")"

    const-string v5, " ("

    if-eqz v1, :cond_2

    .line 2493
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2494
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2493
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 2496
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2499
    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v6, "Gender"

    invoke-static {v3, v3, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2500
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormOfGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2502
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v6, "Age (D.O.B.)"

    invoke-static {v3, v3, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2503
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2504
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v7, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2503
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2506
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Birth weight"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2507
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2508
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBirthWeight()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Kgs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 2510
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2513
    :goto_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Birth place"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2514
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2515
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPlaceOfBirth()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/constants/FullFormConstants;->getFullFormsOfPlace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2514
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2517
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Address"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2518
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2520
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Religion / Caste"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2521
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 2522
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 2524
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2521
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2526
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Last child service date"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2527
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2528
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-eqz v0, :cond_4

    .line 2529
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastServiceLongDate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2530
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastServiceLongDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 2532
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 2535
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2538
    :goto_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Fully immunised in one year"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2539
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v2, v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->isChildImmunisedInOneYear(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Fully immunised in two years"

    invoke-static {v3, v3, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    new-instance v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v2, v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->isChildImmunisedInTwoYear(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2544
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "memberId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->immunisationService:Lcom/argusoft/sewa/android/app/core/impl/ImmunisationServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->immunisationService:Lcom/argusoft/sewa/android/app/core/ImmunisationService;

    .line 2546
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->sewaFhsService:Lcom/argusoft/sewa/android/app/core/SewaFhsService;

    .line 2547
    new-instance v0, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    .line 2548
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setRelatedpropertyname(Ljava/lang/String;)V

    .line 2549
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getImmunisationGivenComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMemberDetailsForEligibleCouplesRchRegister()V
    .locals 8

    .line 2269
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    .line 2271
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "General Information"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2273
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "TeCHO ID"

    const/4 v3, 0x0

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2274
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2276
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Family ID"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2277
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2279
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Member Name"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2280
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2282
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Abha Number"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2283
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not available"

    if-eqz v1, :cond_0

    .line 2284
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2286
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2290
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Husband Name"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2291
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2292
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2294
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2296
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2299
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2302
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Marriage Year"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2303
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2304
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 2306
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2309
    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Age (D.O.B.)"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2310
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2311
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2310
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2313
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Mobile Number"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2314
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2315
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2314
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2317
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Blood group"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2318
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2319
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBloodGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2318
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2321
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Address"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2322
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2324
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Religion / Caste"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2325
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 2326
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 2328
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2325
    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2330
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "BPL / APL"

    invoke-static {v3, v3, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2331
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2332
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "BPL"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 2335
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "APL"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 2338
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    return-void
.end method

.method private setMemberDetailsForPregnantWomenRchRegister()V
    .locals 6

    .line 2343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Date of Registration"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "LMP"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2349
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Not available"

    if-eqz v0, :cond_1

    .line 2350
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2352
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2356
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Pregnancy week number at the time of registration"

    invoke-static {v1, v1, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2357
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2358
    new-instance v0, Ljava/util/Date;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurPregRegDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNumberOfWeeks(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2359
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2361
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 2364
    :goto_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Registered within 12 weeks of pregnancy"

    invoke-static {v1, v1, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_4

    .line 2366
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_3

    .line 2367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Yes"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 2369
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "No"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 2372
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2375
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Expected delivery date"

    invoke-static {v1, v1, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEdd()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2377
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEdd()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 2379
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2382
    :goto_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Previous pregnancy complication"

    invoke-static {v1, v1, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPreviousPregnancyComplication()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2384
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPreviousPregnancyComplication()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2385
    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 2386
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2389
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2392
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "JSY beneficiary"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2393
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2394
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getJsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2393
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "KPSY beneficiary"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2398
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getKpsyBeneficiary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2397
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "IAY beneficiary"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2401
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2402
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIayBeneficiary()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2401
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSelectedService(Ljava/lang/String;)V
    .locals 2

    .line 1020
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

    .line 1025
    :pswitch_0
    const-string p1, "childrenAbove5"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1031
    :pswitch_1
    const-string p1, "pncMothers"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1028
    :pswitch_2
    const-string p1, "pregnantWomen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    goto :goto_1

    .line 1022
    :pswitch_3
    const-string p1, "children"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

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

.method private startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    .locals 7

    .line 2689
    const-string v1, "FHW_VAE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2690
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2691
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2692
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "No immunisations has been given to this child"

    const/16 v3, -0x69

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2695
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    .line 2699
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2700
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 2701
    const-string v1, "MEMBER_UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2703
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2705
    :catch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2706
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2710
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "Some error occurred. Please refresh and try again"

    .line 2711
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2712
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 2717
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p3

    .line 2719
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v2, p2, v1, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForMemberUpdateForm(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/SharedPreferences;)V

    .line 2721
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myIntent:Landroid/content/Intent;

    .line 2722
    const-string v1, "entity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2723
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myIntent:Landroid/content/Intent;

    const-string v1, "isOnlineSearchPropagated"

    sget-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2724
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myIntent:Landroid/content/Intent;

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2725
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method private startDynamicFormActivityForFilaria()V
    .locals 8

    .line 2730
    :try_start_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFilariasisType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2731
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForFilariaCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;ILcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2733
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2, v1, p0, v0, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForFilariaCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;ILcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2749
    const-string v1, "entity"

    const-string v2, "FILARIASIS_CAMPAIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2750
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2751
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void

    .line 2736
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$5;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2743
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 2744
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2745
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private startDynamicFormActivityForLCDC()V
    .locals 8

    .line 2756
    const-string v0, "LCDC_CAMPAIGN"

    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1, v2, p0, v0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForLcdcCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2770
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2771
    const-string v2, "entity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2772
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2773
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void

    .line 2758
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$6;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2765
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 2766
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2767
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 888
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 889
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 891
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 892
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 895
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 896
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 897
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addChildsBelow5YearsList()V
    .locals 4

    .line 1932
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    const-string v0, "Select a Child"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1934
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1936
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1937
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->removedChildren:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1939
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda24;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1940
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1941
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1944
    const-string v0, "No child member in your Area"

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1945
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1947
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addElderlyCareMemberList()V
    .locals 4

    .line 1914
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1915
    const-string v0, "Select a member for Elderly Care"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1916
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1917
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1919
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda31;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1920
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1921
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1924
    const-string v0, "No members found."

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1925
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1927
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addEligibleCoupleList()V
    .locals 4

    .line 1839
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    const-string v0, "Select an Eligible Couple"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1841
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1843
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1845
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda21;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1847
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1848
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1851
    const-string v0, "No Eligible Couples in your Area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1852
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1854
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addFamilyListScreenForNewMember()V
    .locals 4

    const/4 v0, -0x1

    .line 1994
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    .line 1995
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1996
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1997
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1998
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1999
    const-string v0, "Add a New Member"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 2000
    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 2001
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2003
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2004
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda27;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2005
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 2006
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2007
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2009
    :cond_0
    const-string v0, "No families found."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2010
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2011
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public addGraph()V
    .locals 5

    .line 851
    const-string v0, "chartSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 852
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 853
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    new-instance v3, Lcom/argusoft/sewa/android/app/model/MemberBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v4}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/ChildGrowthChartComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addMemberListScreenForUpdateInfo()V
    .locals 4

    .line 1971
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1972
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1973
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 1974
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedMemberToUpdateIndex:I

    .line 1976
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1977
    const-string v0, "Select Member"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 1978
    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1979
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1980
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1981
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda28;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1983
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1984
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1987
    const-string v0, "No members found."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1988
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public addMentalHealthScreeningMemberList()V
    .locals 4

    .line 1896
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1897
    const-string v0, "Select a Mental Health Screening"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1898
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1899
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1901
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda32;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1902
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1903
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1906
    const-string v0, "No members found."

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1907
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1909
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addNewlyWedCoupleList()V
    .locals 4

    .line 1819
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    const-string v0, "Select an Newly Wed Couple"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1821
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1823
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1825
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda26;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1827
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1828
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1831
    const-string v0, "No Eligible Couples in your Area"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1832
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1834
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addPncMothersList()V
    .locals 4

    .line 1878
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    const-string v0, "Select a PNC Mother"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1880
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1881
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1883
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda19;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1884
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1885
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1888
    const-string v0, "No PNC Women in your Area"

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1889
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1891
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addPregnantWomenList()V
    .locals 4

    .line 1859
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1860
    const-string v0, "Select a Pregnant Women"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1861
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1862
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1864
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 1866
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1867
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1870
    const-string v0, "No pregnant women in your area"

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1871
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1873
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 1112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "tempRegistration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "migratedInMembers"

    .line 1113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "migratedOutMembers"

    .line 1114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "addNewMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1119
    const-string v0, "Family Id to Search"

    invoke-static {p0, v0, v3, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    goto :goto_0

    .line 1121
    :cond_1
    const-string v0, "Member Id or Name to Search"

    invoke-static {p0, v0, v3, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 1123
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "updateMember"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1126
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1129
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1130
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public addSearchTextBoxForFamily()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 1188
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1189
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSearchTextBoxOnline()V
    .locals 9

    .line 942
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 943
    const-string v0, "MOBILE_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    const-string v0, "ABHA_NUMBER"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    const-string v0, "MEMBER_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    const-string v0, "FAMILY_ID"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    const-string v0, "NAME"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    const-string v0, "DOB"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v8, Lcom/argusoft/sewa/android/app/component/SearchComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    const-string v0, "Enter text and click search icon to search online"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getSearchClickOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;

    move-result-object v5

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getLocationSearchOnline()Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/component/SearchComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/SearchComponent$SearchClick;Lcom/argusoft/sewa/android/app/component/SearchComponent$LocationSelection;Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;)V

    iput-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    .line 951
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getTextWatcherForOfflineSearch()Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addTextWatcherInEditText(Landroid/text/TextWatcher;)V

    .line 952
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda25;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->addOnDateSetListener(Landroid/view/View$OnClickListener;)V

    .line 954
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    const/4 v0, 0x0

    .line 858
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Village"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 860
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 862
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 863
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 867
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 868
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 881
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 882
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 883
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method public callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V
    .locals 5

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveFamilyDataByMemberId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->retrieveMembersOfFamilyByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 745
    sput-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 746
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 747
    new-instance v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;-><init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->onLineSelectedMemberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 748
    sput-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->membersOfFamily:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 750
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 751
    const-string v1, "DPT_BOOSTER_2_ALERT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 752
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 753
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DPT_BOOSTER_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object p1

    .line 756
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 757
    const-string p2, ""

    .line 759
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 760
    const-string v4, "DPT_BOOSTER_2#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 761
    const-string p1, "#"

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 762
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 763
    aget-object p2, p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_1
    :goto_1
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 772
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Member is already given Dpt Booster 2 dose on :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, -0x69

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 778
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 779
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    goto :goto_2

    .line 782
    :cond_2
    invoke-direct {p0, p2, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 784
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 785
    invoke-direct {p0, p2, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 789
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/restclient/RestHttpException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method synthetic lambda$addChildsBelow5YearsList$20$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1939
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$addElderlyCareMemberList$19$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1919
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$addEligibleCoupleList$15$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1845
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$addFamilyListScreenForNewMember$22$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2004
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    return-void
.end method

.method synthetic lambda$addMemberListScreenForUpdateInfo$21$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1981
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedMemberToUpdateIndex:I

    return-void
.end method

.method synthetic lambda$addMentalHealthScreeningMemberList$18$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1901
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$addNewlyWedCoupleList$14$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1825
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$addPncMothersList$17$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1883
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$addPregnantWomenList$16$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1864
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$addSearchTextBoxOnline$6$com-argusoft-sewa-android-app-activity-MyPeopleActivity()V
    .locals 6

    .line 952
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedDate()Ljava/util/Date;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method synthetic lambda$addSearchTextBoxOnline$7$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 0

    .line 952
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda17;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addTableRow$29$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Ljava/util/LinkedHashMap;Landroid/view/View;)V
    .locals 2

    .line 2618
    const-string p2, "hiddenVisitId"

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2619
    const-string v0, "hiddenServiceType"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 2621
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2622
    const-string v1, "visitId"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2623
    const-string p2, "serviceType"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2624
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$callApi$3$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 0

    .line 769
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$getLocationSearchOnline$9$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 0
    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1011
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1013
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    const-string p2, "You need internet to search members online"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$getSearchClickOnline$8$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 0
    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 961
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    const-string p2, "You need internet to search members online"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onBackPressed$30$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 1

    .line 2673
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2674
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 2675
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    .line 2676
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->finish()V

    goto :goto_0

    .line 2678
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onClick$0$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 0

    .line 491
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onClick$1$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 533
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 534
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 535
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 536
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 537
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    const-string p2, "You are offline"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto :goto_0

    .line 545
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$10$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1284
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$11$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 1298
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setFilariasisSideEffectsMemberSelectionScreen$12$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1317
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedMemberToUpdateIndex:I

    return-void
.end method

.method synthetic lambda$setManageFamilyMigrationsScreen$4$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 804
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVisitIndex:I

    .line 805
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setMemberScreenForRchRegister$26$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2137
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$13$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 1414
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setMigratedFamilyScreen$24$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2060
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$setMigratedMembersScreen$25$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2100
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    return-void
.end method

.method synthetic lambda$setServiceSelectionScreen$5$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 928
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedServiceIndex:I

    .line 929
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setVisitSelectionScreen$23$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2024
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVisitIndex:I

    .line 2025
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$showMDAorSideEffectsScreen$2$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 0
    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 720
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFilariasisType:I

    .line 721
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 722
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 723
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxForFamily()V

    const/4 p1, 0x0

    .line 724
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 726
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFilariasisType:I

    .line 727
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 728
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 729
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    .line 730
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$showNotOnlineMessage$27$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 1

    .line 2153
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 2154
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2155
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2156
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2158
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    .line 2159
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$showNotOnlineMessage$28$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2167
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 2168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2169
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2170
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2171
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2172
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    .line 2173
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2174
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$startDynamicFormActivity$31$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 0

    .line 2691
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$startDynamicFormActivity$32$com-argusoft-sewa-android-app-activity-MyPeopleActivity(Landroid/view/View;)V
    .locals 0

    .line 2707
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 2708
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method public loadMigratedFamily()V
    .locals 8

    .line 1782
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-boolean v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->isMigratedOut:Z

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    .line 1783
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveMigrationDetailsForMigratedFamily(Ljava/lang/Integer;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v0

    .line 1784
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1785
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMigratedFamily(Ljava/util/List;)V

    return-void
.end method

.method public loadMigratedMembers()V
    .locals 8

    .line 1763
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-boolean v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->isMigratedOut:Z

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    .line 1764
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveMigrationDetailsForMigratedMembers(Ljava/lang/Integer;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v0

    .line 1765
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1766
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMigratedMembers(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreChildrenList()V
    .locals 14

    .line 1687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1689
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1690
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    const/4 v0, 0x0

    .line 1691
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageIds:Ljava/util/List;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v12, v0

    .line 1690
    invoke-virtual/range {v2 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow5YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1692
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1693
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fetchMembersFromServer(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 1695
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiChildren(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreDptBooster2ChildrenList()V
    .locals 14

    .line 1701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1703
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1704
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    const/4 v0, 0x0

    .line 1705
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageIds:Ljava/util/List;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v12, v0

    .line 1704
    invoke-virtual/range {v2 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow7YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1706
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1707
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fetchMembersFromServer(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 1709
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiChildren(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreElderlyCareMembers()V
    .locals 8

    .line 1625
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveElderlyCareMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1626
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1627
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreEligibleCouples()V
    .locals 8

    .line 1604
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveEligibleCouplesByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1605
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1606
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreFamilies()V
    .locals 8

    .line 1727
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1728
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1729
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiFamilies(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreFamiliesFilaria()V
    .locals 6

    .line 1745
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFilariaByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    .line 1746
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1747
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiFamiliesForFilaria(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreFamiliesLeprosy()V
    .locals 6

    .line 1801
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDCByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    .line 1802
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1803
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiFamiliesForLeprosy(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreMembers()V
    .locals 8

    .line 1669
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1670
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1671
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreMentalHealthScreeningMembers()V
    .locals 8

    .line 1618
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMentalHealthScreeningMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1619
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1620
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreNewlyWedCouples()V
    .locals 8

    .line 1611
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveNewlyWedCouplesByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1612
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1613
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMorePNCMothersList()V
    .locals 10

    .line 1650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1652
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1653
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePncMothersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1654
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fetchMembersFromServer(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 1657
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMorePregnantWomenList()V
    .locals 11

    .line 1638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1640
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageIds:Ljava/util/List;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1642
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fetchMembersFromServer(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 1645
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreRCH()V
    .locals 8

    .line 1662
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberListForRchRegister(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1663
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1664
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreSideEffectsMethod()V
    .locals 8

    .line 1631
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForSideEffectsOfFilaria(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1632
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1633
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 2779
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 2781
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2782
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    .line 2806
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 2811
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne p1, p2, :cond_f

    const/4 p1, 0x0

    .line 2783
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 2784
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2785
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2786
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2787
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "migratedOutFamily"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "migratedOutMembers"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "migratedInMembers"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "leprosySurvey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "tempRegistration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "addNewMember"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "updateMember"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "filariasisCampaign"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "migratedInFamily"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x0

    .line 2836
    :goto_1
    const-string v0, "migratedFamilyScreen"

    const-string v9, "migratedMembersScreen"

    packed-switch p2, :pswitch_data_0

    const-string p1, "peopleSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2837
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2838
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2839
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_1

    :goto_2
    const/4 p3, -0x1

    goto :goto_3

    :sswitch_9
    const-string p2, "pregnantWomen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 p3, 0x5

    goto :goto_3

    :sswitch_a
    const-string p2, "children"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 p3, 0x4

    goto :goto_3

    :sswitch_b
    const-string p2, "mentalHealthScreening"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 p3, 0x3

    goto :goto_3

    :sswitch_c
    const-string p2, "elderlyCare"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    const/4 p3, 0x2

    goto :goto_3

    :sswitch_d
    const-string p2, "newlyWedCouples"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :sswitch_e
    const-string p2, "childrenAbove5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    const/4 p3, 0x0

    :cond_e
    :goto_3
    packed-switch p3, :pswitch_data_1

    .line 2855
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 2856
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto/16 :goto_4

    .line 2848
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2849
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2850
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2851
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxOnline()V

    .line 2852
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_4

    .line 2844
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    goto/16 :goto_4

    .line 2814
    :pswitch_2
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2815
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2816
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedFamilyList(Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 2804
    :pswitch_3
    iput-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2805
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2806
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedMembersList(Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 2809
    :pswitch_4
    iput-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2810
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2811
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedMembersList(Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 2829
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2830
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2831
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, p3, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2832
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxForFamily()V

    .line 2833
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2789
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2790
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2791
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    goto :goto_4

    .line 2799
    :pswitch_7
    const-string p1, "familySelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2800
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2801
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    goto :goto_4

    .line 2794
    :pswitch_8
    const-string p1, "memberSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2795
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2796
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    goto :goto_4

    .line 2824
    :pswitch_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2825
    const-string p1, "filariasisTypeSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2826
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showMDAorSideEffectsScreen()V

    goto :goto_4

    .line 2819
    :pswitch_a
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2820
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2821
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedFamilyList(Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_f
    if-eqz v0, :cond_11

    .line 2862
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    .line 2863
    const-string p1, "Failed to scan QR"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 2866
    :cond_10
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    .line 2867
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QR Scanner Data : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setQrScanFilterData(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 2869
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrData:Ljava/lang/String;

    .line 2870
    sput-boolean p3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 2871
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->onlineQRScanFromSearchBox(Ljava/util/LinkedHashMap;)V

    goto :goto_4

    .line 2874
    :cond_11
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e8abfde -> :sswitch_8
        -0x6498eac5 -> :sswitch_7
        -0x431dcb3d -> :sswitch_6
        -0x36cccb47 -> :sswitch_5
        -0x18459d53 -> :sswitch_4
        0x1e0d6ff4 -> :sswitch_3
        0x264e7c1b -> :sswitch_2
        0x3bc3aee4 -> :sswitch_1
        0x509a1039 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2b3620e9 -> :sswitch_e
        -0x150a0876 -> :sswitch_d
        0x16320c8 -> :sswitch_c
        0x205cf7b1 -> :sswitch_b
        0x62ea5dff -> :sswitch_a
        0x65ccef21 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .line 2672
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2682
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close My People?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2685
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v6, p0

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne v0, v1, :cond_49

    const/4 v7, 0x0

    .line 278
    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 279
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v9, "peopleSelectionScreen"

    const-string v11, "familySelectionScreen"

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "serviceSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "migratedFamilyScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "memberSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "filSideEffectMemberSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v1, "chartSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "visitSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "manageFamilyMigrationsScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "rchRegisterMemberScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "rchRegisterTableScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_b
    const-string v1, "villageSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v1, "migratedMembersScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_1
    const-string v15, "leprosySurvey"

    const-string v1, "filariasisCampaign"

    const-string v8, "mentalHealthScreening"

    const-string v10, "elderlyCare"

    const-string v3, "newlyWedCouples"

    const-string v5, "childrenAbove5"

    const-string v4, "isOut"

    const-string v16, "Please Select a Member"

    const-string v2, "You are offline"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_13

    .line 307
    :pswitch_0
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedServiceIndex:I

    if-eq v0, v13, :cond_13

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 389
    :pswitch_1
    iput-object v15, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 390
    iput-object v11, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 392
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxForFamily()V

    goto/16 :goto_2

    .line 382
    :pswitch_2
    iput-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 383
    iput-object v11, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 385
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxForFamily()V

    goto/16 :goto_2

    .line 379
    :pswitch_3
    iput-object v10, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    goto/16 :goto_2

    .line 376
    :pswitch_4
    iput-object v8, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    goto/16 :goto_2

    .line 371
    :pswitch_5
    const-string v0, "manageFamilyMigrations"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setManageFamilyMigrationsScreen()V

    goto/16 :goto_2

    .line 363
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 364
    const-string v0, "rchRegister"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 365
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 366
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v6, v2, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    .line 368
    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListForRchRegister(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 358
    :pswitch_7
    const-string v0, "migratedOutMembers"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 360
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedMembersList(Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 353
    :pswitch_8
    const-string v0, "migratedInMembers"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 355
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedMembersList(Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 347
    :pswitch_9
    const-string v0, "addNewMember"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 348
    iput-object v11, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 349
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    goto :goto_2

    .line 341
    :pswitch_a
    const-string v0, "updateMember"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 342
    const-string v0, "memberSelectionScreen"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 343
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    goto :goto_2

    .line 332
    :pswitch_b
    const-string v0, "tempRegistration"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 334
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity_;

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myIntent:Landroid/content/Intent;

    .line 337
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    goto :goto_2

    .line 328
    :pswitch_c
    iput-object v5, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 329
    const-string v0, "C_5_20"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    goto :goto_2

    .line 324
    :pswitch_d
    const-string v0, "children"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 325
    const-string v0, "C"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    goto :goto_2

    .line 320
    :pswitch_e
    const-string v0, "pncMothers"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 321
    const-string v0, "PNC"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    goto :goto_2

    .line 316
    :pswitch_f
    const-string v0, "pregnantWomen"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 317
    const-string v0, "PW"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberType:Ljava/lang/String;

    goto :goto_2

    .line 313
    :pswitch_10
    iput-object v3, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    goto :goto_2

    .line 310
    :pswitch_11
    const-string v0, "eligibleCouples"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 397
    :goto_2
    const-string v0, "manageFamilyMigrations"

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 398
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    :cond_d
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "eligibleCouples"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    move-object v14, v1

    move-object v12, v5

    goto :goto_4

    .line 401
    :cond_f
    :goto_3
    iput-object v9, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 403
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 404
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v6, v2, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    .line 406
    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v14, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v12

    move-object v12, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    .line 408
    :goto_4
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "children"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "pregnantWomen"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "pncMothers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 410
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 411
    :cond_10
    iput-object v9, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 413
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 414
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v6, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxOnline()V

    .line 416
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    .line 418
    :cond_11
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showMDAorSideEffectsScreen()V

    .line 421
    :cond_12
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 422
    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_5

    .line 425
    :cond_13
    const-string v0, "Please select a type of service"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    :cond_14
    :goto_5
    iput-object v7, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    goto/16 :goto_13

    :pswitch_12
    move-object v0, v5

    .line 453
    iget v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    if-eq v1, v13, :cond_20

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 455
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    iget v4, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 456
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 457
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_6
    const/4 v8, -0x1

    goto :goto_7

    :sswitch_d
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    const/4 v8, 0x3

    goto :goto_7

    :sswitch_e
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    const/4 v8, 0x2

    goto :goto_7

    :sswitch_f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_6

    :cond_17
    const/4 v8, 0x1

    goto :goto_7

    :sswitch_10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    const/4 v8, 0x0

    :goto_7
    packed-switch v8, :pswitch_data_2

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisits()V

    goto/16 :goto_13

    .line 507
    :pswitch_13
    const-string v0, "MENTAL_ILLNESS"

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v6, v0, v1, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_13

    .line 510
    :pswitch_14
    const-string v0, "ELDERLY_CARE"

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v6, v0, v1, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_13

    .line 459
    :pswitch_15
    const-string v0, "NWC"

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v6, v0, v1, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_13

    .line 462
    :pswitch_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DPT_BOOSTER_2_ALERT"

    if-eqz v0, :cond_1a

    .line 463
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 464
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 466
    :cond_19
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 468
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 469
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 470
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 472
    :cond_1b
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 474
    :cond_1c
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 475
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DPT_BOOSTER_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 477
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImmunisationGiven()Ljava/lang/String;

    move-result-object v0

    .line 478
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    array-length v1, v0

    :goto_8
    if-ge v14, v1, :cond_1e

    aget-object v2, v0, v14

    .line 482
    const-string v3, "DPT_BOOSTER_2#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 483
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 484
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 485
    aget-object v0, v0, v12

    goto :goto_9

    :cond_1d
    const/4 v3, 0x2

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 490
    :cond_1e
    const-string v0, ""

    :goto_9
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 493
    new-instance v2, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Member is already given Dpt Booster 2 dose on :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x69

    invoke-direct {v2, v6, v0, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v2, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 499
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    goto/16 :goto_13

    .line 503
    :cond_1f
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v6, v1, v0, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_13

    .line 517
    :cond_20
    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 669
    :pswitch_17
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedFamilyBeans:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_b

    .line 673
    :cond_21
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    if-eq v0, v13, :cond_24

    .line 674
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedFamilyBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;

    .line 675
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationRevertActivity_;

    invoke-direct {v1, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "migratedFamilyBean"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "migratedOutFamily"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 678
    invoke-virtual {v1, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_a

    .line 679
    :cond_22
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "migratedInFamily"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 680
    invoke-virtual {v1, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    :cond_23
    :goto_a
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_13

    .line 684
    :cond_24
    const-string v0, "Please select a migrated family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 670
    :cond_25
    :goto_b
    invoke-virtual {v6, v14}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_13

    .line 606
    :pswitch_18
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 607
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedMemberToUpdateIndex:I

    if-eq v0, v13, :cond_26

    .line 608
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 609
    const-string v1, "MEMBER_UPDATE"

    invoke-direct {v6, v1, v0, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_13

    .line 611
    :cond_26
    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 614
    :cond_27
    const-string v0, "Please search a member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 618
    :pswitch_19
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 619
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedMemberToUpdateIndex:I

    if-eq v0, v13, :cond_28

    .line 620
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivityForFilaria()V

    goto/16 :goto_13

    .line 623
    :cond_28
    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 626
    :cond_29
    const-string v0, "Please search a member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 444
    :pswitch_1a
    iput-object v9, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 446
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 447
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v6, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    .line 449
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_13

    :pswitch_1b
    const/4 v3, 0x2

    .line 522
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVisitIndex:I

    if-eq v0, v13, :cond_38

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 524
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 526
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    iget v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVisitIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 528
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_c
    const/4 v3, -0x1

    goto :goto_d

    :sswitch_11
    const-string v1, "FHW_CS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_c

    :cond_2a
    const/4 v3, 0x6

    goto :goto_d

    :sswitch_12
    const-string v1, "AWW_WEIGHT_GROWTH_GRAPH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_c

    :cond_2b
    const/4 v3, 0x5

    goto :goto_d

    :sswitch_13
    const-string v1, "PREGNANCY_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_c

    :cond_2c
    const/4 v3, 0x4

    goto :goto_d

    :sswitch_14
    const-string v1, "FHW_WPD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_c

    :cond_2d
    const/4 v3, 0x3

    goto :goto_d

    :sswitch_15
    const-string v1, "FHW_VAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_c

    :sswitch_16
    const-string v1, "FHW_PNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_c

    :cond_2e
    const/4 v3, 0x1

    goto :goto_d

    :sswitch_17
    const-string v1, "FHW_ANC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_c

    :cond_2f
    const/4 v3, 0x0

    :cond_30
    :goto_d
    packed-switch v3, :pswitch_data_3

    .line 594
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v6, v0, v1, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_f

    .line 571
    :pswitch_1c
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 573
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6, v0, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto :goto_e

    .line 575
    :cond_31
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 577
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addGraph()V

    goto/16 :goto_f

    .line 566
    :pswitch_1d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity_;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "memberId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 568
    invoke-virtual {v6, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_f

    .line 530
    :pswitch_1e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v4, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 531
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "FHW_ANC"

    .line 530
    invoke-virtual {v3, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->checkIfThereArePendingNotificationsForMember(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 532
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, v6, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;Ljava/lang/String;)V

    .line 549
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Some ANC alerts are pending for this Beneficiary. You will NOT be able to fill ANC after filling out WPD. Do you want to proceed?"

    const/16 v3, -0x97

    invoke-direct {v0, v6, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 552
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_f

    .line 554
    :cond_32
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 555
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 556
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto :goto_f

    .line 558
    :cond_33
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 561
    :cond_34
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v6, v0, v1, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto :goto_f

    .line 583
    :pswitch_1f
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 584
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 585
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->callApi(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Ljava/lang/String;)V

    goto :goto_f

    .line 587
    :cond_35
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 590
    :cond_36
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v6, v0, v1, v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 598
    :cond_37
    :goto_f
    iput v13, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVisitIndex:I

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    goto/16 :goto_13

    .line 601
    :cond_38
    const-string v0, "Please Select a Visit"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 431
    :pswitch_20
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVisitIndex:I

    if-nez v0, :cond_39

    .line 432
    const-string v0, "migratedInFamily"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 434
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedFamilyList(Ljava/lang/Boolean;)V

    .line 435
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_13

    :cond_39
    if-ne v0, v12, :cond_49

    .line 437
    const-string v0, "migratedOutFamily"

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 439
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMigratedFamilyList(Ljava/lang/Boolean;)V

    .line 440
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_13

    .line 689
    :pswitch_21
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    if-ne v0, v13, :cond_3a

    .line 690
    invoke-static/range {v16 .. v16}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 693
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 694
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    iget v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showNotOnlineMessage()V

    .line 696
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveRCHServicesProvidedToMember()V

    goto/16 :goto_13

    .line 701
    :pswitch_22
    invoke-virtual {v6, v14}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_13

    :pswitch_23
    move-object v14, v1

    .line 630
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 631
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    if-eq v0, v13, :cond_3d

    .line 632
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 633
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivityForFilaria()V

    goto/16 :goto_13

    .line 635
    :cond_3b
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivityForLCDC()V

    goto/16 :goto_13

    .line 638
    :cond_3c
    const-string v0, "MEMBER_UPDATE"

    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {v6, v0, v7, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_13

    .line 641
    :cond_3d
    const-string v0, "Please Select a Family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 644
    :cond_3e
    const-string v0, "Please search a family"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 281
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 282
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 284
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 285
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    .line 289
    :cond_40
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 291
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 292
    iget-object v2, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 295
    :cond_41
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 296
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 297
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_43
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    goto :goto_13

    .line 649
    :pswitch_25
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedMembersBeans:Ljava/util/List;

    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_12

    .line 653
    :cond_44
    iget v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    if-eq v0, v13, :cond_47

    .line 654
    iget-object v1, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedMembersBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;

    .line 655
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/MigrationRevertActivity_;

    invoke-direct {v1, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "migratedMemberBean"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "migratedOutMembers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 658
    invoke-virtual {v1, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_11

    .line 659
    :cond_45
    iget-object v0, v6, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "migratedInMembers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 660
    invoke-virtual {v1, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    :cond_46
    :goto_11
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 664
    :cond_47
    const-string v0, "Please select a migrated member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 650
    :cond_48
    :goto_12
    invoke-virtual {v6, v14}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    :cond_49
    :goto_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1c5780b4 -> :sswitch_c
        -0x13a69534 -> :sswitch_b
        -0xa1992ec -> :sswitch_a
        -0x931baa0 -> :sswitch_9
        0xf35ce0 -> :sswitch_8
        0x5662a7a -> :sswitch_7
        0xe6d904d -> :sswitch_6
        0x13772d5a -> :sswitch_5
        0x2769aced -> :sswitch_4
        0x2cfd2b1e -> :sswitch_3
        0x342ec3a9 -> :sswitch_2
        0x6e53fa89 -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_12
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2b3620e9 -> :sswitch_10
        -0x150a0876 -> :sswitch_f
        0x16320c8 -> :sswitch_e
        0x205cf7b1 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x938b5b4 -> :sswitch_17
        -0x9387d65 -> :sswitch_16
        -0x9386870 -> :sswitch_15
        -0x93862df -> :sswitch_14
        0x902964 -> :sswitch_13
        0x568e18bf -> :sswitch_12
        0x7b92d11a -> :sswitch_11
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 227
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 2993
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2994
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 4

    .line 1427
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "pncMothers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "pregnantWomen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "eligibleCouples"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "children"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "migratedOutFamily"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "migratedOutMembers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "migratedInMembers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "mentalHealthScreening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "leprosySurvey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "elderlyCare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_a
    const-string v1, "newlyWedCouples"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_b
    const-string v1, "rchRegister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_c
    const-string v1, "childrenAbove5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_d
    const-string v1, "addNewMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_e
    const-string v1, "updateMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_f
    const-string v1, "filariasisCampaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_10
    const-string v1, "migratedInFamily"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1438
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMorePNCMothersList()V

    goto :goto_1

    .line 1435
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMorePregnantWomenList()V

    goto :goto_1

    .line 1429
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreEligibleCouples()V

    goto :goto_1

    .line 1441
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreChildrenList()V

    goto :goto_1

    .line 1457
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMigratedMembers()V

    goto :goto_1

    .line 1464
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreMentalHealthScreeningMembers()V

    goto :goto_1

    .line 1477
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreFamiliesLeprosy()V

    goto :goto_1

    .line 1467
    :pswitch_7
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreElderlyCareMembers()V

    goto :goto_1

    .line 1432
    :pswitch_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreNewlyWedCouples()V

    goto :goto_1

    .line 1447
    :pswitch_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreRCH()V

    goto :goto_1

    .line 1444
    :pswitch_a
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreDptBooster2ChildrenList()V

    goto :goto_1

    .line 1453
    :pswitch_b
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreFamilies()V

    goto :goto_1

    .line 1450
    :pswitch_c
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreMembers()V

    goto :goto_1

    .line 1470
    :pswitch_d
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFilariasisType:I

    if-nez v0, :cond_11

    .line 1471
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreFamiliesFilaria()V

    goto :goto_1

    :cond_11
    if-ne v0, v2, :cond_12

    .line 1473
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMoreSideEffectsMethod()V

    goto :goto_1

    .line 1461
    :pswitch_e
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->loadMigratedFamily()V

    :cond_12
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e8abfde -> :sswitch_10
        -0x6498eac5 -> :sswitch_f
        -0x431dcb3d -> :sswitch_e
        -0x36cccb47 -> :sswitch_d
        -0x2b3620e9 -> :sswitch_c
        -0x233dfbe6 -> :sswitch_b
        -0x150a0876 -> :sswitch_a
        0x16320c8 -> :sswitch_9
        0x1e0d6ff4 -> :sswitch_8
        0x205cf7b1 -> :sswitch_7
        0x264e7c1b -> :sswitch_6
        0x3bc3aee4 -> :sswitch_5
        0x509a1039 -> :sswitch_4
        0x62ea5dff -> :sswitch_3
        0x644a0edc -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadMoreUiChildren(Ljava/util/List;)V
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

    .line 1715
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1716
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1717
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1718
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->removedChildren:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1719
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1721
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiFamilies(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1734
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1736
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1737
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1739
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiFamiliesForFilaria(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1752
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1753
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1754
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1755
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1757
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiFamiliesForLeprosy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1808
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1809
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1810
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1811
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1813
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
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

    .line 1676
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1677
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1678
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1679
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1681
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiMigratedFamily(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1790
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1791
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMigratedFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1792
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedFamilyBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1793
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1795
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiMigratedMembers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1771
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMigratedMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1773
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedMembersBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1774
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1776
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 2893
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 2894
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_12

    const/4 p1, 0x0

    .line 2895
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2896
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    .line 2897
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "peopleSelectionScreen"

    const-string v5, "villageSelectionScreen"

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "serviceSelectionScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "migratedFamilyScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "memberSelectionScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "filSideEffectMemberSelectionScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "filariasisTypeSelectionScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x8

    goto :goto_1

    :sswitch_6
    const-string v3, "chartSelectionScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_7
    const-string v3, "visitSelectionScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_8
    const-string v3, "manageFamilyMigrationsScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_9
    const-string v3, "rchRegisterMemberScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_a
    const-string v3, "rchRegisterTableScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_b
    const-string v3, "familySelectionScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_d
    const-string v3, "migratedMembersScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Next"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 2950
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2951
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2952
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 2954
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2955
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2956
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addVillageSelectionSpinner()V

    .line 2958
    :goto_2
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    goto/16 :goto_6

    .line 2926
    :pswitch_1
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedServiceIndex:I

    .line 2927
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2928
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2929
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2930
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setManageFamilyMigrationsScreen()V

    goto/16 :goto_6

    .line 2966
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showMDAorSideEffectsScreen()V

    goto/16 :goto_6

    .line 2980
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2981
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisits()V

    goto/16 :goto_6

    .line 2899
    :pswitch_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2900
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2901
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    .line 2902
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2903
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2904
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v2, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2905
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "children"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "childrenAbove5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "pregnantWomen"

    .line 2906
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "pncMothers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    .line 2909
    :cond_f
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    goto :goto_4

    .line 2907
    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBoxOnline()V

    .line 2911
    :goto_4
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 2912
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchBox:Lcom/argusoft/sewa/android/app/component/SearchComponent;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/SearchComponent;->getSelectedSearchType()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :cond_11
    move-object v6, p1

    :goto_5
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 2911
    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V

    .line 2913
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    goto :goto_6

    .line 2917
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2918
    const-string p1, "My People"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setTitle(Ljava/lang/String;)V

    .line 2919
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2920
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    .line 2921
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2922
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 2970
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2971
    const-string v0, "rchRegister"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    .line 2972
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2973
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v2, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2974
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addSearchTextBox()V

    .line 2975
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->retrieveMemberListForRchRegister(Ljava/lang/CharSequence;)V

    .line 2976
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2962
    :pswitch_7
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    goto :goto_6

    .line 2939
    :pswitch_8
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedServiceIndex:I

    .line 2940
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 2941
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2942
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2943
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2944
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServiceSelectionScreen()V

    .line 2945
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2946
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    :goto_6
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x1c5780b4 -> :sswitch_d
        -0x13a69534 -> :sswitch_c
        -0xa1992ec -> :sswitch_b
        -0x931baa0 -> :sswitch_a
        0xf35ce0 -> :sswitch_9
        0x5662a7a -> :sswitch_8
        0xe6d904d -> :sswitch_7
        0x13772d5a -> :sswitch_6
        0x1def8573 -> :sswitch_5
        0x2769aced -> :sswitch_4
        0x2cfd2b1e -> :sswitch_3
        0x342ec3a9 -> :sswitch_2
        0x6e53fa89 -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setContentView(Landroid/view/View;)V

    .line 236
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->finish()V

    .line 243
    :cond_1
    const-string v0, "My People"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v0, 0x0

    .line 1259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 1260
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFilariaByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    .line 1265
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    goto :goto_0

    .line 1267
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForFilariaByArea(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1269
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 1247
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 1249
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDCByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    .line 1250
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    goto :goto_0

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForLCDCByArea(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1254
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p2

    .line 1335
    iput-object v6, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 1356
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    const/4 v3, -0x1

    .line 1337
    iput v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    .line 1338
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageIds:Ljava/util/List;

    .line 1339
    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p5

    .line 1340
    iput-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    .line 1341
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrData:Ljava/lang/String;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setQrScanFilterData(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    .line 1342
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "pncMothers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :sswitch_1
    const-string v2, "pregnantWomen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "eligibleCouples"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "children"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "mentalHealthScreening"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "elderlyCare"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v2, "newlyWedCouples"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "childrenAbove5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_8
    const-string v5, "filariasisCampaign"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 1353
    :pswitch_0
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    move-object/from16 v5, p2

    move-wide v6, v7

    move-wide v8, v9

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePncMothersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto/16 :goto_2

    .line 1350
    :pswitch_1
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageIds:Ljava/util/List;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v9, v4

    const/4 v4, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto/16 :goto_2

    .line 1344
    :pswitch_2
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    move-object/from16 v5, p2

    move-wide v6, v7

    move-wide v8, v9

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveEligibleCouplesByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto/16 :goto_2

    .line 1356
    :pswitch_3
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageIds:Ljava/util/List;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v10, v8

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v12, v8

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow5YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto/16 :goto_2

    .line 1362
    :pswitch_4
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    move-object/from16 v5, p2

    move-wide v6, v7

    move-wide v8, v9

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMentalHealthScreeningMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto/16 :goto_2

    .line 1365
    :pswitch_5
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    move-object/from16 v5, p2

    move-wide v6, v7

    move-wide v8, v9

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveElderlyCareMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto :goto_2

    .line 1347
    :pswitch_6
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    move-object/from16 v5, p2

    move-wide v6, v7

    move-wide v8, v9

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveNewlyWedCouplesByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto :goto_2

    .line 1359
    :pswitch_7
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageIds:Ljava/util/List;

    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->qrScanFilter:Ljava/util/LinkedHashMap;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->dateForOfflineSearch:Ljava/util/Date;

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v10, v8

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v12, v8

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow7YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    goto :goto_2

    .line 1368
    :pswitch_8
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    move-object/from16 v5, p2

    move-wide v6, v7

    move-wide v8, v9

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForSideEffectsOfFilaria(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    .line 1373
    :goto_2
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    move/from16 v2, p3

    .line 1374
    invoke-virtual {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberSelectionScreen(Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6498eac5 -> :sswitch_8
        -0x2b3620e9 -> :sswitch_7
        -0x150a0876 -> :sswitch_6
        0x16320c8 -> :sswitch_5
        0x205cf7b1 -> :sswitch_4
        0x62ea5dff -> :sswitch_3
        0x644a0edc -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public retrieveMemberListForRchRegister(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v0, 0x0

    .line 2116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 2117
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    .line 2118
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    .line 2119
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberListForRchRegister(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    .line 2120
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 2121
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberScreenForRchRegister()V

    return-void
.end method

.method public retrieveMemberListForUpdateBySearch(Ljava/lang/CharSequence;)V
    .locals 10

    .line 1952
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1953
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    .line 1954
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    .line 1955
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v1, "updateMember"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1956
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1957
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    move-object v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    .line 1958
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1959
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addMemberListScreenForUpdateInfo()V

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v2, "addNewMember"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1962
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1963
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    move-object v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansByAshaArea(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    .line 1964
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1965
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addFamilyListScreenForNewMember()V

    :cond_1
    return-void
.end method

.method public retrieveMigratedFamilyList(Ljava/lang/Boolean;)V
    .locals 9

    .line 2035
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->isMigratedOut:Z

    const/4 v0, 0x0

    .line 2036
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 2037
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    .line 2038
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveMigrationDetailsForMigratedFamily(Ljava/lang/Integer;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedFamilyBeans:Ljava/util/List;

    .line 2039
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 2040
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMigratedFamilyScreen(Z)V

    return-void
.end method

.method public retrieveMigratedMembersList(Ljava/lang/Boolean;)V
    .locals 9

    .line 2076
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->isMigratedOut:Z

    const/4 v0, 0x0

    .line 2077
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 2078
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedPeopleIndex:I

    .line 2079
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveMigrationDetailsForMigratedMembers(Ljava/lang/Integer;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedMembersBeans:Ljava/util/List;

    .line 2080
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->limit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 2081
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMigratedMembersScreen(Z)V

    return-void
.end method

.method public retrieveOnlineMember(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    const/4 v0, 0x1

    .line 1044
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 1045
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1046
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->search:Ljava/lang/CharSequence;

    .line 1047
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchDate:Ljava/util/Date;

    .line 1048
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchType:Ljava/lang/String;

    .line 1049
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->searchLocation:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 1050
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->offset:Ljava/lang/Integer;

    .line 1051
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    .line 1052
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fetchMembersFromServer(Ljava/lang/CharSequence;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    .line 1053
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberSelectionScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method public retrieveRCHServicesProvidedToMember()V
    .locals 13

    .line 2181
    const-string v0, "rchRegisterTableScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 2183
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 2187
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, -0x7

    const/4 v4, 0x1

    .line 2188
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 2189
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 2190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, -0xf

    .line 2191
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 2192
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 2193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, -0x31

    .line 2194
    invoke-virtual {v5, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 2195
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 2197
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2198
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2199
    const-string v8, "memberId"

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    new-instance v8, Ljava/util/Date;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 2203
    const-string v2, "Child Service"

    new-instance v9, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v10, "mob_child_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v1, v7, v11}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v6, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2207
    :goto_0
    :try_start_1
    new-instance v4, Ljava/util/Date;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2208
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2209
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2210
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "629"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2212
    const-string v3, "LMP Follow Up Service"

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v5, "mob_lmp_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v5, v1, v7, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    const-string v3, "ANC Service"

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v5, "mob_anc_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v5, v1, v7, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    const-string v3, "WPD Service"

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v5, "mob_wpd_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v5, v1, v7, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    const-string v3, "PNC Service"

    new-instance v4, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v5, "mob_pnc_services_provided"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v5, v1, v7, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2219
    :cond_1
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2220
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2222
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2223
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2224
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v1

    .line 2229
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 2231
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setServicesProvidedScreenForRchRegister(Ljava/util/Map;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    .line 262
    const-string v1, "villageSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedVillage:Ljava/lang/Integer;

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    .line 266
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->ashaAreaList:Ljava/util/List;

    .line 271
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 1274
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 1275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 1278
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFamilyIndex:I

    .line 1280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1281
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 1282
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->familyList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1284
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    if-eqz p1, :cond_0

    .line 1287
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 1289
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p1, v0, v2, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1291
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1295
    :cond_1
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1297
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1300
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setFilariasisSideEffectsMemberSelectionScreen(Z)V
    .locals 5

    .line 1306
    const-string v0, "filSideEffectMemberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 1307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1309
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 1310
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedMemberToUpdateIndex:I

    .line 1312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1313
    const-string v0, "Select Member"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v2, 0x32

    .line 1314
    invoke-virtual {v0, v1, v2, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1317
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    if-eqz p1, :cond_0

    .line 1319
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v4, 0x0

    invoke-static {p1, v0, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 1321
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p1, v0, v3, v2, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1323
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1325
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1326
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1329
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1330
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setManageFamilyMigrationsScreen()V
    .locals 5

    .line 796
    const-string v0, "manageFamilyMigrationsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 797
    const-string v0, "Manage Family Migration"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setTitle(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Migrated-in Families"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Migrated-out Families"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 807
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 809
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberScreenForRchRegister()V
    .locals 4

    .line 2126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2129
    const-string v0, "rchRegisterMemberScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2131
    const-string v0, "Select Member"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2132
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2137
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda29;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2138
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 2139
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2142
    const-string v0, "No member eligible for RCH found in your Area"

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2143
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2145
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMemberSelectionScreen(Ljava/lang/String;Z)V
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1382
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pncMothers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "pregnantWomen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "eligibleCouples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "mentalHealthScreening"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "elderlyCare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "newlyWedCouples"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "childrenAbove5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "filariasisCampaign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1393
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addPncMothersList()V

    goto :goto_1

    .line 1390
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addPregnantWomenList()V

    goto :goto_1

    .line 1384
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addEligibleCoupleList()V

    goto :goto_1

    .line 1400
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addMentalHealthScreeningMemberList()V

    goto :goto_1

    .line 1403
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addElderlyCareMemberList()V

    goto :goto_1

    .line 1387
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addNewlyWedCoupleList()V

    goto :goto_1

    .line 1397
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addChildsBelow5YearsList()V

    goto :goto_1

    .line 1406
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setFilariasisSideEffectsMemberSelectionScreen(Z)V

    .line 1412
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberList:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 1416
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1413
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda22;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    if-nez p2, :cond_b

    .line 1421
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->showProcessDialog()V

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6498eac5 -> :sswitch_8
        -0x2b3620e9 -> :sswitch_7
        -0x150a0876 -> :sswitch_6
        0x16320c8 -> :sswitch_5
        0x205cf7b1 -> :sswitch_4
        0x62ea5dff -> :sswitch_3
        0x644a0edc -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMigratedFamilyScreen(Z)V
    .locals 3

    .line 2045
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v0, "migratedInFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2046
    const-string p1, "Migrated-in Families"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 2047
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    const-string v0, "migratedOutFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2048
    const-string p1, "Migrated-out Families"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setTitle(Ljava/lang/String;)V

    .line 2050
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2051
    const-string p1, "migratedFamilyScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2052
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2054
    const-string p1, "Select Family"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 2055
    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 2056
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2058
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedFamilyBeans:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2059
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedFamilyBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMigratedFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2060
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda16;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2061
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 2062
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2063
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2065
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2066
    const-string p1, "No Migrated Family found in this Location"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2067
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2068
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setMigratedMembersScreen(Z)V
    .locals 3

    .line 2086
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2087
    const-string v0, "migratedMembersScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2088
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 2091
    const-string p1, "Migrated Out Members"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_0

    .line 2093
    :cond_0
    const-string p1, "Migrated In Members"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2095
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v0, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v0}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 2096
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2098
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedMembersBeans:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2099
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->migratedMembersBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->getMigratedMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2100
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda23;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2101
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 2102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2103
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2105
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2106
    const-string p1, "No Migrated Members found in this Location"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2108
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2111
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 3

    .line 2646
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSyncStatus()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_2

    .line 2647
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSyncStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "R"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2655
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/high16 p2, -0x10000

    .line 2652
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const p2, -0xffff01

    .line 2649
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 2657
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2658
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2659
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 2660
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p2, -0x100

    .line 2661
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 2662
    :cond_3
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2663
    const-string p2, "#20aa0b"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 2665
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 4

    .line 902
    const-string v0, "serviceSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 904
    const-string v0, "Select the type of Service"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 905
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 908
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Eligible Couples"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Newly Wed Couples"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Pregnant Women"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "PNC Women"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Children"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "DPT BOOSTER 2"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Temporary Registration"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Update a Member Information"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Add a New Member"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Migrated In Members"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Migrated Out Members"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "RCH Register"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Manage Family Migration"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Mental Health Screening"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Elderly Care"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Filariasis Campaign"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Leprosy routine survey"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda30;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 931
    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 932
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 933
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 934
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 936
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setServicesProvidedScreenForRchRegister(Ljava/util/Map;Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 2237
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2238
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberDetailsForChildRchRegister()V

    goto :goto_0

    .line 2240
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberDetailsForEligibleCouplesRchRegister()V

    .line 2241
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2242
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setMemberDetailsForPregnantWomenRchRegister()V

    .line 2244
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->addPreviousPregnancyDetailsRchRegister()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    .line 2247
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 2248
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2251
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2253
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2254
    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2255
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2258
    :cond_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, v1, p2}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->createTableLayout(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 2261
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string p2, "No services have been provided to this member yet."

    .line 2262
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2261
    invoke-static {p0, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2263
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Main Menu"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2265
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setVisitSelectionScreen(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2017
    const-string v0, "visitSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 2018
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setSubTitle(Ljava/lang/String;)V

    .line 2019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2021
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2023
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda20;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2027
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 2028
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2029
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2030
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public setVisits()V
    .locals 3

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    .line 815
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pncMothers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "pregnantWomen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "eligibleCouples"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "children"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 831
    :pswitch_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "FHW_PNC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 833
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto :goto_1

    .line 824
    :pswitch_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "FHW_ANC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "FHW_WPD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 827
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto :goto_1

    .line 817
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "FHW_RIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "LMPFU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 820
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto :goto_1

    .line 837
    :pswitch_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "FHW_CS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "FHW_VAE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    const-string v1, "AWW_WEIGHT_GROWTH_GRAPH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 841
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->visits:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    .line 846
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x62ea5dff -> :sswitch_3
        0x644a0edc -> :sswitch_2
        0x65ccef21 -> :sswitch_1
        0x6edac02b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showMDAorSideEffectsScreen()V
    .locals 5

    const/4 v0, -0x1

    .line 712
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->selectedFilariasisType:I

    .line 713
    const-string v0, "filariasisTypeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->screen:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 716
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Filariasis Mass Drug Administration"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Side Effect Reporting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 733
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 735
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 736
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 7

    .line 2150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->hideProcessDialog()V

    .line 2152
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    .line 2162
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 2163
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 2165
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 2166
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method
