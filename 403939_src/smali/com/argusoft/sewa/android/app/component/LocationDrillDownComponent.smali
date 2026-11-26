.class public Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;
.super Landroid/widget/LinearLayout;
.source "LocationDrillDownComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;,
        Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;
    }
.end annotation


# static fields
.field public static final CUSTOM_LOCATION_ANSWER_PREFIX:Ljava/lang/String; = "CUSTOM:"

.field private static final DISTRICT_LEVEL:I = 0x2

.field private static final DISTRICT_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_VILLAGE_SEARCH_LENGTH:I = 0x3

.field private static final SEARCH_DEBOUNCE_MS:J = 0x190L

.field private static final VILLAGE_LEVEL:I = 0x6


# instance fields
.field private allLocationsUnderSelectedBlock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private allowCustomLocation:Z

.field private final blockContainer:Landroid/widget/LinearLayout;

.field private blockOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private blockSelectedIndex:I

.field private blockSpinner:Landroid/widget/Spinner;

.field private final context:Landroid/content/Context;

.field private customLocationListener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;

.field private customNameConfirmButton:Landroid/widget/Button;

.field private customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private final districtContainer:Landroid/widget/LinearLayout;

.field private districtOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private districtSelectedIndex:I

.field private districtSpinner:Landroid/widget/Spinner;

.field private final listener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;

.field private final locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

.field private searchTimer:Ljava/util/Timer;

.field private selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

.field private selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

.field private skipCustomLocationMaxAge:Ljava/lang/Integer;

.field private skipCustomLocationMinAge:Ljava/lang/Integer;

.field private final villageContainer:Landroid/widget/LinearLayout;

.field private villageCustomButton:Landroid/widget/Button;

.field private villageHintView:Lcom/google/android/material/textview/MaterialTextView;

.field private villageNoResultView:Lcom/google/android/material/textview/MaterialTextView;

.field private villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field private villageNotKnownConfirmationView:Lcom/google/android/material/textview/MaterialTextView;

.field private villageResultListView:Landroid/widget/ListView;

.field private villageSearchAreaContainer:Landroid/widget/LinearLayout;

