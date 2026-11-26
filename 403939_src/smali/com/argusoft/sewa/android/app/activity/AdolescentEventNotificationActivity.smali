.class public Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AdolescentEventNotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ADD_MEMBERS_OF_PARTICULAR_SCHOOL:Ljava/lang/String; = "addMemberOfParticularSchool"

.field private static final ADVANCED_SEARCH_SCREEN_BASED_ON_REGION:Ljava/lang/String; = "advancedSearchScreenBasedOnRegion"

.field private static final DELAY:J = 0x1f4L

.field private static final LIMIT:J = 0x1eL

.field private static final OTHERS_SCREEN:Ljava/lang/String; = "otherScreen"

.field private static final REGION_SELECTION_SCREEN:Ljava/lang/String; = "regionSelectionScreen"

.field private static final REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

.field private static final SCHOOL_OR_OTHERS_SCREEN:Ljava/lang/String; = "schoolOrOtherSelectionScreen"

.field private static final SCHOOL_SELECTION_SCREEN:Ljava/lang/String; = "schoolSelectionScreen"

.field private static final TAG:Ljava/lang/String; = "NotificationActivity"

.field private static final VILLAGE_SELECTION_SCREEN_FOR_FETCHING_LOCAL_DATA:Ljava/lang/String; = "villageSelectionScreenForFetchingLocalData"

.field private static final VILLAGE_SELECTION_SCREEN_FOR_STORING_FAMILY:Ljava/lang/String; = "villageSelectionScreenForStoringFamily"


# instance fields
.field private adolescentDataBeansList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private advanceSearchedMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

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

.field private blockSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private districtSpinner:Landroid/widget/Spinner;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private hierarchyLayout:Landroid/widget/LinearLayout;

.field private hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private isAddNewButtonShown:Z

.field private isAddNewMemberFlow:Z

.field private isAdvanceMemberSearchFlow:Z

.field private isSchoolFlow:Z

.field private nextButton:Landroid/widget/Button;

.field private notificationBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

.field private offset:J

.field private phcSpinner:Landroid/widget/Spinner;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private role:Ljava/lang/String;

.field schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

.field private screenName:Ljava/lang/String;

.field private search:Ljava/lang/CharSequence;

.field private searchBox:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

.field private selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedAreaId:Ljava/lang/Integer;

.field private selectedAreaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedLocationId:Ljava/lang/Long;

.field private selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

.field private selectedVillageId:Ljava/lang/Integer;

.field private selectedVillageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private standard:Ljava/lang/String;

.field private subCenterSpinner:Landroid/widget/Spinner;

.field private timer:Ljava/util/Timer;

.field private titleView:Lcom/google/android/material/textview/MaterialTextView;

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

