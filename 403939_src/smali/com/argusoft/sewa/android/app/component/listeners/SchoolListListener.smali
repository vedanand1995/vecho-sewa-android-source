.class public Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;
.super Ljava/lang/Object;
.source "SchoolListListener.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final DELAY:J = 0x3e8L


# instance fields
.field private autoScoped:Z

.field private autoScopedLocationIdsPropertyName:Ljava/lang/String;

.field private blockSpinner:Landroid/widget/Spinner;

.field private context:Landroid/content/Context;

.field private districtSpinner:Landroid/widget/Spinner;

.field private hierarchyLayout:Landroid/widget/LinearLayout;

.field private hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private noSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private phcSpinner:Landroid/widget/Spinner;

.field private processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private schoolBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SchoolBean;",
            ">;"
        }
    .end annotation
.end field

.field private schoolSelectionInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private schoolSelectionTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private searchTypeRadioGroup:Landroid/widget/RadioGroup;

.field private selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

.field private selectedLocationId:Ljava/lang/Long;

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

.field private standard:Ljava/lang/Integer;

.field private subcenterSpinner:Landroid/widget/Spinner;

.field private timer:Ljava/util/Timer;

.field private userSelectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;Landroid/widget/RadioGroup;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolBeans:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->timer:Ljava/util/Timer;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectedLocationId:Ljava/lang/Long;

    .line 82
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->userSelectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 93
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    .line 94
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Timer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/argusoft/sewa/android/app/model/SchoolBean;)Lcom/argusoft/sewa/android/app/model/SchoolBean;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->userSelectedSchool:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->districtSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->blockSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->phcSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/LinearLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->subcenterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->villageSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectedLocationId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addDistrictSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->retrieveSchoolsByLocationFromDB()V

    return-void
.end method

.method static synthetic access$2700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addBlockSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addPhcSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addSubcenterSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionInput:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/Long;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addVillageSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionInput:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->noSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->noSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->retrieveSchoolsBySearchFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-object p0
.end method

