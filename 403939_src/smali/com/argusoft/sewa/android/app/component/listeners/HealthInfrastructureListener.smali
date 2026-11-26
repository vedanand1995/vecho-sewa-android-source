.class public Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;
.super Ljava/lang/Object;
.source "HealthInfrastructureListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DELAY:J = 0x3e8L


# instance fields
.field private blockSpinner:Landroid/widget/Spinner;

.field private final collator:Ljava/text/Collator;

.field private context:Landroid/content/Context;

.field private districtSpinner:Landroid/widget/Spinner;

.field private formType:Ljava/lang/String;

.field private hierarchyLayout:Landroid/widget/LinearLayout;

.field private hierarchyTextView:Landroid/widget/TextView;

.field private infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

.field private infraSelectionSpinner:Landroid/widget/Spinner;

.field private infraSelectionTextView:Landroid/widget/TextView;

.field private infraTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private infrastructureBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;",
            ">;"
        }
    .end annotation
.end field

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final levelLocationListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final levelSelectLocationQueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/textview/MaterialTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final levelSelectedLocationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private final levelSpinnerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field

.field private linearLayout:Landroid/widget/LinearLayout;

.field private locationLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private noInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private phcSpinner:Landroid/widget/Spinner;

.field private processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private sdfAmPm:Ljava/text/SimpleDateFormat;

.field private searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchInfraTextView:Landroid/widget/TextView;

.field private searchTypeRadioGroup:Landroid/widget/RadioGroup;

.field private searchTypeTextView:Landroid/widget/TextView;

.field private selectBlockQues:Landroid/widget/TextView;

.field private selectDistrictQues:Landroid/widget/TextView;

.field private selectPhcQues:Landroid/widget/TextView;

.field private selectSubCenterQues:Landroid/widget/TextView;

.field private selectVillageQues:Landroid/widget/TextView;

.field private selectedInfraTypeId:Ljava/lang/Long;

.field private selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

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

.field showSmartReferralType:Ljava/lang/String;

.field smartReferralScheduleExceptionBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;",
            ">;"
        }
    .end annotation
.end field

.field smartReferralScheduleMasterBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private subCenterSpinner:Landroid/widget/Spinner;

.field private timer:Ljava/util/Timer;