.field private villageSpinnerSelection:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 111
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->timer:Ljava/util/Timer;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationBeanList:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->advanceSearchedMemberList:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedLocationId:Ljava/lang/Long;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAreaIds:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->role:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Timer;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->districtSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->blockSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->phcSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->subCenterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedLocationId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addDistrictSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addBlockSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addPhcSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSubCenterSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Long;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addVillageSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/lang/Integer;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addListOfSchoolMembersLayout()V

    return-void
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedMemberListScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolOrOthersSelectionScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    return-void
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Ljava/util/Map;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method private addAdvancedMemberListScreen()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 448
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 449
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedSearchTextBox()V

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedSearchBasedOnRegionScreen(Z)V

    .line 451
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addAdvancedSearchButton()V
    .locals 3

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    const-string v1, "Advanced search"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 513
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 514
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 515
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addBlockSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 1284
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x3

    .line 1285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1289
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 1291
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1293
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 1294
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1295
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1300
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1303
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->blockSpinner:Landroid/widget/Spinner;

    .line 1305
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "Zone"

    const-string v2, "Z"

    const-string v4, "B"

    const-string v5, "Block"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 1335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1338
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1339
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1342
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 1345
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1349
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1350
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 1351
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1352
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v7, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1354
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1355
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1358
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1360
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1361
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDistrictSpinner(Ljava/lang/Long;)V
    .locals 7

    .line 1229
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 1230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 1232
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1234
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 1235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1236
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/2addr v5, v2

    goto :goto_0

    .line 1240
    :cond_0
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1243
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->districtSpinner:Landroid/widget/Spinner;

    .line 1245
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1277
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "District/Corporation"

    .line 1278
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1277
    invoke-static {v1, v1, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1280
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addListOfSchoolMembersLayout()V
    .locals 6

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 469
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 470
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "Standard: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedSearchButton()V

    .line 473
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolMemberSearchTextBox()V

    .line 474
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->retrieveMemberOfParticularSchool(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addNewMemberButton()Landroid/widget/ListView;
    .locals 3

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    const-string v1, "Add new member"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 494
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 495
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    return-object v0
.end method

.method private addOthersLayout()V
    .locals 8

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 437
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 438
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addLastUpdateLabel()V

    .line 439
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSearchTextBox()V

    const-wide/16 v4, 0x1e

    .line 440
    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J

    const-string v2, "ADOLESCENT_HEALTH_SCREENING"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    .line 441
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addPhcSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 1365
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x4

    .line 1366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 1367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 1370
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "-Select-"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 1372
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1374
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    .line 1375
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1376
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1381
    :cond_1
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1384
    :cond_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v1, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->phcSpinner:Landroid/widget/Spinner;

    .line 1386
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$11;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "UHC"

    const-string v3, "P"

    const-string v4, "U"

    const-string v6, "PHC"

    const/4 v7, 0x0

    if-le p1, v2, :cond_7

    .line 1414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1417
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1418
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1421
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v2, v8, :cond_5

    .line 1424
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1428
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1429
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 1430
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1431
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1433
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1434
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1437
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1439
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1440
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->phcSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegionSelectionScreen()V
    .locals 2

    .line 457
    const-string v0, "regionSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addScreenToSelectRegion()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addRegionSpinner()V
    .locals 7

    .line 1171
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 1172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 1174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1176
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1178
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/2addr v5, v1

    goto :goto_0

    .line 1182
    :cond_0
    const-string v3, "No location available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1185
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v3, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 1187
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v2, "Region"

    .line 1223
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1222
    invoke-static {v3, v3, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 1224
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSchoolOrOthersSelectionScreen()V
    .locals 4

    .line 310
    const-string v0, "schoolOrOtherSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select from below options"

    .line 313
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 312
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->role:Ljava/lang/String;

    const-string v2, "Going to school"

    if-eqz v1, :cond_0

    const-string v3, "RBSK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v1, "Others"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :goto_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 340
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 341
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 342
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method private addSchoolSelectionLayout()V
    .locals 12

    .line 389
    const-string v0, "schoolSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 391
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 392
    new-instance v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 393
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;-><init>()V

    .line 394
    const-string v2, "setStandard-standard"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->setFormulavalue(Ljava/lang/String;)V

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setFormulas(Ljava/util/List;)V

    .line 399
    const-string v10, "11th"

    const-string v11, "12th"

    const-string v3, "--Select Standard--"

    const-string v4, "5th"

    const-string v5, "6th"

    const-string v6, "7th"

    const-string v7, "8th"

    const-string v8, "9th"

    const-string v9, "10th"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/16 v4, 0x2735

    invoke-static {v2, v1, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 402
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 417
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->schoolService:Lcom/argusoft/sewa/android/app/core/SchoolService;

    .line 418
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getSchoolComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x2715

    .line 419
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 421
    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    .line 423
    :cond_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v4, "Select school"

    .line 424
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-static {v0, v0, p0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Select standard"

    .line 427
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v0, v0, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method private addScreenToSelectRegion()Landroid/widget/LinearLayout;
    .locals 4

    .line 1157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v1, "Select hierarchy for School"

    .line 1159
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1158
    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1164
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    .line 1165
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addRegionSpinner()V

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addSubCenterSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 1444
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x5

    .line 1445
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 1446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1449
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 1451
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1452
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1453
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 1454
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1455
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1460
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1463
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->subCenterSpinner:Landroid/widget/Spinner;

    .line 1465
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$12;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "ANM Area"

    const-string v2, "SC"

    const-string v4, "ANM"

    const-string v5, "Subcenter"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 1490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1493
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1494
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1497
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 1500
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1504
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1505
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 1506
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1507
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1509
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1510
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1513
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1515
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1516
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->subCenterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addVillageSpinner(Ljava/lang/Long;)V
    .locals 12

    .line 1520
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x6

    .line 1521
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1525
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 1527
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1528
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 1529
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 1530
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1531
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1539
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 1541
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$13;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$13;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1562
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "Anganwadi Area"

    const-string v2, "ANG"

    const-string v4, "Urban Area"

    const-string v5, "V"

    const-string v7, "UA"

    const-string v8, "Village"

    const/4 v9, 0x0

    if-le p1, v3, :cond_8

    .line 1563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1566
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1567
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    :cond_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1570
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    :cond_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1573
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_6

    .line 1576
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1580
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, v9, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1581
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 1582
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1583
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v9, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1585
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1586
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v9, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1588
    :cond_a
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1589
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v9, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1592
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v9, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1594
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1595
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private dismissKeyboard()V
    .locals 3

    .line 1149
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1150
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private getFilterList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;",
            ">;"
        }
    .end annotation

    .line 1012
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 1013
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1014
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getConcatWs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 987
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 989
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v1

    .line 990
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMembersByAdvanceSearch(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1006
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMembersOfSchoolList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 997
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    .line 998
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->role:Ljava/lang/String;

    .line 182
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 183
    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->footerView:Landroid/widget/LinearLayout;

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 187
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 188
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolOrOthersSelectionScreen()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 14

    .line 703
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    if-eqz v2, :cond_1

    .line 708
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    if-eqz v2, :cond_0

    .line 709
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;->getMemberId()Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->sharedPref:Landroid/content/SharedPreferences;

    iget-boolean v8, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    iget-boolean v9, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForAdolescentForm(Ljava/lang/Long;Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 711
    :cond_0
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    if-eqz v1, :cond_3

    .line 712
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAreaId:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForAdolescentForm(Ljava/lang/Long;Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAdvanceMemberSearchFlow:Z

    if-eqz v2, :cond_2

    .line 716
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMemberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->sharedPref:Landroid/content/SharedPreferences;

    iget-boolean v8, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    iget-boolean v9, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getAnswer()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForAdolescentForm(Ljava/lang/Long;Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-eqz v0, :cond_3

    .line 720
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 722
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->sharedPref:Landroid/content/SharedPreferences;

    iget-boolean v7, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    iget-boolean v8, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForAdolescentForm(Ljava/lang/Long;Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    const-string v1, "entity"

    const-string v2, "ADOLESCENT_HEALTH_SCREENING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 740
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    return-void

    .line 728
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 732
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 733
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 734
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAdvancedSearchBasedOnRegionScreen(Z)V
    .locals 4

    .line 924
    const-string v0, "advancedSearchScreenBasedOnRegion"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 926
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 928
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->advanceSearchedMemberList:Ljava/util/List;

    const-string v1, "Please search member in order to fill adolescent form"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 955
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 964
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 965
    const-string v1, "Select Beneficiary"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 966
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 967
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->advanceSearchedMemberList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getMembersByAdvanceSearch(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 969
    :cond_1
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewButtonShown:Z

    .line 970
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 971
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 974
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v2, v1, v3, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 975
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    .line 977
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_2

    .line 981
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    :cond_2
    return-void

    .line 929
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 930
    const-string v0, "No records found"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 931
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewButtonShown:Z

    if-nez v0, :cond_6

    .line 932
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->role:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "RBSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 933
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addNewMemberButton()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 934
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewButtonShown:Z

    goto :goto_2

    .line 938
    :cond_5
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewButtonShown:Z

    .line 939
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 942
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 943
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda12;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_7

    .line 950
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    :cond_7
    return-void
.end method

.method public addAdvancedSearchTextBox()V
    .locals 3

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    const/16 v1, 0x32

    .line 632
    const-string v2, "Search by full name or unique health id"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    .line 633
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addAshaAreaForStoringFamilySelectionSpinner()V
    .locals 6

    .line 1632
    const-string v0, "villageSelectionScreenForStoringFamily"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 1633
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1634
    const-string v2, "-Select-"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1636
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

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

    .line 1637
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1640
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 1641
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1642
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1644
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addAshaAreaSelectionSpinnerForLocalData()V
    .locals 6

    .line 1684
    const-string v0, "villageSelectionScreenForFetchingLocalData"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 1685
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1686
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1687
    const-string v0, "Select Asha Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 1689
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1690
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1691
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1693
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

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

    .line 1694
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1697
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 1698
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectAshaAreaTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1699
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1701
    :cond_1
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 1703
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1705
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public addLastUpdateLabel()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addMembersOfParticularSchoolSelectionScreen(Z)V
    .locals 4

    .line 810
    const-string v0, "addMemberOfParticularSchool"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 812
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    const-string v1, "Okay"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getFilterList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    .line 831
    const-string v0, "No records found please click on advanced search to find member"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 832
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 833
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    :cond_1
    return-void

    .line 845
    :cond_2
    const-string v0, "Select Beneficiary"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 846
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 857
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 860
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getFilterList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getMembersOfSchoolList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 858
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getMembersOfSchoolList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 863
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v2, v1, v3, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 864
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 865
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    .line 866
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_5

    .line 870
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    :cond_5
    return-void

    .line 814
    :cond_6
    :goto_2
    const-string v0, "No members found! Thank you for doing your work."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 815
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 816
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_7

    .line 823
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    :cond_7
    return-void
.end method

.method public addNotificationSelectionScreen(Z)V
    .locals 4

    .line 877
    const-string v0, "otherScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 878
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 879
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 880
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationBeanList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    const-string v0, "Select Beneficiary"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 899
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 901
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda9;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 910
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 911
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_date:I

    invoke-static {v2, v1, v3, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 912
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 913
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    :cond_1
    return-void

    .line 881
    :cond_2
    :goto_0
    const-string v0, "No members found! Thank you for doing your work."

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 882
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 883
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_3

    .line 893
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    :cond_3
    return-void
.end method

.method public addSchoolMemberSearchTextBox()V
    .locals 3

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    const/16 v1, 0x32

    .line 579
    const-string v2, "Name/Mobile Number/DOB(yyyy-mm-dd)"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    .line 580
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    const/16 v1, 0x32

    .line 526
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    .line 527
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addVillageForStoringFamilySelectionSpinner()V
    .locals 6

    .line 1600
    const-string v0, "villageSelectionScreenForStoringFamily"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 1601
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 1602
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 1603
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Village"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1604
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1606
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

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

    .line 1607
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 1611
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinnerSelection:Landroid/widget/Spinner;

    .line 1612
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$14;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$14;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1625
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinnerSelection:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1626
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1627
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAshaAreaForStoringFamilySelectionSpinner()V

    return-void
.end method

.method public addVillageSelectionSpinnerForLocalData()V
    .locals 6

    .line 1649
    const-string v0, "villageSelectionScreenForFetchingLocalData"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 1650
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1651
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1652
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1654
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1655
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    add-int/lit8 v5, v1, 0x1

    .line 1656
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1658
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 1659
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$15;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$15;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1676
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1677
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1678
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1679
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$addAdvancedSearchBasedOnRegionScreen$10$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/view/View;)V
    .locals 1

    .line 945
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    .line 946
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "Search to find member"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$addAdvancedSearchBasedOnRegionScreen$11$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 956
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->advanceSearchedMemberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 957
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->advanceSearchedMemberList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const/4 p1, 0x0

    .line 958
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    .line 959
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    const/4 p1, 0x1

    .line 960
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAdvanceMemberSearchFlow:Z

    :cond_0
    return-void
.end method

.method synthetic lambda$addAdvancedSearchButton$4$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 505
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAdvanceMemberSearchFlow:Z

    const/4 p1, 0x0

    .line 506
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    .line 507
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 508
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 509
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addRegionSelectionScreen()V

    .line 510
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    :cond_0
    return-void
.end method

.method synthetic lambda$addMembersOfParticularSchoolSelectionScreen$6$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 818
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolOrOthersSelectionScreen()V

    .line 819
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    return-void
.end method

.method synthetic lambda$addMembersOfParticularSchoolSelectionScreen$7$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 835
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    return-void
.end method

.method synthetic lambda$addMembersOfParticularSchoolSelectionScreen$8$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 848
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 849
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    const/4 p1, 0x0

    .line 850
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    .line 851
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAdvanceMemberSearchFlow:Z

    const/4 p1, 0x1

    .line 852
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    :cond_0
    return-void
.end method

.method synthetic lambda$addNewMemberButton$3$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    const/4 p2, 0x0

    .line 486
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    .line 487
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 488
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 489
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    .line 490
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setBodyDetailForStoringFamily()V

    :cond_0
    return-void
.end method

.method synthetic lambda$addNotificationSelectionScreen$9$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 902
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 903
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

    const/4 p1, 0x0

    .line 904
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    .line 905
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAdvanceMemberSearchFlow:Z

    .line 906
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    :cond_0
    return-void
.end method

.method synthetic lambda$addSchoolOrOthersSelectionScreen$0$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 329
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$addSchoolOrOthersSelectionScreen$1$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 0
    if-nez p3, :cond_1

    .line 325
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolSelectionLayout()V

    goto :goto_0

    .line 328
    :cond_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 331
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 332
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setBodyDetailForFetchingLocalData()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$addSchoolOrOthersSelectionScreen$2$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 345
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onBackPressed$12$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/view/View;)V
    .locals 3

    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 1093
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 1094
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "schoolSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "advancedSearchScreenBasedOnRegion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "villageSelectionScreenForStoringFamily"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "villageSelectionScreenForFetchingLocalData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "schoolOrOtherSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "addMemberOfParticularSchool"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "regionSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "otherScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1112
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->navigateToHomeScreen(Z)V

    .line 1113
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->finish()V

    goto :goto_1

    .line 1096
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->finish()V

    goto :goto_1

    .line 1099
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolSelectionLayout()V

    goto :goto_1

    .line 1109
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addListOfSchoolMembersLayout()V

    goto :goto_1

    .line 1104
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolOrOthersSelectionScreen()V

    goto :goto_1

    .line 1117
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x661a6064 -> :sswitch_7
        -0x65abf07c -> :sswitch_6
        -0x5cda6765 -> :sswitch_5
        0x3d7ea6ff -> :sswitch_4
        0x4f299ad0 -> :sswitch_3
        0x51b5b305 -> :sswitch_2
        0x523644b0 -> :sswitch_1
        0x7d9b4b04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic lambda$startDynamicFormActivity$5$com-argusoft-sewa-android-app-activity-AdolescentEventNotificationActivity(Landroid/view/View;)V
    .locals 0

    .line 729
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 730
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1129
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1130
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->REQUEST_CODE_FOR_NOTIFICATION_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    const-wide/16 p1, 0x0

    .line 1132
    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J

    .line 1133
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1134
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    .line 1135
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolSelectionLayout()V

    goto :goto_0

    .line 1136
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    const-string p3, "advancedSearchScreenBasedOnRegion"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1137
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 1138
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolSelectionLayout()V

    goto :goto_0

    .line 1140
    :cond_1
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1141
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addOthersLayout()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1144
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1091
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;)V

    .line 1120
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    .line 1121
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Your Schedule?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_19

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "schoolSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "advancedSearchScreenBasedOnRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "villageSelectionScreenForStoringFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "villageSelectionScreenForFetchingLocalData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "addMemberOfParticularSchool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "regionSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "otherScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    const-string p1, "Please select a task"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    .line 196
    :pswitch_0
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz p1, :cond_8

    .line 197
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 198
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addListOfSchoolMembersLayout()V

    goto :goto_1

    .line 201
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select standard"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select school"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    goto/16 :goto_5

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-nez v0, :cond_9

    .line 233
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->startDynamicFormActivity()V

    goto/16 :goto_5

    .line 240
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinnerSelection:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 242
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 243
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 247
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    const-string v0, "-Select-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 249
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select location"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 251
    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 252
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 253
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAreaId:Ljava/lang/Integer;

    .line 257
    :cond_e
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 259
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->startDynamicFormActivity()V

    goto/16 :goto_5

    .line 263
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->showProcessDialog()V

    .line 265
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_f

    .line 266
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 268
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 271
    :goto_2
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 272
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 273
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 274
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 275
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 276
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_11
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_15

    .line 283
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 286
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 287
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAreaIds:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 294
    :cond_13
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 295
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 296
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 300
    :cond_15
    :goto_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addOthersLayout()V

    goto :goto_5

    .line 217
    :pswitch_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    if-nez v0, :cond_16

    .line 218
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_16
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->startDynamicFormActivity()V

    goto :goto_5

    .line 225
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedLocationId:Ljava/lang/Long;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectionMap:Ljava/util/Map;

    const-string v0, "1"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectionMap:Ljava/util/Map;

    const-string v0, "2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 226
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedMemberListScreen()V

    goto :goto_5

    .line 228
    :cond_17
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    const-string v0, "Please select region and district"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 209
    :pswitch_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

    if-nez v0, :cond_18

    .line 210
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_18
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->startDynamicFormActivity()V

    :cond_19
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x661a6064 -> :sswitch_6
        -0x65abf07c -> :sswitch_5
        -0x5cda6765 -> :sswitch_4
        0x4f299ad0 -> :sswitch_3
        0x51b5b305 -> :sswitch_2
        0x523644b0 -> :sswitch_1
        0x7d9b4b04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 161
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 9

    .line 1028
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAdvanceMemberSearchFlow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    if-nez v0, :cond_0

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAreaIds:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J

    const-wide/16 v5, 0x1e

    invoke-virtual/range {v1 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getAdolescentChildrenInArea(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 1032
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J

    .line 1033
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->onLoadMoreUi(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 1023
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;)V"
        }
    .end annotation

    .line 1042
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isSchoolFlow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAdvanceMemberSearchFlow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->isAddNewMemberFlow:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1043
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1045
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->getListViewItemsForNotificationList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1046
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1055
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1056
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1061
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_9

    .line 1062
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "schoolSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "advancedSearchScreenBasedOnRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "villageSelectionScreenForStoringFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "villageSelectionScreenForFetchingLocalData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "schoolOrOtherSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "addMemberOfParticularSchool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "regionSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "otherScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1069
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->finish()V

    goto :goto_1

    .line 1072
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolSelectionLayout()V

    goto :goto_1

    .line 1077
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addListOfSchoolMembersLayout()V

    goto :goto_1

    .line 1066
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addSchoolOrOthersSelectionScreen()V

    .line 1082
    :goto_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->dismissKeyboard()V

    .line 1083
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return v1

    :cond_9
    return v2

    .line 1057
    :cond_a
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x661a6064 -> :sswitch_7
        -0x65abf07c -> :sswitch_6
        -0x5cda6765 -> :sswitch_5
        0x3d7ea6ff -> :sswitch_4
        0x4f299ad0 -> :sswitch_3
        0x51b5b305 -> :sswitch_2
        0x523644b0 -> :sswitch_1
        0x7d9b4b04 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setContentView(Landroid/view/View;)V

    .line 170
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->finish()V

    .line 177
    :cond_1
    const-string v0, "Adolescent Health Screening"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveInitialNotificationsFromDB(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V
    .locals 8

    const/4 p1, 0x0

    .line 772
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 773
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationService:Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAreaIds:Ljava/util/List;

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/NotificationServiceImpl;->getAdolescentChildrenInArea(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->notificationBeanList:Ljava/util/List;

    .line 776
    iget-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J

    const-wide/16 p5, 0x1e

    add-long/2addr p3, p5

    iput-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->offset:J
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 778
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 780
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addNotificationSelectionScreen(Z)V

    return-void
.end method

.method public retrieveMemberOfParticularSchool(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v0, 0x0

    .line 746
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdolescentMember:Lcom/argusoft/sewa/android/app/databean/AdolescentDataBean;

    .line 747
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 748
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Something went wrong"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 750
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getActualId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getMembersOfSchool(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->adolescentDataBeansList:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 752
    :goto_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addMembersOfParticularSchoolSelectionScreen(Z)V

    .line 753
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 757
    const-string v0, "NotificationActivity"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 760
    :cond_1
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$5;

    invoke-direct {p1, p0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retrieveMembersByAdvanceSearch(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedAdvancedSearchMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 787
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 788
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Something went wrong"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 790
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->restClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedLocationId:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->search:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->standard:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getMembersByAdvanceSearch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->advanceSearchedMemberList:Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 791
    :goto_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAdvancedSearchBasedOnRegionScreen(Z)V

    .line 792
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 795
    const-string v0, "NotificationActivity"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 798
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;

    invoke-direct {p1, p0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBodyDetailForFetchingLocalData()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->setSubTitle(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "villageSelectionScreenForFetchingLocalData"

    if-ne v0, v1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageIds:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    .line 378
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addAshaAreaSelectionSpinnerForLocalData()V

    goto :goto_0

    .line 381
    :cond_1
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->screenName:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addVillageSelectionSpinnerForLocalData()V

    .line 384
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    return-void
.end method

.method public setBodyDetailForStoringFamily()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    .line 354
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->selectedVillageId:Ljava/lang/Integer;

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    .line 357
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addVillageForStoringFamilySelectionSpinner()V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->ashaAreaList:Ljava/util/List;

    .line 362
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->addVillageForStoringFamilySelectionSpinner()V

    :goto_0
    return-void
.end method
