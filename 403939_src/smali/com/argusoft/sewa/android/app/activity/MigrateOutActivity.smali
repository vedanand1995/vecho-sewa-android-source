.class public Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "MigrateOutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONFIRMATION_SCREEN:Ljava/lang/String; = "confirmationScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final HIERARCHY_SCREEN:Ljava/lang/String; = "hierarchyScreen"

.field private static final HIERARCHY_SEARCH_SCREEN:Ljava/lang/String; = "hierarchySearchScreen"

.field private static final MEMBER_INFO_SCREEN:Ljava/lang/String; = "memberInfoScreen"

.field private static final OTHER_INFO_SCREEN:Ljava/lang/String; = "otherInfoScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final VILLAGE_SEARCH_SCREEN:Ljava/lang/String; = "villageSearchScreen"


# instance fields
.field private blockSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private childCheckBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private childrenUnder5Years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;"
        }
    .end annotation
.end field

.field private confirmationRadioGroup:Landroid/widget/RadioGroup;

.field private districtSpinner:Landroid/widget/Spinner;

.field private familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private hierarcyMapWithLevelAndName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listTitleView:Lcom/google/android/material/textview/MaterialTextView;

.field private listView:Landroid/widget/ListView;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private noVillageTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private notificationBean:Lcom/argusoft/sewa/android/app/model/NotificationBean;

.field private otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private outOfStateCheckBox:Landroid/widget/CheckBox;

.field private phcSpinner:Landroid/widget/Spinner;

.field private screenName:Ljava/lang/String;

.field private searchOptionRadioGroup:Landroid/widget/RadioGroup;

.field private searchOptionTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private searchVillageButton:Landroid/widget/Button;

.field private searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchedVillageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

.field private selectedVillageIndex:I

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