.field private typeSpinner:Landroid/widget/Spinner;

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/Spinner;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infrastructureBeans:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->locationLevels:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelLocationListMap:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectedLocationMap:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectLocationQueMap:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSpinnerMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/Locale;

    const-string v1, "hi"

    const-string v2, "IN"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->collator:Ljava/text/Collator;

    .line 95
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->timer:Ljava/util/Timer;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocationId:Ljava/lang/Long;

    .line 114
    const-string v1, "0"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->showSmartReferralType:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 119
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 121
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    .line 122
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->typeSpinner:Landroid/widget/Spinner;

    .line 123
    iput-object p5, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraTypeMap:Ljava/util/Map;

    .line 124
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->formType:Ljava/lang/String;

    .line 125
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "HH:mm"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;

    .line 127
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "hh:mm aa"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;

    .line 128
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string p2, "showSmartReferral"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->showSmartReferralType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Timer;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/lang/Long;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedInfraTypeId:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->formType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addSmartReferralDetails(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Integer;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->removeSpinners(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectedLocationMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->checkLocationLevel(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelLocationListMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addSpinners(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    return-void
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->retrieveInfrastructureByLocationFromDB()V

    return-void
.end method

.method static synthetic access$2200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/Map;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectDistrictQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->districtSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectBlockQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->blockSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectPhcQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->phcSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectSubCenterQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->subCenterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectVillageQues:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->villageSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocationId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addDistrictSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addBlockSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addPhcSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addSubCenterSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addVillageSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Landroid/widget/Spinner;)Landroid/widget/Spinner;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionSpinner:Landroid/widget/Spinner;

    return-object p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->noInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->noInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infrastructureBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->retrieveInfrastructuresBySearchFromDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private addBlockSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 912
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x3

    .line 913
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 917
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 919
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 920
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

    .line 921
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 922
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 923
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 928
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 931
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->blockSpinner:Landroid/widget/Spinner;

    .line 932
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$7;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$7;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 966
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "Zone"

    const-string v2, "Z"

    const-string v4, "B"

    const-string v5, "Block"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 970
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 971
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 974
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 977
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 981
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectBlockQues:Landroid/widget/TextView;

    goto :goto_2

    .line 982
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 983
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 984
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectBlockQues:Landroid/widget/TextView;

    .line 986
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 987
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectBlockQues:Landroid/widget/TextView;

    goto :goto_2

    .line 990
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectBlockQues:Landroid/widget/TextView;

    .line 992
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectBlockQues:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 993
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDistrictSpinner(Ljava/lang/Long;)V
    .locals 7

    .line 854
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 855
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 857
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 859
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 860
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

    .line 861
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/2addr v5, v2

    goto :goto_0

    .line 865
    :cond_0
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v2, v0, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->districtSpinner:Landroid/widget/Spinner;

    .line 869
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$6;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 906
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v0, "District/Corporation"

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectDistrictQues:Landroid/widget/TextView;

    .line 907
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 908
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addHierarchyLayoutForInfrastructure()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v1, "Select hierarchy for Health Infrastructure"

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyTextView:Landroid/widget/TextView;

    .line 319
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 320
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const/16 v2, 0x272e

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    .line 324
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addSpinnersForLocationHierarchy()V

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addRegionSpinner()V

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addInfrastructureSelectionLayout()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addPhcSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 997
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x4

    .line 998
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 1002
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "-Select-"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 1004
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1005
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

    .line 1006
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    .line 1007
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1008
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1016
    :cond_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v1, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->phcSpinner:Landroid/widget/Spinner;

    .line 1017
    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$8;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$8;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1048
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "UHC"

    const-string v3, "P"

    const-string v4, "U"

    const-string v6, "PHC"

    const/4 v7, 0x0

    if-le p1, v2, :cond_7

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1051
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1052
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1053
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1056
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v2, v8, :cond_5

    .line 1059
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1063
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectPhcQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1064
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 1065
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1066
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectPhcQues:Landroid/widget/TextView;

    .line 1068
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1069
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectPhcQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1072
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectPhcQues:Landroid/widget/TextView;

    .line 1074
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectPhcQues:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1075
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->phcSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegionSpinner()V
    .locals 7

    .line 792
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 793
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 795
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 797
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 798
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

    .line 799
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/2addr v5, v1

    goto :goto_0

    .line 803
    :cond_0
    const-string v3, "No location available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 806
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v3, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 807
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$5;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$5;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 848
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v2, "Region"

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 849
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 850
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSearchLayoutForInfrastructure()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraTextView:Landroid/widget/TextView;

    const-string v1, "Search Health Infrastructure"

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraTextView:Landroid/widget/TextView;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    .line 255
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, -0x1

    const/16 v4, 0x272d

    .line 254
    invoke-static {v0, v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 258
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSmartReferralDetails(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 467
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 468
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 469
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 471
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v7, "Current Shift Details"

    const/4 v8, 0x0

    invoke-static {v8, v8, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    .line 473
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v9, "Next Shift Details"

    invoke-static {v8, v8, v7, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    .line 478
    iget-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v9, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-static {v8, v10, v11, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v8

    iput-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    .line 479
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    .line 480
    invoke-interface {v8, v0, v2}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveSmartExceptionByHospitalInfraId(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->smartReferralScheduleExceptionBeans:Ljava/util/List;

    .line 481
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const-string v9, "Contact No. : "

    const-string v13, ")"

    const-string v14, " - "

    const-string v15, " ("

    const-string v10, " Units - "

    const-string v11, "Contact Person : "

    const-string v12, ":"

    move-object/from16 v16, v7

    if-eqz v8, :cond_7

    .line 482
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    .line 483
    invoke-interface {v8, v0, v2}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveSmartMasterByHospitalInfraId(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->smartReferralScheduleMasterBeans:Ljava/util/List;

    .line 484
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->smartReferralScheduleMasterBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v17, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    .line 490
    :try_start_0
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getFromTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 p1, v8

    .line 491
    :try_start_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getToTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    .line 492
    aget-object v19, v7, v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v20, v12

    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v19, v6

    const/16 v6, 0xb

    :try_start_3
    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x1

    .line 493
    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x0

    .line 494
    aget-object v7, v8, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xb

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x1

    .line 495
    aget-object v7, v8, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 497
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 498
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getContactPersonName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    .line 501
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    .line 503
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getUnitsAssigned()Ljava/lang/String;

    move-result-object v8

    .line 502
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 503
    invoke-virtual {v8, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v21, v5

    :try_start_4
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v22, v15

    .line 504
    :try_start_5
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getFromTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;

    iget-object v15, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v23, v14

    .line 505
    :try_start_6
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getToTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 501
    invoke-static {v7, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    .line 506
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0xf

    const/4 v14, -0x1

    invoke-static {v7, v14, v12, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCardView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroidx/cardview/widget/CardView;

    move-result-object v7

    .line 507
    iget-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v12, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, 0x1

    invoke-static {v8, v14, v15, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 508
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 511
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-direct {v1, v0, v5, v9}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->generateLinkTextView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 512
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    :cond_1
    invoke-virtual {v7, v8}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 515
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v17, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v23, v14

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 517
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 518
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v19, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v19, v6

    goto :goto_1

    :catch_6
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v19, v6

    move-object/from16 p1, v8

    :goto_1
    move-object/from16 v20, v12

    :goto_2
    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 521
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    move-object/from16 v8, p1

    move-object/from16 v6, v19

    move-object/from16 v12, v20

    move-object/from16 v5, v21

    move-object/from16 v15, v22

    move-object/from16 v14, v23

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v6

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 525
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 526
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    :try_start_7
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 530
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    .line 531
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getContactPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-static {v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 532
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const/4 v4, 0x0

    .line 533
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    .line 534
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getUnitsAssigned()Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    .line 534
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v7, 0x0

    .line 535
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getFromTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v23

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v8, 0x0

    .line 536
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getToTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    .line 537
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xf

    const/4 v7, -0x1

    invoke-static {v4, v7, v6, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCardView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroidx/cardview/widget/CardView;

    move-result-object v4

    .line 538
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x1

    invoke-static {v5, v7, v8, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 539
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 541
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 542
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v9}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->generateLinkTextView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 543
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    :cond_5
    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 546
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v2, v16

    :try_start_8
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v11, 0x1

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    move-object/from16 v2, v16

    .line 550
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_6
    move-object/from16 v2, v16

    :goto_6
    const/4 v11, 0x0

    :goto_7
    move-object v3, v2

    goto/16 :goto_f

    :cond_7
    move-object/from16 v21, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v12

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v2, v16

    .line 555
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    move-object/from16 v7, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    iget-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->smartReferralScheduleExceptionBeans:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v17, 0x0

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    .line 560
    :try_start_9
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getFromTime()Ljava/lang/String;

    move-result-object v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    move-object/from16 v15, v20

    :try_start_a
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    move-object/from16 p1, v8

    .line 561
    :try_start_b
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getToTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    .line 562
    aget-object v19, v14, v16
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    move-object/from16 v20, v15

    :try_start_c
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    move-object/from16 v19, v7

    const/16 v7, 0xb

    :try_start_d
    invoke-virtual {v4, v7, v15}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x1

    .line 563
    aget-object v14, v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v14, 0xc

    invoke-virtual {v4, v14, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x0

    .line 564
    aget-object v14, v8, v7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v14, v21

    const/16 v15, 0xb

    :try_start_e
    invoke-virtual {v14, v15, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x1

    .line 565
    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {v14, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 567
    invoke-virtual {v3, v14}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 568
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getContactPersonName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 568
    invoke-static {v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    .line 571
    iget-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    .line 573
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getUnitsAssigned()Ljava/lang/String;

    move-result-object v15

    .line 572
    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 573
    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-object/from16 v21, v14

    :try_start_f
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    move-object/from16 v16, v2

    :try_start_10
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    move-object/from16 v22, v5

    .line 574
    :try_start_11
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getFromTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;

    iget-object v14, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    move-object/from16 v23, v6

    .line 575
    :try_start_12
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getToTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-static {v8, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 576
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0xf

    const/4 v14, -0x1

    invoke-static {v5, v14, v8, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCardView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroidx/cardview/widget/CardView;

    move-result-object v5

    .line 577
    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v8, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, 0x1

    invoke-static {v6, v14, v15, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 578
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 580
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 581
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v7, v9}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->generateLinkTextView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 582
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    :cond_8
    invoke-virtual {v5, v6}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 585
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v6, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v21, v14

    .line 587
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 588
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    :cond_a
    move/from16 v6, v17

    :goto_9
    move/from16 v17, v6

    goto :goto_c

    :catch_9
    move-object/from16 v16, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v21, v14

    goto :goto_b

    :catch_a
    move-object/from16 v16, v2

    :catch_b
    move-object/from16 v22, v5

    :catch_c
    move-object/from16 v23, v6

    goto :goto_b

    :catch_d
    move-object/from16 v16, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    goto :goto_b

    :catch_e
    move-object/from16 v16, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    goto :goto_a

    :catch_f
    move-object/from16 v16, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    move-object/from16 p1, v8

    :goto_a
    move-object/from16 v20, v15

    goto :goto_b

    :catch_10
    move-object/from16 v16, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    move-object/from16 p1, v8

    :catch_11
    :goto_b
    nop

    :goto_c
    move-object/from16 v8, p1

    move-object/from16 v2, v16

    move-object/from16 v7, v19

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_8

    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    .line 594
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 595
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    :try_start_13
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 599
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    .line 600
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getContactPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 601
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const/4 v4, 0x0

    .line 602
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    .line 603
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getUnitsAssigned()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v7, 0x0

    .line 604
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getFromTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v23

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdfAmPm:Ljava/text/SimpleDateFormat;

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v8, 0x0

    .line 605
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getToTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    .line 606
    iget-object v4, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xf

    const/4 v7, -0x1

    invoke-static {v4, v7, v6, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCardView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroidx/cardview/widget/CardView;

    move-result-object v4

    .line 607
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    iget-object v6, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x1

    invoke-static {v5, v7, v8, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 608
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    const/4 v2, 0x0

    .line 610
    :try_start_14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 611
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getContactPersonNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-direct {v1, v0, v3, v9}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->generateLinkTextView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 612
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    :cond_c
    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 615
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    move-object/from16 v3, v16

    :try_start_15
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 616
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12

    const/4 v11, 0x1

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_d

    :catch_13
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_d

    :catch_14
    move-exception v0

    move-object/from16 v3, v16

    const/4 v2, 0x0

    .line 619
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :cond_d
    move-object/from16 v3, v16

    const/4 v2, 0x0

    :goto_e
    const/4 v11, 0x0

    :goto_f
    if-nez v17, :cond_e

    if-eqz v19, :cond_e

    .line 624
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_e
    if-nez v11, :cond_f

    if-eqz v3, :cond_f

    .line 626
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 627
    :cond_f
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSpinners(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V
    .locals 7

    .line 733
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 734
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 737
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 738
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->removeSpinners(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 740
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    .line 741
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelLocationListMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 744
    const-string v4, "-Select-"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p1

    .line 746
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 747
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 751
    :cond_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v2, p1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v2

    .line 752
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->getOnItemSelectedListenerForHierarchy()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 754
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 755
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Select "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 756
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 757
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 758
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSpinnerMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectLocationQueMap:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 761
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->removeSpinners(Ljava/lang/Integer;)V

    :goto_1
    return-void
.end method

.method private addSpinnersForLocationHierarchy()V
    .locals 10

    .line 656
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelLocationListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 657
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSpinnerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 658
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectLocationQueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 659
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infrastructureBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 660
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 662
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 667
    :cond_0
    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 668
    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    .line 671
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v5

    .line 674
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v1

    new-array v6, v6, [Ljava/lang/String;

    .line 675
    const-string v7, "-Select-"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 678
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 679
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    add-int/2addr v8, v1

    goto :goto_0

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelLocationListMap:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v6, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    .line 686
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->getOnItemSelectedListenerForHierarchy()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 688
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1, v4}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 689
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Select "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 690
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 691
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 692
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSpinnerMap:Ljava/util/Map;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectLocationQueMap:Ljava/util/Map;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 663
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v1, "No locations found"

    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSubCenterSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 1079
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x5

    .line 1080
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1084
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 1086
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1087
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

    .line 1088
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 1089
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1090
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1098
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->subCenterSpinner:Landroid/widget/Spinner;

    .line 1099
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$9;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "ANM Area"

    const-string v2, "SC"

    const-string v4, "ANM"

    const-string v5, "Subcenter"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 1128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1131
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1132
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1135
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 1138
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1142
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectSubCenterQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1143
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 1144
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1145
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectSubCenterQues:Landroid/widget/TextView;

    .line 1147
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1148
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectSubCenterQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1151
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v7, v7, p1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectSubCenterQues:Landroid/widget/TextView;

    .line 1153
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectSubCenterQues:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->subCenterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addVillageSpinner(Ljava/lang/Long;)V
    .locals 12

    .line 1158
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x6

    .line 1159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 1165
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1166
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

    .line 1167
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 1168
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1169
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1174
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1177
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->villageSpinner:Landroid/widget/Spinner;

    .line 1178
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$10;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$10;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1202
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

    .line 1203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1206
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1207
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1210
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1213
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_6

    .line 1216
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1220
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, v9, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectVillageQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1221
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 1222
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1223
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v9, v9, p1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectVillageQues:Landroid/widget/TextView;

    .line 1225
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1226
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v9, v9, p1, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectVillageQues:Landroid/widget/TextView;

    .line 1228
    :cond_a
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1229
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v9, v9, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectVillageQues:Landroid/widget/TextView;

    goto :goto_2

    .line 1232
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v9, v9, p1, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectVillageQues:Landroid/widget/TextView;

    .line 1234
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectVillageQues:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1235
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkLocationLevel(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 777
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->locationLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 782
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 783
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 787
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private generateLinkTextView(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 4

    .line 631
    sget v0, Lcom/argusoft/sewa/android/app/R$style;->CustomLabelView:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, p3, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 634
    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$3;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/String;Landroid/content/Context;)V

    .line 648
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 649
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method

.method private getOnItemSelectedListenerForHierarchy()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 697
    new-instance v0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$4;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V

    return-object v0
.end method

.method static synthetic lambda$addSmartReferralDetails$1(Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;)I
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getFromTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleMasterBean;->getFromTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$addSmartReferralDetails$2(Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;)I
    .locals 0

    .line 595
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getFromTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/SmartReferralScheduleExceptionBean;->getFromTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$addSpinners$5(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)I
    .locals 0

    .line 736
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$addSpinnersForLocationHierarchy$3(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)I
    .locals 0

    .line 667
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private removeSpinners(Ljava/lang/Integer;)V
    .locals 5

    .line 766
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelLocationListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 767
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 768
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectLocationQueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 769
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSpinnerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 770
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->levelSelectedLocationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private retrieveInfrastructureByLocationFromDB()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocationId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 347
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v2, "Processing...."

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 348
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 349
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedInfraTypeId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveHealthInfraByLocationId(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infrastructureBeans:Ljava/util/List;

    goto :goto_0

    .line 353
    :cond_1
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedLocationId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedInfraTypeId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveHealthInfraByLocationId(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infrastructureBeans:Ljava/util/List;

    .line 355
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addInfrastructureSelectionLayout()V

    :cond_2
    return-void
.end method

.method private retrieveInfrastructuresBySearchFromDB(Ljava/lang/String;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 337
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v2, "Processing...."

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    .line 338
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->show()V

    .line 339
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedInfraTypeId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getDatamap()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/core/HealthInfrastructureService;->retrieveHealthInfraBySearch(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infrastructureBeans:Ljava/util/List;

    .line 340
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addInfrastructureSelectionLayout()V

    :cond_0
    return-void
.end method

.method private setSearchTypeView()V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->noInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Choose an option to search"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v0

    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v1, v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateMandatoryQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-static {v1, v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeTextView:Landroid/widget/TextView;

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    const/16 v1, 0x272c

    const/16 v2, 0x272b

    if-nez v0, :cond_2

    .line 202
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    const/16 v3, 0x32

    const/4 v4, 0x0

    .line 203
    invoke-virtual {v0, v4, v4, v4, v3}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 204
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v3, "Search by name"

    invoke-static {v0, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 206
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string v3, "Search by hierarchy"

    invoke-static {v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 209
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 233
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addSearchLayoutForInfrastructure()V

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->retrieveInfrastructuresBySearchFromDB(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 238
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addHierarchyLayoutForInfrastructure()V

    .line 239
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->retrieveInfrastructureByLocationFromDB()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$addSpinners$6$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)I
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method synthetic lambda$addSpinnersForLocationHierarchy$4$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)I
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method synthetic lambda$setSearchTypeView$0$com-argusoft-sewa-android-app-component-listeners-HealthInfrastructureListener(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 214
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraSelectionContactPersonDetailsList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 216
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->noInfraTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/16 p1, 0x272b

    if-ne p2, p1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addSearchLayoutForInfrastructure()V

    .line 219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->searchInfraEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->retrieveInfrastructuresBySearchFromDB(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x272c

    if-ne p2, p1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addHierarchyLayoutForInfrastructure()V

    .line 224
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->retrieveInfrastructureByLocationFromDB()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->context:Landroid/content/Context;

    const-string p4, "Select Health Infrastructure type"

    invoke-static {p2, p2, p3, p4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->linearLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "-Select-"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->typeSpinner:Landroid/widget/Spinner;

    .line 141
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 142
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->infraTypeMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 144
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedInfraTypeId:Ljava/lang/Long;

    .line 145
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Asha"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->healthInfraTypeLocationService:Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-interface {p1, p4}, Lcom/argusoft/sewa/android/app/core/HealthInfraTypeLocationService;->retrieveLocationLevelsById(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->locationLevels:Ljava/util/List;

    .line 148
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Selected Health Infrastructure Type : "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " : : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string p5, "healthInfrastructureType"

    invoke-interface {p1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "healthInfrastructureTypeId"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getValidations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    .line 157
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object p4

    const-string p5, "-"

    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v0, "checkServiceDateForHealthInfra"

    const/4 v1, 0x0

    if-eqz p4, :cond_4

    .line 158
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 159
    aget-object p4, p4, v1

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 160
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedInfraTypeId:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;->getMethod()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 165
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->selectedInfraTypeId:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1, p2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->checkValidation(Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 172
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_6
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->setSearchTypeView()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
