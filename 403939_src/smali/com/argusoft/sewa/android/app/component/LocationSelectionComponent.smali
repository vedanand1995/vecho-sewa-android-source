.class public Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;
.super Landroid/widget/LinearLayout;
.source "LocationSelectionComponent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$LocationSelectionInterface;
    }
.end annotation


# instance fields
.field private final bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end field

.field private final locationMap:Ljava/util/Map;
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

.field private locationSelectionInterface:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$LocationSelectionInterface;

.field private final locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

.field private mapType:Ljava/lang/reflect/Type;

.field private final maxLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectTextViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/textview/MaterialTextView;",
            ">;"
        }
    .end annotation
.end field

.field private selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

.field private final spinnerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/core/LocationMasterService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationMap:Ljava/util/Map;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->spinnerMap:Ljava/util/Map;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    .line 44
    new-instance p1, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;)V

    .line 45
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->mapType:Ljava/lang/reflect/Type;

    .line 49
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 50
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->maxLevel:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getLocationSelectionView()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Ljava/util/List;Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$LocationSelectionInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/core/LocationMasterService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$LocationSelectionInterface;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationMap:Ljava/util/Map;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->spinnerMap:Ljava/util/Map;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    .line 44
    new-instance p1, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;)V

    .line 45
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->mapType:Ljava/lang/reflect/Type;

    .line 57
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 58
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->maxLevel:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getLocationSelectionView()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 60
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationSelectionInterface:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$LocationSelectionInterface;

    .line 61
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/argusoft/sewa/android/app/core/LocationMasterService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationMap:Ljava/util/Map;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->spinnerMap:Ljava/util/Map;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    .line 44
    new-instance p1, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;)V

    .line 45
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->mapType:Ljava/lang/reflect/Type;

    .line 66
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 67
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->maxLevel:Ljava/util/List;

    if-eqz p4, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getLocationSelectionViewFromStart()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getLocationSelectionView()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getLocationSelectionView()Landroid/widget/LinearLayout;
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMastersAssignedToUser()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationBeans:Ljava/util/List;

    .line 80
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No location found. Please refresh and try again"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->clearLocationMasterTable()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->addLocationSpinner(Landroid/widget/LinearLayout;)V

    :goto_0
    return-object v0
.end method

.method private getLocationSelectionViewFromStart()Landroid/widget/LinearLayout;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationWithNoParent()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationBeans:Ljava/util/List;

    .line 93
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No location found. Please refresh and try again"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->clearLocationMasterTable()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->addLocationSpinner(Landroid/widget/LinearLayout;)V

    :goto_0
    return-object v0
.end method

.method private removeSpinners(Ljava/lang/Integer;)V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationMap:Ljava/util/Map;

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

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 218
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 219
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->spinnerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addLocationSpinner(Landroid/widget/LinearLayout;)V
    .locals 12

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 106
    const-string v2, "-Select-"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 108
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 109
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getParent()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 114
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationBeanByActualId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LocationBean;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 116
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 120
    :cond_0
    const-string v7, ""

    :goto_1
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " - "

    if-eqz v8, :cond_1

    .line 121
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->mapType:Ljava/lang/reflect/Type;

    invoke-virtual {v8, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 122
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "name"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    goto :goto_2

    .line 125
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v5, v6

    goto/16 :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationLevelByType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v2, v0, v3, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v2, v5}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Select "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v4, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->spinnerMap:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSelectedLocation()Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object v0
.end method

.method public getSelectedLocationIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    .line 152
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 153
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->setLocationSelectionInterface()V

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

    return-void

    .line 158
    :cond_0
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-eqz p4, :cond_8

    .line 159
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 p5, 0x1

    sub-int/2addr p3, p5

    .line 165
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 168
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->maxLevel:Ljava/util/List;

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->maxLevel:Ljava/util/List;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    move-object p4, p2

    goto :goto_1

    .line 169
    :cond_3
    :goto_0
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_7

    .line 172
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 179
    :cond_4
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 180
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationMap:Ljava/util/Map;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

    .line 184
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p5

    new-array p1, p1, [Ljava/lang/String;

    .line 185
    const-string p3, "-Select-"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, p1, v1

    .line 187
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object p4, p2

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 188
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 190
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->mapType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 191
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " - "

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "name"

    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p5

    goto :goto_3

    .line 194
    :cond_5
    invoke-virtual {p4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p5

    :goto_3
    add-int/lit8 p5, p5, 0x1

    move-object p4, v2

    goto :goto_2

    .line 198
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    .line 199
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {p3, p4}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 202
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "Select "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p2, p4, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    .line 203
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->spinnerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->setLocationSelectionInterface()V

    return-void

    .line 173
    :cond_7
    :goto_4
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 174
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->setLocationSelectionInterface()V

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

    return-void

    .line 160
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->setLocationSelectionInterface()V

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

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

.method public setLocationSelectionInterface()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->locationSelectionInterface:Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$LocationSelectionInterface;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent;->getSelectedLocation()Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionComponent$LocationSelectionInterface;->onLocationSelect(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)V

    :cond_0
    return-void
.end method
