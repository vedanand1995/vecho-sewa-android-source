.class public Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FamilyMigrationOutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONFIRMATION_SCREEN:Ljava/lang/String; = "confirmationScreen"

.field private static final FAMILY_INFO_SCREEN:Ljava/lang/String; = "familyInfoScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final HIERARCHY_SCREEN:Ljava/lang/String; = "hierarchyScreen"

.field private static final HIERARCHY_SEARCH_SCREEN:Ljava/lang/String; = "hierarchySearchScreen"

.field private static final OTHER_INFO_SCREEN:Ljava/lang/String; = "otherInfoScreen"

.field private static final RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

.field private static final RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

.field private static final SEARCH_OPTION_SCREEN:Ljava/lang/String; = "searchOptionScreen"

.field private static final VILLAGE_SEARCH_SCREEN:Ljava/lang/String; = "villageSearchScreen"


# instance fields
.field private blockSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private confirmationRadioGroup:Landroid/widget/RadioGroup;

.field private districtSpinner:Landroid/widget/Spinner;

.field private existingHeadSelected:Z

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

.field private memberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

.field private newHeadId:Ljava/lang/String;

.field private noVillageTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private outOfStateCheckBox:Landroid/widget/CheckBox;

.field private phcSpinner:Landroid/widget/Spinner;

.field private relWithHofMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private screenName:Ljava/lang/String;

.field private searchOptionRadioGroup:Landroid/widget/RadioGroup;

.field private searchOptionTextView:Landroid/widget/TextView;

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

.field private selectBlockQues:Landroid/widget/TextView;

.field private selectDistrictQues:Landroid/widget/TextView;

.field private selectPhcQues:Landroid/widget/TextView;

.field private selectSubCenterQues:Landroid/widget/TextView;

.field private selectVillageQues:Landroid/widget/TextView;

.field private selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

.field private selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

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

.field private splitRadioGroup:Landroid/widget/RadioGroup;