.method private addBlockSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 610
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x3

    .line 611
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 615
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 617
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 618
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

    .line 619
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 620
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 621
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 626
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 629
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->blockSpinner:Landroid/widget/Spinner;

    .line 631
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$5;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 665
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "Zone"

    const-string v2, "Z"

    const-string v4, "B"

    const-string v5, "Block"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 669
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 670
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 673
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 676
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 680
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 681
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 682
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 683
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v7, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 685
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 686
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 689
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 691
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 692
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDistrictSpinner(Ljava/lang/Long;)V
    .locals 7

    .line 550
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 551
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 553
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 555
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 556
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

    .line 557
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/2addr v5, v2

    goto :goto_0

    .line 561
    :cond_0
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v2, v0, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->districtSpinner:Landroid/widget/Spinner;

    .line 566
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$4;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$4;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 603
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const-string v0, "District/Corporation"

    .line 604
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 603
    invoke-static {v1, v1, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 605
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addHierarchyLayoutForSchool()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->noSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const-string v1, "Select hierarchy for School"

    .line 221
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 220
    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 225
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    .line 227
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addRegionSpinner()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPhcSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 696
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x4

    .line 697
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 701
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "-Select-"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 703
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 704
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

    .line 705
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    .line 706
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 707
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 712
    :cond_1
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 715
    :cond_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v1, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->phcSpinner:Landroid/widget/Spinner;

    .line 717
    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$6;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$6;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 748
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "UHC"

    const-string v3, "P"

    const-string v4, "U"

    const-string v6, "PHC"

    const/4 v7, 0x0

    if-le p1, v2, :cond_7

    .line 749
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 752
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 753
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 756
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v2, v8, :cond_5

    .line 759
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 763
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 764
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 765
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 766
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 768
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 769
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 772
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 774
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->phcSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegionSpinner()V
    .locals 7

    .line 486
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 489
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 491
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 492
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

    .line 493
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/2addr v5, v1

    goto :goto_0

    .line 497
    :cond_0
    const-string v3, "No location available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v3, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 502
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$3;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 543
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const-string v2, "Region"

    .line 544
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 543
    invoke-static {v3, v3, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 545
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSchoolSelectionLayout()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addSearchLayoutForSchool()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolSelectionInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->noSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "Enter School Name"

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    .line 149
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 148
    invoke-static {v3, v3, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, -0x1

    const/16 v4, 0x44d

    invoke-static {v0, v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSubcenterSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 779
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x5

    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 782
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 784
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 786
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 787
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

    .line 788
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 789
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 790
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 795
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 798
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->subcenterSpinner:Landroid/widget/Spinner;

    .line 800
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$7;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$7;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 828
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "ANM Area"

    const-string v2, "SC"

    const-string v4, "ANM"

    const-string v5, "Subcenter"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 832
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 833
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 836
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 839
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 843
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 844
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 845
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 846
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 848
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 849
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 852
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 854
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 855
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->subcenterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addVillageSpinner(Ljava/lang/Long;)V
    .locals 12

    .line 859
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x6

    .line 860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 864
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 866
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 867
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

    .line 868
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 869
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 870
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 875
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 878
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->villageSpinner:Landroid/widget/Spinner;

    .line 880
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$8;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener$8;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 904
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

    .line 905
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 908
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 909
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    :cond_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 912
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    :cond_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 915
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_6

    .line 918
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 922
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, v9, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 923
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 924
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 925
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v9, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 927
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 928
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v9, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 930
    :cond_a
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 931
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v9, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 934
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v9, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 936
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 937
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private fetchAutoScopedSchools()V
    .locals 10

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->autoScopedLocationIdsPropertyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 301
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 306
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 308
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid location id in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetchAutoScopedSchools: no location ids in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (value="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolBeans:Ljava/util/List;

    .line 315
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addSchoolSelectionLayout()V

    return-void

    .line 318
    :cond_1
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const-string v3, "Processing...."

    invoke-direct {v0, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 319
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 320
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->setStandard()V

    .line 321
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->schoolService:Lcom/argusoft/sewa/android/app/core/SchoolService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    invoke-interface {v0, v2, v1}, Lcom/argusoft/sewa/android/app/core/SchoolService;->retrieveSchoolsListByLocationIds(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolBeans:Ljava/util/List;

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fetchAutoScopedSchools: locationIds="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " standard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " results="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolBeans:Ljava/util/List;

    .line 323
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addSchoolSelectionLayout()V

    return-void
.end method

.method private retrieveSchoolsByLocationFromDB()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectedLocationId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const-string v2, "Processing...."

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 249
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 250
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->setStandard()V

    .line 251
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->schoolService:Lcom/argusoft/sewa/android/app/core/SchoolService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->selectedLocationId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/SchoolService;->retrieveSchoolsListByLocationId(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolBeans:Ljava/util/List;

    .line 252
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addSchoolSelectionLayout()V

    :cond_0
    return-void
.end method

.method private retrieveSchoolsBySearchFromDB(Ljava/lang/String;)V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 237
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->context:Landroid/content/Context;

    const-string v2, "Processing...."

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 238
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 239
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->setStandard()V

    .line 240
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->schoolService:Lcom/argusoft/sewa/android/app/core/SchoolService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/SchoolService;->retrieveSchoolsListBySearch(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->schoolBeans:Ljava/util/List;

    .line 241
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addSchoolSelectionLayout()V

    :cond_0
    return-void
.end method

.method private setStandard()V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 263
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v4, "setstandard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    aget-object v0, v1, v3

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 266
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getStandard()Ljava/lang/Integer;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .line 99
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setHasUnselectedText(Z)V

    .line 105
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 107
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 108
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "checkServiceDateForSchool"

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 110
    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "isPrimarySchool"

    invoke-static {v1, v0, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "isHigherSecondarySchool"

    invoke-static {v1, v0, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 122
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/16 p2, 0x2716

    if-ne p1, p2, :cond_5

    .line 128
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addSearchLayoutForSchool()V

    .line 129
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 130
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchSchoolEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->retrieveSchoolsBySearchFromDB(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/16 p2, 0x2717

    if-ne p1, p2, :cond_6

    .line 133
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->addHierarchyLayoutForSchool()V

    .line 134
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->retrieveSchoolsByLocationFromDB()V

    :cond_6
    :goto_1
    return-void
.end method

.method public resetIfStandardChanged(Landroid/widget/RadioGroup;)V
    .locals 6

    .line 336
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->autoScoped:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->fetchAutoScopedSchools()V

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;

    .line 344
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FormulaTagBean;->getFormulavalue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 345
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v4, v1, v2

    const-string v5, "setstandard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    aget-object v0, v1, v3

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getLoopCounter()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 347
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 349
    :goto_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->standard:Ljava/lang/Integer;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-ne v1, v3, :cond_6

    if-eqz v0, :cond_7

    .line 350
    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    if-eqz p1, :cond_7

    .line 351
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 352
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public showAutoScopedSchools(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->autoScoped:Z

    .line 295
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/SchoolListListener;->autoScopedLocationIdsPropertyName:Ljava/lang/String;

    return-void
.end method