.field private subcenterSpinner:Landroid/widget/Spinner;

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->notificationBean:Lcom/argusoft/sewa/android/app/model/NotificationBean;

    .line 96
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 97
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectionMap:Ljava/util/Map;

    .line 118
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedVillageIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->saveMigrationOut()V

    return-void
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->onMigrationCancelled()V

    return-void
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/Map;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->districtSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->blockSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->phcSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->subcenterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->villageSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addDistrictSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addBlockSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addPhcSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addSubcenterSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addVillageSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Landroid/widget/ListView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedVillageIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method private addBlockSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 733
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 737
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 739
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 740
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 741
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 742
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 743
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 745
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 751
    :cond_2
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v7, 0x0

    .line 754
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->blockSpinner:Landroid/widget/Spinner;

    .line 755
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 781
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "Z"

    const-string v1, "B"

    const/4 v2, 0x0

    if-le p1, v4, :cond_8

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 785
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 786
    const-string v6, "Block"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 789
    const-string v5, "Zone"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 792
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 796
    :cond_7
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v2, p2, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 797
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "Select Block"

    if-ne p1, v4, :cond_a

    .line 798
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 799
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 801
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 802
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string p2, "Select Zone"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 805
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 807
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 808
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDistrictSpinner(Ljava/lang/Long;Z)V
    .locals 8

    .line 680
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 681
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/String;

    .line 683
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 685
    const-string v4, "-Select-"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 686
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 687
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    if-eqz p2, :cond_0

    .line 688
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 694
    :cond_1
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 697
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->districtSpinner:Landroid/widget/Spinner;

    .line 698
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 727
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string p2, "Select District/Corporation"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 728
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPhcSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 812
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 816
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 818
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 819
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 820
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 821
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 822
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 824
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 830
    :cond_2
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v7, 0x0

    .line 833
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->phcSpinner:Landroid/widget/Spinner;

    .line 834
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 857
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "P"

    const-string v1, "U"

    const/4 v2, 0x0

    if-le p1, v4, :cond_8

    .line 858
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 861
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 862
    const-string v6, "UHC"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 865
    const-string v5, "PHC"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 868
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 872
    :cond_7
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v2, p2, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 873
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "Select PHC"

    if-ne p1, v4, :cond_a

    .line 874
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 875
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v1, "Select UHC"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 877
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 878
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 881
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 883
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 884
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->phcSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegionSpinner(Z)V
    .locals 9

    .line 622
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x1

    .line 623
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 624
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 626
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 628
    const-string v4, "-Select-"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 629
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 630
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 637
    :cond_1
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    .line 640
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 641
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 673
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v0, "Select Region"

    .line 674
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 673
    invoke-static {v2, v2, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 675
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 676
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveHierarchyOfVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    const/4 p1, 0x1

    .line 415
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addRegionSpinner(Z)V

    return-void
.end method

.method private addSubcenterSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 888
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 890
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 892
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 894
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 895
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 896
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 897
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 898
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 900
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 906
    :cond_2
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v7, 0x0

    .line 909
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->subcenterSpinner:Landroid/widget/Spinner;

    .line 910
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 930
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "SC"

    const-string v1, "ANM"

    const/4 v2, 0x0

    if-le p1, v4, :cond_8

    .line 931
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 934
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 935
    const-string v6, "ANM Area"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 938
    const-string v5, "Subcenter"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 941
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 945
    :cond_7
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v2, p2, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 946
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "Select Subcenter"

    if-ne p1, v4, :cond_a

    .line 947
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 948
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v1, "Select ANM Area"

    invoke-static {v2, v2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 950
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 951
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v2, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 954
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v2, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 956
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 957
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->subcenterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addVillageSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 961
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 963
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 965
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 967
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 968
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 969
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 970
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 971
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 973
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 979
    :cond_2
    const-string p2, "No location available"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v6

    const/4 v7, 0x0

    .line 982
    :cond_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {p2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 983
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1001
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "ANG"

    const-string v1, "V"

    const-string v2, "UA"

    const/4 v3, 0x0

    if-le p1, v4, :cond_9

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1005
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1006
    const-string v7, "Urban Area"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1009
    const-string v7, "Village"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :cond_5
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1012
    const-string v6, "Anganwadi Area"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_7

    .line 1015
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1019
    :cond_8
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v3, p2, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1020
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v5, "Select Village"

    if-ne p1, v4, :cond_c

    .line 1021
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1022
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Select Urban Area"

    invoke-static {v3, v3, p1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1024
    :cond_a
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1025
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v3, v3, p1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1027
    :cond_b
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1028
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string p2, "Select Anganwadi Area"

    invoke-static {v3, v3, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 1031
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v3, v3, p1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 1033
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1034
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .line 517
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V

    .line 532
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this Migration form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 535
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 172
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setContentView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 174
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 176
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setMemberInfoScreen()V

    return-void
.end method

.method private onMigrationCancelled()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "loggerBeanId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "answerRecordStoredId"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->notificationBean:Lcom/argusoft/sewa/android/app/model/NotificationBean;

    if-eqz v2, :cond_0

    .line 604
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createNotificationBean(Lcom/argusoft/sewa/android/app/model/NotificationBean;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 608
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteLoggerBeanByLoggerBeanId(Ljava/lang/Long;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->deleteStoreAnswerBeanByStoreAnswerBeanId(Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method private saveMigrationOut()V
    .locals 6

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childCheckBoxes:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childCheckBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 542
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childrenUnder5Years:Ljava/util/List;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getId()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;-><init>()V

    .line 549
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 550
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setFromFamilyId(Ljava/lang/Long;)V

    .line 551
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setFromLocationId(Ljava/lang/Long;)V

    .line 553
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 554
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 556
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 558
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    sget-object v5, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 559
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setLocationknown(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 561
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setLocationknown(Ljava/lang/Boolean;)V

    .line 562
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectionMap:Ljava/util/Map;

    const-string v3, "6"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setToLocationId(Ljava/lang/Long;)V

    .line 566
    :goto_1
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setChildrensUnder5(Ljava/util/List;)V

    .line 567
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 568
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 569
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setOtherInfo(Ljava/lang/String;)V

    .line 571
    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;->setReportedOn(Ljava/lang/Long;)V

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->notificationBean:Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->createMigrationOut(Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/model/NotificationBean;)V

    .line 573
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->markMemberAsMigrated(Ljava/lang/Long;)V

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->deleteNotificationByMemberIdAndNotificationType(Ljava/lang/Long;Ljava/util/List;)V

    return-void
.end method

.method private setConfirmationScreen(Z)V
    .locals 4

    .line 419
    const-string v0, "confirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure this member has migrated out of state?"

    .line 424
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 426
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure you don\'t know where this member has been migrated?"

    .line 427
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    .line 431
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    .line 432
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Yes"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 433
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "No"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-nez p1, :cond_3

    .line 436
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 438
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 507
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 510
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    .line 511
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    .line 513
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMemberInfoScreen()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 282
    const-string v0, "memberInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Member Id"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Member Name"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Family ID"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Please check if beneficiary has been migrated to Out of State"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v1, "Choose an option to search"

    invoke-static {v3, v3, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    .line 301
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Select Location"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Type Village Name"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Location not known"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const/16 v1, 0xff

    const/4 v2, 0x0

    const-string v3, "Out of State"

    invoke-static {v0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    .line 308
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setOtherInfoScreen()V
    .locals 15

    .line 442
    const-string v0, "otherInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v5, "Location Migrated to"

    .line 447
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveHierarchyOfVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/Map;

    move-result-object v0

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    .line 452
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x3

    .line 453
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x4

    .line 454
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x5

    .line 455
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x6

    .line 456
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v2

    aput-object v6, v13, v1

    aput-object v8, v13, v5

    aput-object v10, v13, v7

    aput-object v12, v13, v9

    aput-object v0, v13, v11

    .line 450
    const-string v0, "%s > %s > %s > %s > %s > %s"

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$4;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V

    .line 463
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 464
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 465
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 467
    const-string v4, "name"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 468
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v7, "FHW Name"

    .line 469
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-static {v3, v3, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    :cond_0
    const-string v4, "mobileNumber"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 475
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v7, "FHW Contact"

    .line 476
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 475
    invoke-static {v3, v3, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childrenUnder5Years:Ljava/util/List;

    if-nez v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveChildrenUnder5YearsByMotherId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childrenUnder5Years:Ljava/util/List;

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childrenUnder5Years:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Which of the following children are migrating with the mother"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childCheckBoxes:Ljava/util/List;

    .line 491
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childrenUnder5Years:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 492
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v5

    .line 493
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->childCheckBoxes:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v1

    goto :goto_0

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Other Information"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const/16 v1, 0x1f4

    const/4 v3, -0x1

    const/16 v4, 0x3e8

    invoke-static {v0, v2, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setVillageSearchScreen()V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 331
    const-string v0, "villageSearchScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter Village/Anganwadi-Area name"

    .line 334
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 333
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const/16 v2, 0x3e9

    const/16 v3, 0x32

    const-string v4, "Village/Anganwadi-Area"

    invoke-static {v0, v4, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v2, "Search"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x68

    invoke-static {v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageButton:Landroid/widget/Button;

    .line 344
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addSearchedVillageList()V
    .locals 15

    .line 376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->noVillageTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v1, "Select from list"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 381
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 387
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveHierarchyOfVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    .line 389
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x3

    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x4

    .line 392
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x5

    .line 393
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x6

    .line 394
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    aput-object v6, v13, v3

    aput-object v8, v13, v5

    aput-object v10, v13, v7

    aput-object v12, v13, v9

    aput-object v2, v13, v11

    .line 388
    const-string v2, "%s > %s > %s > %s > %s > %s"

    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V

    .line 404
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->listView:Landroid/widget/ListView;

    .line 405
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v1, "No Villages/Anganwadi-Area found with this name!"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->noVillageTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 408
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->hideProcessDialog()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 579
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;)V

    .line 593
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Migration?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 596
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_13

    .line 182
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "hierarchySearchScreen"

    const-string v2, "hierarchyScreen"

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "finalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "otherInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "villageSearchScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "memberInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please Select an option"

    const-string v5, "Please select Hierarchy till Village/Anganwadi Area"

    const-string v6, "6"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 271
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->finishActivity()V

    goto/16 :goto_3

    .line 254
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-eq p1, v4, :cond_8

    .line 255
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 256
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setOtherInfoScreen()V

    .line 258
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 259
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setMemberInfoScreen()V

    goto/16 :goto_3

    .line 262
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 246
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectionMap:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 247
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setOtherInfoScreen()V

    goto/16 :goto_3

    .line 249
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 218
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectionMap:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_b

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 221
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v0, "You have selected the same village where member migrating from. Please select some other Village."

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 223
    :cond_a
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setOtherInfoScreen()V

    goto/16 :goto_3

    .line 226
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 267
    :pswitch_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setFinalScreen()V

    goto/16 :goto_3

    .line 231
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 232
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedVillageIndex:I

    if-eq p1, v4, :cond_c

    .line 233
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 234
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedVillageIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 235
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 236
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    goto/16 :goto_3

    .line 238
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a searched Village/Anganwadi-Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 241
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v0, "Please search for a Village/Anganwadi-Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 184
    :pswitch_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 185
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 186
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setConfirmationScreen(Z)V

    goto/16 :goto_3

    .line 188
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-eq p1, v4, :cond_12

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 191
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz p1, :cond_f

    .line 193
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    goto :goto_2

    .line 195
    :cond_f
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addRegionSpinner(Z)V

    .line 198
    :cond_10
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 199
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 200
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setVillageSearchScreen()V

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 202
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_11

    .line 203
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V

    .line 206
    :cond_11
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 207
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 208
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 209
    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setConfirmationScreen(Z)V

    goto :goto_3

    .line 212
    :cond_12
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b9f3b0c -> :sswitch_6
        -0x4c557500 -> :sswitch_5
        -0x3005e216 -> :sswitch_4
        -0x2adfcff -> :sswitch_3
        0x1def7309 -> :sswitch_2
        0x1dfa7d01 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
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
    .locals 4

    .line 131
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    .line 133
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 134
    const-string v0, "notificationBean"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "memberBean"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "familyDataBean"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    if-eqz p1, :cond_0

    .line 140
    const-class v3, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/NotificationBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->notificationBean:Lcom/argusoft/sewa/android/app/model/NotificationBean;

    :cond_0
    if-eqz v0, :cond_1

    .line 143
    new-instance p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const-class v3, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-direct {p1, v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    :cond_1
    if-eqz v1, :cond_2

    .line 146
    const-class p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 149
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1039
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1040
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1045
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_b

    const/4 p1, -0x1

    .line 1046
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedVillageIndex:I

    .line 1047
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "hierarchySearchScreen"

    const-string v5, "hierarchyScreen"

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "finalScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "confirmationScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "otherInfoScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "villageSearchScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1107
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->onBackPressed()V

    goto/16 :goto_1

    .line 1103
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setOtherInfoScreen()V

    goto/16 :goto_1

    .line 1073
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setMemberInfoScreen()V

    goto/16 :goto_1

    .line 1054
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1055
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-string v1, "Processing...."

    invoke-direct {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 1056
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 1057
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setVillageSearchScreen()V

    .line 1058
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1059
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 1060
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1049
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1050
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setMemberInfoScreen()V

    goto/16 :goto_1

    .line 1077
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1078
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1079
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setConfirmationScreen(Z)V

    goto :goto_1

    .line 1081
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz p1, :cond_8

    .line 1082
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 1083
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    goto :goto_1

    .line 1086
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 1087
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->screenName:Ljava/lang/String;

    .line 1088
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz p1, :cond_9

    .line 1089
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    goto :goto_1

    .line 1091
    :cond_9
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addRegionSpinner(Z)V

    goto :goto_1

    .line 1095
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 1096
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setConfirmationScreen(Z)V

    goto :goto_1

    .line 1065
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1066
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setMemberInfoScreen()V

    .line 1067
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1068
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_b
    :goto_1
    return v2

    .line 1041
    :cond_c
    :goto_2
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c557500 -> :sswitch_5
        -0x3005e216 -> :sswitch_4
        -0x2adfcff -> :sswitch_3
        0x1def7309 -> :sswitch_2
        0x1dfa7d01 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .line 154
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setContentView(Landroid/view/View;)V

    .line 159
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->finish()V

    .line 166
    :cond_1
    const-string v0, "Migration"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setTitle(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->memberDataBean:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveLocationMasterBeansBySearch(Ljava/lang/CharSequence;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->searchedVillageList:Ljava/util/List;

    .line 371
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/MigrateOutActivity;->addSearchedVillageList()V

    return-void
.end method