.field private subCenterSpinner:Landroid/widget/Spinner;

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->memberIds:Ljava/util/List;

    const/4 v1, -0x1

    .line 114
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedVillageIndex:I

    .line 117
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->newHeadId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectDistrictQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->districtSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectBlockQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->blockSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectPhcQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->phcSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectSubCenterQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->subCenterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectVillageQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->villageSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addDistrictSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addBlockSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addPhcSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addSubCenterSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/lang/Long;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addVillageSpinner(Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/ListView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedVillageIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->saveFamilyMigrationOut()V

    return-void
.end method

.method private addBlockSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 759
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 761
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 763
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 765
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 766
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

    .line 767
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 768
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 769
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 771
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 777
    :cond_2
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v7, 0x0

    .line 780
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->blockSpinner:Landroid/widget/Spinner;

    .line 781
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 807
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "Z"

    const-string v1, "B"

    const/4 v2, 0x0

    if-le p1, v4, :cond_8

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 811
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 812
    const-string v6, "Block"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 815
    const-string v5, "Zone"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 818
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 822
    :cond_7
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

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

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectBlockQues:Landroid/widget/TextView;

    goto :goto_2

    .line 823
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "Select Block"

    if-ne p1, v4, :cond_a

    .line 824
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 825
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectBlockQues:Landroid/widget/TextView;

    .line 827
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 828
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string p2, "Select Zone"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectBlockQues:Landroid/widget/TextView;

    goto :goto_2

    .line 831
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectBlockQues:Landroid/widget/TextView;

    .line 833
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectBlockQues:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 834
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDistrictSpinner(Ljava/lang/Long;Z)V
    .locals 8

    .line 706
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 707
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/String;

    .line 709
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 711
    const-string v4, "-Select-"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 712
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 713
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    if-eqz p2, :cond_0

    .line 714
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 720
    :cond_1
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 723
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->districtSpinner:Landroid/widget/Spinner;

    .line 724
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 753
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string p2, "Select District/Corporation"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectDistrictQues:Landroid/widget/TextView;

    .line 754
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 755
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPhcSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 838
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 842
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 844
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 845
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

    .line 846
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 847
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 848
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 850
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 856
    :cond_2
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v7, 0x0

    .line 859
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->phcSpinner:Landroid/widget/Spinner;

    .line 860
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 883
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "P"

    const-string v1, "U"

    const/4 v2, 0x0

    if-le p1, v4, :cond_8

    .line 884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 887
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 888
    const-string v6, "UHC"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 891
    const-string v5, "PHC"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 894
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 898
    :cond_7
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

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

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectPhcQues:Landroid/widget/TextView;

    goto :goto_2

    .line 899
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "Select PHC"

    if-ne p1, v4, :cond_a

    .line 900
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 901
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v1, "Select UHC"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectPhcQues:Landroid/widget/TextView;

    .line 903
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 904
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectPhcQues:Landroid/widget/TextView;

    goto :goto_2

    .line 907
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectPhcQues:Landroid/widget/TextView;

    .line 909
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectPhcQues:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 910
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->phcSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegionSpinner(Z)V
    .locals 9

    .line 649
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x1

    .line 650
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 651
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 653
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 655
    const-string v4, "-Select-"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 656
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

    .line 657
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 664
    :cond_1
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    .line 667
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 668
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 700
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v0, "Select Region"

    const/4 v2, 0x0

    invoke-static {v2, v2, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 701
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 702
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveHierarchyOfVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    const/4 p1, 0x1

    .line 498
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addRegionSpinner(Z)V

    return-void
.end method

.method private addSubCenterSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 914
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 916
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 918
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 920
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 921
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

    .line 922
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 923
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 924
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 926
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 932
    :cond_2
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v7, 0x0

    .line 935
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->subCenterSpinner:Landroid/widget/Spinner;

    .line 936
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 956
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "SC"

    const-string v1, "ANM"

    const/4 v2, 0x0

    if-le p1, v4, :cond_8

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 960
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 961
    const-string v6, "ANM Area"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 964
    const-string v5, "Subcenter"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 967
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 971
    :cond_7
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

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

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectSubCenterQues:Landroid/widget/TextView;

    goto :goto_2

    .line 972
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "Select Subcenter"

    if-ne p1, v4, :cond_a

    .line 973
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 974
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v1, "Select ANM Area"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectSubCenterQues:Landroid/widget/TextView;

    .line 976
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 977
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectSubCenterQues:Landroid/widget/TextView;

    goto :goto_2

    .line 980
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v2, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectSubCenterQues:Landroid/widget/TextView;

    .line 982
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectSubCenterQues:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 983
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->subCenterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addVillageSpinner(Ljava/lang/Long;Z)V
    .locals 11

    .line 987
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 989
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 991
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 993
    const-string v5, "-Select-"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 994
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

    .line 995
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 996
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 997
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 999
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hierarcyMapWithLevelAndName:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1005
    :cond_2
    const-string p2, "No location available"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v6

    const/4 v7, 0x0

    .line 1008
    :cond_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {p2, v3, v7, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 1009
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$13;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1027
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "ANG"

    const-string v1, "V"

    const-string v2, "UA"

    const/4 v3, 0x0

    if-le p1, v4, :cond_9

    .line 1028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1031
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1032
    const-string v7, "Urban Area"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1035
    const-string v7, "Village"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    :cond_5
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1038
    const-string v6, "Anganwadi Area"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_7

    .line 1041
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1045
    :cond_8
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

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

    invoke-static {v3, v3, p2, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectVillageQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1046
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v5, "Select Village"

    if-ne p1, v4, :cond_c

    .line 1047
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1048
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "Select Urban Area"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v3, p1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectVillageQues:Landroid/widget/TextView;

    .line 1050
    :cond_a
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1051
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v3, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectVillageQues:Landroid/widget/TextView;

    .line 1053
    :cond_b
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1054
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string p2, "Select Anganwadi Area"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v3, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectVillageQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1057
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v3, p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectVillageQues:Landroid/widget/TextView;

    .line 1059
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectVillageQues:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1060
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private finishActivity()V
    .locals 5

    .line 583
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V

    .line 597
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to submit this Migration form?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 158
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setContentView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 160
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 162
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setFamilyInfoScreen()V

    return-void
.end method

.method private saveFamilyMigrationOut()V
    .locals 5

    .line 604
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;-><init>()V

    .line 605
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setFamilyId(Ljava/lang/Long;)V

    .line 606
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setFromLocationId(Ljava/lang/Long;)V

    .line 608
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->memberIds:Ljava/util/List;

    const/4 v2, 0x1

    .line 609
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 608
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setSplit(Ljava/lang/Boolean;)V

    .line 610
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->memberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setMemberIds(Ljava/util/List;)V

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->newHeadId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 614
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setNewHead(Ljava/lang/Long;)V

    .line 617
    :cond_1
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->existingHeadSelected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setExistingHeadSelected(Ljava/lang/Boolean;)V

    .line 619
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->relWithHofMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->relWithHofMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setRelationWithHofMap(Ljava/util/Map;)V

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 626
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setOutOfState(Ljava/lang/Boolean;)V

    .line 628
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    sget-object v4, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 629
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setLocationKnown(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 631
    :cond_4
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setLocationKnown(Ljava/lang/Boolean;)V

    .line 632
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectionMap:Ljava/util/Map;

    const-string v2, "6"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setToLocationId(Ljava/lang/Long;)V

    .line 636
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 637
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 638
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setOtherInfo(Ljava/lang/String;)V

    .line 640
    :cond_5
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;->setReportedOn(Ljava/lang/Long;)V

    .line 641
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->createFamilyMigrationOut(Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V

    return-void
.end method

.method private setConfirmationScreen(Z)V
    .locals 4

    .line 502
    const-string v0, "confirmationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 505
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure this family has migrated out of state?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget-object v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 509
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure you don\'t know where this family has been migrated?"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_2

    .line 514
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 515
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 517
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    :cond_2
    if-nez p1, :cond_3

    .line 520
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 522
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFamilyInfoScreen()V
    .locals 4

    .line 339
    const-string v0, "familyInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 341
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Family details"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Family ID"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Members Info"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Do you want to migrate or split this family?"

    invoke-static {v2, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->splitRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->splitRadioGroup:Landroid/widget/RadioGroup;

    .line 351
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "Migrate the family"

    .line 353
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    .line 354
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 352
    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->splitRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "Split the family"

    .line 357
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    .line 358
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 356
    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->splitRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setFinalScreen()V
    .locals 3

    .line 573
    const-string v0, "finalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 576
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "Form entry completed"

    .line 577
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 578
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed entering the information in the form."

    .line 579
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setOtherInfoScreen()V
    .locals 14

    .line 526
    const-string v0, "otherInfoScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 529
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Location Migrated to"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveHierarchyOfVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x1

    .line 534
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    .line 535
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    .line 536
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x4

    .line 537
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x5

    .line 538
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x6

    .line 539
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    aput-object v5, v12, v2

    aput-object v7, v12, v4

    aput-object v9, v12, v6

    aput-object v11, v12, v8

    aput-object v0, v12, v10

    .line 533
    const-string v0, "%s > %s > %s > %s > %s > %s"

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$6;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V

    .line 546
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 547
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 548
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 550
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v4, "FHW Name"

    invoke-static {v1, v1, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v4, "name"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 554
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v4, "FHW Contact"

    invoke-static {v1, v1, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    const-string v2, "mobileNumber"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 557
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 558
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Not available"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Other Information"

    invoke-static {v1, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const/16 v1, 0x1f4

    const/4 v2, -0x1

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->otherInfoEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSearchOptionScreen(Z)V
    .locals 4

    .line 365
    const-string v0, "searchOptionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "Please check if the family has been migrated to Out of State"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v1, "Choose an option to search"

    invoke-static {v3, v3, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionTextView:Landroid/widget/TextView;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    const-string v3, "Select Location"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v2, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    const-string v3, "Type Village Name"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 383
    sget-object p1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    const-string v2, "Location not known"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    .line 388
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_3

    .line 389
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v0, "Out of State"

    const/16 v2, 0xff

    invoke-static {p1, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    .line 390
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 403
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_4

    .line 406
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private setVillageSearchScreen()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 414
    const-string v0, "villageSearchScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "Please enter Village/Anganwadi-Area name"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const/16 v2, 0x3e9

    const/16 v3, 0x32

    const-string v4, "Village/Anganwadi-Area"

    invoke-static {v0, v4, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v2, "Search"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x68

    invoke-static {v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageButton:Landroid/widget/Button;

    .line 427
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addSearchedVillageList()V
    .locals 15

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->noVillageTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 464
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v1, "Select from list"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 465
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 471
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveHierarchyOfVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    .line 473
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    .line 474
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x3

    .line 475
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x4

    .line 476
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x5

    .line 477
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x6

    .line 478
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

    .line 472
    const-string v2, "%s > %s > %s > %s > %s > %s"

    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V

    .line 487
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->listView:Landroid/widget/ListView;

    .line 488
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v1, "No Villages/Anganwadi-Area found with this name!"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->noVillageTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 491
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hideProcessDialog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 189
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 192
    const-string p2, "newHead"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->newHeadId:Ljava/lang/String;

    .line 193
    const-string p2, "existingHeadSelected"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->existingHeadSelected:Z

    .line 194
    const-string p2, "relationWithHofMap"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->relWithHofMap:Ljava/util/Map;

    .line 195
    const-string p2, "isCurrentLocation"

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setResult(I)V

    .line 198
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->finish()V

    goto :goto_0

    .line 200
    :cond_0
    const-string p1, "memberIds"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance p3, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$2;

    invoke-direct {p3, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V

    .line 203
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 202
    invoke-virtual {p2, p1, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->memberIds:Ljava/util/List;

    const/4 p1, 0x1

    .line 204
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSearchOptionScreen(Z)V

    goto :goto_0

    .line 206
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->memberIds:Ljava/util/List;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 210
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setFamilyInfoScreen()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .line 167
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V

    .line 180
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v3, "Are you sure want to close Migration?"

    const/16 v5, -0x97

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_18

    .line 218
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "hierarchySearchScreen"

    const-string v2, "hierarchyScreen"

    const/4 v3, -0x1

    const/4 v4, 0x0

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
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "searchOptionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "confirmationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "otherInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "familyInfoScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "villageSearchScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_1
    const-string v0, "You have selected the same village where member migrating from. Please select some other Village."

    const-string v5, "Please select Hierarchy till Village/Anganwadi Area"

    const-string v6, "6"

    const-string v7, "Please Select an option"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 329
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->finishActivity()V

    goto/16 :goto_3

    .line 235
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 236
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 237
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setConfirmationScreen(Z)V

    goto/16 :goto_3

    .line 239
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-eq p1, v3, :cond_c

    .line 240
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 241
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 242
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 243
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz p1, :cond_9

    .line 244
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    goto :goto_2

    .line 246
    :cond_9
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addRegionSpinner(Z)V

    .line 249
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_b

    .line 250
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setVillageSearchScreen()V

    .line 252
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 253
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 254
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V

    .line 257
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_18

    .line 258
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 259
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 260
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setConfirmationScreen(Z)V

    goto/16 :goto_3

    .line 263
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 312
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-eq p1, v3, :cond_e

    .line 313
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 314
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setOtherInfoScreen()V

    .line 316
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->confirmationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_18

    .line 317
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSearchOptionScreen(Z)V

    goto/16 :goto_3

    .line 320
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 304
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectionMap:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 305
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setOtherInfoScreen()V

    goto/16 :goto_3

    .line 307
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 269
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectionMap:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_11

    .line 271
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 272
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 275
    :cond_10
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setOtherInfoScreen()V

    goto/16 :goto_3

    .line 278
    :cond_11
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 325
    :pswitch_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setFinalScreen()V

    goto/16 :goto_3

    .line 220
    :pswitch_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->splitRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v3, :cond_12

    .line 221
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 222
    :cond_12
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->splitRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 223
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSearchOptionScreen(Z)V

    goto/16 :goto_3

    .line 224
    :cond_13
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->splitRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_18

    .line 225
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "familyToSplit"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    if-eqz v0, :cond_14

    .line 228
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    const/16 v0, 0x3eb

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 283
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 284
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedVillageIndex:I

    if-eq p1, v3, :cond_16

    .line 285
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 287
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_15
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 291
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->showProcessDialog()V

    .line 292
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    .line 294
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->hideProcessDialog()V

    goto :goto_3

    .line 296
    :cond_16
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v0, "Please select a searched Village/Anganwadi-Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 299
    :cond_17
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-string v0, "Please search for a Village/Anganwadi-Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_18
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4c557500 -> :sswitch_7
        -0x30585ec2 -> :sswitch_6
        -0x3005e216 -> :sswitch_5
        -0x2adfcff -> :sswitch_4
        0x1def7309 -> :sswitch_3
        0x1dfa7d01 -> :sswitch_2
        0x389ac709 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 123
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    const-string v0, "familyToMigrate"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 129
    const-string v0, "notification"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 135
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1065
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1066
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1071
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_f

    const/4 p1, -0x1

    .line 1072
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedVillageIndex:I

    .line 1073
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

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
    const/4 p1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v3, "searchOptionScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v3, "confirmationScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v3, "otherInfoScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v3, "familyInfoScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v3, "villageSearchScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1151
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->onBackPressed()V

    goto/16 :goto_1

    .line 1147
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setOtherInfoScreen()V

    goto/16 :goto_1

    .line 1080
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->memberIds:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1081
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/FamilySplitActivity_;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1082
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "familyToSplit"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->memberIds:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "memberIds"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    if-eqz v0, :cond_9

    .line 1085
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedNotification:Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const/16 v0, 0x3eb

    .line 1087
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1089
    :cond_a
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setFamilyInfoScreen()V

    goto/16 :goto_1

    .line 1117
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSearchOptionScreen(Z)V

    goto/16 :goto_1

    .line 1099
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1100
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->showProcessDialog()V

    .line 1101
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setVillageSearchScreen()V

    .line 1102
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchVillageEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1103
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1104
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1094
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1095
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSearchOptionScreen(Z)V

    goto/16 :goto_1

    .line 1121
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1122
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->outOfStateCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1123
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setConfirmationScreen(Z)V

    goto :goto_1

    .line 1125
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz p1, :cond_c

    .line 1126
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 1127
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    goto :goto_1

    .line 1130
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_YES:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 1131
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->screenName:Ljava/lang/String;

    .line 1132
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz p1, :cond_d

    .line 1133
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addSearchedVillageHierarchyScreen(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    goto :goto_1

    .line 1135
    :cond_d
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addRegionSpinner(Z)V

    goto :goto_1

    .line 1139
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchOptionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget-object v0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->RADIO_BUTTON_ID_NOT_KNOWN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 1140
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setConfirmationScreen(Z)V

    goto :goto_1

    .line 1075
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setResult(I)V

    .line 1076
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->finish()V

    goto :goto_1

    .line 1109
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1110
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSearchOptionScreen(Z)V

    .line 1111
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1112
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_f
    :goto_1
    return v1

    .line 1067
    :cond_10
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4c557500 -> :sswitch_7
        -0x30585ec2 -> :sswitch_6
        -0x3005e216 -> :sswitch_5
        -0x2adfcff -> :sswitch_4
        0x1def7309 -> :sswitch_3
        0x1dfa7d01 -> :sswitch_2
        0x389ac709 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected onResume()V
    .locals 3

    .line 140
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    const/4 v0, 0x1

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setContentView(Landroid/view/View;)V

    .line 145
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->finish()V

    .line 152
    :cond_1
    const-string v0, "Family Migration OUT"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setTitle(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->familyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveSearchedVillageListFromDB(Ljava/lang/CharSequence;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->migrationService:Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/MigrationServiceImpl;->retrieveLocationMasterBeansBySearch(Ljava/lang/CharSequence;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->searchedVillageList:Ljava/util/List;

    .line 455
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->addSearchedVillageList()V

    return-void
.end method