.field private villageSearchInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private villageSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private villagesUnderSelectedBlock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    const-string v0, "D"

    const-string v1, "C"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->DISTRICT_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;)V
    .locals 1

    .line 181
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtOptions:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockOptions:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villagesUnderSelectedBlock:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allLocationsUnderSelectedBlock:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->searchTimer:Ljava/util/Timer;

    .line 182
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 184
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->listener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;

    const/4 p1, 0x1

    .line 185
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setOrientation(I)V

    .line 186
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->newVerticalContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtContainer:Landroid/widget/LinearLayout;

    .line 190
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->newVerticalContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockContainer:Landroid/widget/LinearLayout;

    .line 191
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->newVerticalContainer()Landroid/widget/LinearLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    .line 193
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->addView(Landroid/view/View;)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 197
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildDistrictLevel(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtSelectedIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearFromBlockLevel()V

    return-void
.end method

.method static synthetic access$1002(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allLocationsUnderSelectedBlock:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectAllLocationsUnderAncestor(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildVillageSearchLevel(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)Ljava/util/Timer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->searchTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterVillages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtOptions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/Long;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildBlockLevel(Ljava/lang/Long;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockSelectedIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockSelectedIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearVillageLevel()V

    return-void
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockOptions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villagesUnderSelectedBlock:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectVillagesUnderAncestor(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private addUseTypedLocationButton(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V
    .locals 4

    .line 782
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Village not in the list? Use as the location:"

    .line 783
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 784
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customButtonParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 782
    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageCustomButton:Landroid/widget/Button;

    .line 785
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageCustomButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private applyVillageNotKnown(Z)V
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->hideKeyboard()V

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 256
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->showVillageNotKnownConfirmation(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->listener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;

    if-eqz v0, :cond_3

    .line 261
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-interface {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;->onVillageSelected(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->removeVillageNotKnownConfirmation()V

    .line 265
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->listener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;

    if-eqz p1, :cond_3

    .line 269
    invoke-interface {p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;->onSelectionCleared()V

    :cond_3
    :goto_0
    return-void
.end method

.method private buildBlockLevel(Ljava/lang/Long;I)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterActive(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockOptions:Ljava/util/List;

    .line 412
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockOptions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 416
    :cond_1
    const-string p1, "Select Block"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    :goto_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    invoke-static {v0, v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v0, "No block found under this district. Please choose another district."

    .line 421
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {p2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 424
    :cond_2
    iput p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockSelectedIndex:I

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockOptions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildSpinnerOptions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p2, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p2

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockSpinner:Landroid/widget/Spinner;

    .line 426
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$2;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 448
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buildDistrictLevel(I)V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 371
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->loadAllDistricts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtOptions:Ljava/util/List;

    .line 373
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "No location found. Please refresh and try again"

    .line 375
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "Select District/Corporation"

    .line 380
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 379
    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 381
    iput p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtSelectedIndex:I

    .line 382
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtOptions:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildSpinnerOptions(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtSpinner:Landroid/widget/Spinner;

    .line 383
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 401
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buildSpinnerOptions(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 846
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 847
    const-string v1, "-Select-"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 848
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 849
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildVillageNotKnownCheckboxIfConfigured()V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->skipCustomLocationMinAge:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->skipCustomLocationMaxAge:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "Exact location not known"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 241
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->isVillageNotKnownOptionApplicable()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private buildVillageSearchLevel(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V
    .locals 4

    .line 542
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildVillageNotKnownCheckboxIfConfigured()V

    .line 544
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->newVerticalContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    .line 545
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "Village/Anganwadi-Area"

    .line 548
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x32

    .line 547
    invoke-static {v0, v1, v2, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 549
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$3;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageHintView:Lcom/google/android/material/textview/MaterialTextView;

    const/high16 v1, 0x41500000    # 13.0f

    .line 577
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextSize(F)V

    .line 578
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageHintView:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "#5B7186"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 579
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageHintView:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->dpToPx(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->dpToPx(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageHintView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 581
    const-string v0, "Selected. To change it, type another village name."

    goto :goto_0

    :cond_1
    const-string v0, "Type at least 3 letters of the village name (local language or English)."

    :goto_0
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->showSelectedVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private clearFromBlockLevel()V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->blockOptions:Ljava/util/List;

    .line 820
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearVillageLevel()V

    return-void
.end method

.method private clearVillageLevel()V
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 825
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 826
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownConfirmationView:Lcom/google/android/material/textview/MaterialTextView;

    .line 827
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    .line 828
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 829
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageResultListView:Landroid/widget/ListView;

    .line 830
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNoResultView:Lcom/google/android/material/textview/MaterialTextView;

    .line 831
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageCustomButton:Landroid/widget/Button;

    .line 832
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageHintView:Lcom/google/android/material/textview/MaterialTextView;

    .line 833
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    .line 834
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 835
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameConfirmButton:Landroid/widget/Button;

    .line 836
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villagesUnderSelectedBlock:Ljava/util/List;

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allLocationsUnderSelectedBlock:Ljava/util/List;

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    .line 840
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->listener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;

    if-eqz v0, :cond_0

    .line 841
    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;->onSelectionCleared()V

    :cond_0
    return-void
.end method

.method private clearVillageResultViews()V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 749
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNoResultView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 750
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageCustomButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 751
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 752
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 753
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageCustomButton:Landroid/widget/Button;

    .line 755
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageResultListView:Landroid/widget/ListView;

    .line 756
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNoResultView:Lcom/google/android/material/textview/MaterialTextView;

    .line 757
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    .line 758
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 759
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameConfirmButton:Landroid/widget/Button;

    return-void
.end method

.method private collectAllLocationsUnderAncestor(Ljava/lang/Long;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 527
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterActive(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 528
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 529
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 530
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 535
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectAllLocationsUnderAncestor(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private collectDistrictsBelow(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->DISTRICT_TYPES:Ljava/util/List;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 481
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 485
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterActive(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 486
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 487
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectDistrictsBelow(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private collectVillagesUnderAncestor(Ljava/lang/Long;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 501
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterActive(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 502
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 503
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 508
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 510
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectVillagesUnderAncestor(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private customButtonParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 769
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    .line 771
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->dpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private dpToPx(I)I
    .locals 1

    int-to-float p1, p1

    .line 734
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private filterActive(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 358
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->isActive(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private filterVillages(Ljava/lang/String;)V
    .locals 7

    .line 597
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearVillageResultViews()V

    .line 598
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->listener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;->onSelectionCleared()V

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 604
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    .line 605
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Type at least 3 letters of the village name (local language or English)."

    goto :goto_0

    :cond_1
    const-string p1, "Keep typing - at least 3 letters are needed to search."

    :goto_0
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    return-void

    .line 613
    :cond_2
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allowCustomLocation:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allLocationsUnderSelectedBlock:Ljava/util/List;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villagesUnderSelectedBlock:Ljava/util/List;

    .line 614
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    .line 615
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 616
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getEnglishName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 617
    :cond_5
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 621
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 622
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "No Villages/Anganwadi-Area found with this name!"

    .line 623
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNoResultView:Lcom/google/android/material/textview/MaterialTextView;

    .line 624
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 625
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allowCustomLocation:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_7

    .line 626
    const-string v0, "No village matches. Check the spelling, or tap the button below to use what you typed as a new location."

    goto :goto_3

    :cond_7
    const-string v0, "No village matches. Check the spelling or try the English name."

    .line 625
    :goto_3
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    .line 627
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allowCustomLocation:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_8

    .line 628
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->addUseTypedLocationButton(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    :cond_8
    return-void

    .line 636
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 639
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    .line 640
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_a

    .line 641
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 644
    :goto_5
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 645
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getEnglishName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 648
    :cond_b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 650
    :cond_c
    new-instance v2, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/util/List;)V

    .line 668
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;I)Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageResultListView:Landroid/widget/ListView;

    .line 673
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageResultListView:Landroid/widget/ListView;

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->dpToPx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 675
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_d

    .line 677
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageResultListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x104

    .line 678
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->dpToPx(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 677
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 681
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allowCustomLocation:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_e

    .line 682
    const-string v0, "Tap a village below to select it. If yours is not listed, use the button under the list."

    goto :goto_6

    :cond_e
    const-string v0, "Tap a village below to select it."

    .line 681
    :goto_6
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    .line 685
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allowCustomLocation:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v0, :cond_f

    .line 686
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->addUseTypedLocationButton(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .line 811
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 812
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchInput:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private indexOfActualId(Ljava/util/List;Ljava/lang/Long;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;",
            "Ljava/lang/Long;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 855
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 856
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private isActive(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Z
    .locals 1

    .line 351
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActive()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isVillageNotKnownOptionApplicable()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->skipCustomLocationMinAge:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->skipCustomLocationMaxAge:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->skipCustomLocationMaxAge:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->isCurrentMemberAgeBetween(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadAllDistricts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x2

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterActive(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 467
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationWithNoParent()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterActive(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 469
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 470
    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectDistrictsBelow(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private newVerticalContainer()Landroid/widget/LinearLayout;
    .locals 4

    .line 340
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private promptForExactLocationName(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V
    .locals 4

    .line 697
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearVillageResultViews()V

    .line 698
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected area"

    .line 699
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    .line 700
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 701
    const-string v0, "This isn\'t a specific village - type the exact location name below and tap the button to use it."

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "Exact village/location name"

    .line 704
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    const/4 v3, -0x1

    .line 703
    invoke-static {v0, v1, v3, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 705
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 707
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    const-string v1, "Confirm location name"

    .line 708
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customButtonParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 707
    invoke-static {v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameConfirmButton:Landroid/widget/Button;

    .line 709
    new-instance v1, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameConfirmButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private removeVillageNotKnownConfirmation()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownConfirmationView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownConfirmationView:Lcom/google/android/material/textview/MaterialTextView;

    return-void
.end method

.method private setVillageHint(Ljava/lang/String;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageHintView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    .line 764
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showSelectedVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V
    .locals 2

    .line 804
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Selected village"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 806
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    .line 807
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showVillageNotKnownConfirmation(Ljava/lang/String;)V
    .locals 3

    .line 275
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->removeVillageNotKnownConfirmation()V

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected hierarchy"

    .line 277
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownConfirmationView:Lcom/google/android/material/textview/MaterialTextView;

    .line 280
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownConfirmationView:Lcom/google/android/material/textview/MaterialTextView;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 738
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getVillagesUnderSelectedBlock()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villagesUnderSelectedBlock:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$addUseTypedLocationButton$3$com-argusoft-sewa-android-app-component-LocationDrillDownComponent(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 786
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->hideKeyboard()V

    .line 787
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearVillageResultViews()V

    .line 790
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p3

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New location (not in list)"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 792
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 793
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    .line 794
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 795
    const-string p3, "Your typed location is saved. To change it, type another name."

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    .line 796
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customLocationListener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;

    if-eqz p3, :cond_1

    .line 797
    invoke-interface {p3, p1, p2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;->onCustomLocationEntered(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$buildVillageNotKnownCheckboxIfConfigured$0$com-argusoft-sewa-android-app-component-LocationDrillDownComponent(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 242
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->applyVillageNotKnown(Z)V

    return-void
.end method

.method synthetic lambda$filterVillages$1$com-argusoft-sewa-android-app-component-LocationDrillDownComponent(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 651
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchResults:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 652
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 653
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->hideKeyboard()V

    .line 654
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearVillageResultViews()V

    .line 656
    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->showSelectedVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    .line 657
    const-string p3, "Selected. To change it, type another village name."

    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    .line 658
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->listener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;

    if-eqz p3, :cond_1

    .line 659
    invoke-interface {p3, p2, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$VillageSelectionListener;->onVillageSelected(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_0
    iget-boolean p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allowCustomLocation:Z

    if-eqz p3, :cond_1

    .line 665
    invoke-direct {p0, p2, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->promptForExactLocationName(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$promptForExactLocationName$2$com-argusoft-sewa-android-app-component-LocationDrillDownComponent(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Landroid/view/View;)V
    .locals 2

    .line 710
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 711
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 712
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "Please enter the location name"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 716
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->hideKeyboard()V

    .line 717
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->clearVillageResultViews()V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New location (not in list)"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 722
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p3

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedVillageView:Lcom/google/android/material/textview/MaterialTextView;

    .line 724
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageSearchAreaContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 725
    const-string p1, "Your typed location is saved. To change it, type another name."

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->setVillageHint(Ljava/lang/String;)V

    .line 726
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customLocationListener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;

    if-eqz p1, :cond_3

    .line 727
    invoke-interface {p1, p2, p3}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;->onCustomLocationEntered(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public preselectVillage(Ljava/lang/Long;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationMasterBeanByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 894
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 895
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationMasterBeanByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 899
    :cond_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 900
    :cond_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->DISTRICT_TYPES:Ljava/util/List;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_0

    :cond_5
    :goto_1
    move-object v1, v2

    move-object v3, v1

    :cond_6
    :goto_2
    if-eqz v1, :cond_d

    if-nez v3, :cond_7

    goto/16 :goto_5

    .line 912
    :cond_7
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->districtOptions:Ljava/util/List;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->indexOfActualId(Ljava/util/List;Ljava/lang/Long;)I

    move-result v4

    if-gez v4, :cond_8

    return v0

    :cond_8
    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 916
    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildDistrictLevel(I)V

    .line 918
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 919
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->filterActive(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 920
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->indexOfActualId(Ljava/util/List;Ljava/lang/Long;)I

    move-result v6

    if-gez v6, :cond_9

    return v0

    .line 924
    :cond_9
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v3, v7}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildBlockLevel(Ljava/lang/Long;I)V

    .line 925
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->selectedBlock:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 927
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectVillagesUnderAncestor(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villagesUnderSelectedBlock:Ljava/util/List;

    .line 928
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->collectAllLocationsUnderAncestor(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allLocationsUnderSelectedBlock:Ljava/util/List;

    .line 929
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 931
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    move-object p1, v2

    .line 932
    :goto_4
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->buildVillageSearchLevel(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    if-eqz v1, :cond_c

    return v5

    .line 936
    :cond_c
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->isVillageNotKnownOptionApplicable()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-eqz p1, :cond_d

    .line 939
    invoke-virtual {p1, v5}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    return v5

    :cond_d
    :goto_5
    return v0
.end method

.method public refreshForAgeChange()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->isVillageNotKnownOptionApplicable()Z

    move-result v0

    .line 313
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setVisibility(I)V

    return-void

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->villageNotKnownCheckBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setVisibility(I)V

    return-void
.end method

.method public setAllowCustomLocation(ZLcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->allowCustomLocation:Z

    .line 206
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->customLocationListener:Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent$CustomLocationListener;

    return-void
.end method

.method public setSkipCustomLocationAgeRange(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->skipCustomLocationMinAge:Ljava/lang/Integer;

    .line 212
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationDrillDownComponent;->skipCustomLocationMaxAge:Ljava/lang/Integer;

    return-void
.end method
