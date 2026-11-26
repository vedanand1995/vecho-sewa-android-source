.class public Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;
.super Landroid/widget/LinearLayout;
.source "LocationSelectionFromDistrictComponent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field private final locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

.field private final mapType:Ljava/lang/reflect/Type;

.field private final maxLevel:Ljava/lang/Integer;

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
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Ljava/lang/Integer;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationMap:Ljava/util/Map;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->spinnerMap:Ljava/util/Map;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectTextViewMap:Ljava/util/Map;

    .line 42
    new-instance p1, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent$1;-><init>(Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;)V

    .line 43
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent$1;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->mapType:Ljava/lang/reflect/Type;

    .line 47
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 48
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->maxLevel:Ljava/lang/Integer;

    .line 49
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->getLocationSelectionView()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 50
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getLocationSelectionView()Landroid/widget/LinearLayout;
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationBeans:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const-string v2, "D"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v2, "Z"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v2, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationByTypesAndAssignedLocation(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No location found. Please refresh and try again"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->clearLocationMasterTable()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->addLocationSpinner(Landroid/widget/LinearLayout;)V

    :goto_0
    return-object v0
.end method

.method private removeSpinners(Ljava/lang/Integer;)V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationMap:Ljava/util/Map;

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

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 172
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->spinnerMap:Ljava/util/Map;

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
    .locals 9

    .line 74
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    const-string v2, "-Select-"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 77
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 78
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 80
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->mapType:Ljava/lang/reflect/Type;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 81
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v4, v5

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationLevelByType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v0, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v2, v4}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Select "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->spinnerMap:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSelectedLocation()Lcom/argusoft/sewa/android/app/model/LocationMasterBean;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    .line 108
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->removeSpinners(Ljava/lang/Integer;)V

    return-void

    .line 113
    :cond_0
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-eqz p4, :cond_a

    .line 114
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 p5, 0x1

    sub-int/2addr p3, p5

    .line 118
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 121
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->maxLevel:Ljava/lang/Integer;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ge p1, p4, :cond_2

    goto :goto_0

    :cond_2
    move-object p4, p2

    goto :goto_1

    .line 122
    :cond_3
    :goto_0
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getActualID()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByParent(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_9

    .line 125
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 131
    :cond_4
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 132
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationMap:Ljava/util/Map;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->removeSpinners(Ljava/lang/Integer;)V

    .line 136
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p5

    new-array p1, p1, [Ljava/lang/String;

    .line 137
    const-string p3, "-Select-"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, p1, v1

    .line 139
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 140
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object p4

    .line 141
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 142
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getFhwDetailString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->mapType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 143
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "name"

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p5

    goto :goto_3

    .line 146
    :cond_5
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p5

    :goto_3
    add-int/lit8 p5, p5, 0x1

    move-object p2, p4

    goto :goto_2

    .line 150
    :cond_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 153
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {p3, p2}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 154
    const-string p3, "null"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 155
    :cond_7
    const-string p2, ""

    .line 157
    :cond_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Select "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    .line 158
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->spinnerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 126
    :cond_9
    :goto_4
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationMasterBean;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationSelectionFromDistrictComponent;->removeSpinners(Ljava/lang/Integer;)V

    :cond_a
    :goto_5
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
