.class public Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;
.super Landroid/widget/LinearLayout;
.source "LocationBeanAllAreaSelectionComponent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;
    }
.end annotation


# instance fields
.field private final bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
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
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private locationSelectionInterface:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;

.field private final locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

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

.field private selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

.field private final showAllOption:Z

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
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationMap:Ljava/util/Map;

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->spinnerMap:Ljava/util/Map;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    .line 58
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    .line 59
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationSelectionInterface:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;

    .line 60
    iput-boolean p4, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->showAllOption:Z

    .line 61
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getLocationSelectionView()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 62
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getLocationSelectionView()Landroid/widget/LinearLayout;
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationBeansAssignedToUser()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationBeans:Ljava/util/List;

    .line 94
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No location found. Please refresh and try again"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->addLocationSpinner(Landroid/widget/LinearLayout;)V

    :goto_0
    return-object v0
.end method

.method private removeSpinners(Ljava/lang/Integer;)V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationMap:Ljava/util/Map;

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

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 203
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->spinnerMap:Ljava/util/Map;

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

.method private withAllOption(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->showAllOption:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;-><init>()V

    const/4 v2, -0x2

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setActualID(Ljava/lang/Integer;)V

    .line 79
    const-string v2, "All"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setName(Ljava/lang/String;)V

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setLevel(Ljava/lang/Integer;)V

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getParent()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setParent(Ljava/lang/Integer;)V

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->setType(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public addLocationSpinner(Landroid/widget/LinearLayout;)V
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->withAllOption(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationBeans:Ljava/util/List;

    const/4 v1, 0x0

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getLevel()Ljava/lang/Integer;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 109
    const-string v4, "-Select-"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 111
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 112
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getParent()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 115
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationBeanByActualId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LocationBean;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 120
    :cond_0
    const-string v6, ""

    :goto_1
    sget-object v7, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Asha"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "All"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    goto :goto_2

    .line 123
    :cond_1
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v2, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v2

    .line 129
    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationBeans:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Select "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 133
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->spinnerMap:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSelectedLocation()Lcom/argusoft/sewa/android/app/model/LocationBean;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    return-object v0
.end method

.method public getSelectedLocationIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "All"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 216
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 218
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getParent()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    .line 144
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->setLocationSelectionInterface()V

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

    return-void

    .line 150
    :cond_0
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-eqz p4, :cond_5

    .line 151
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 p5, 0x1

    sub-int/2addr p3, p5

    .line 157
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 159
    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationBeansByParent(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 161
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 168
    :cond_2
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 170
    invoke-direct {p0, p4}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->withAllOption(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 172
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationMap:Ljava/util/Map;

    add-int/lit8 p4, p1, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

    .line 175
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p5

    new-array p1, p1, [Ljava/lang/String;

    .line 176
    const-string p3, "-Select-"

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 178
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 179
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/2addr v1, p5

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, v0, p4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object p1

    .line 183
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 185
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->getLocationTypeNameByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Select "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    .line 187
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->spinnerMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p3, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectTextViewMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->setLocationSelectionInterface()V

    return-void

    .line 162
    :cond_4
    :goto_1
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->selectedLocation:Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 163
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->setLocationSelectionInterface()V

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

    return-void

    .line 152
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->setLocationSelectionInterface()V

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->removeSpinners(Ljava/lang/Integer;)V

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

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->locationSelectionInterface:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;->onLocationSelect(Ljava/util/List;)V

    :cond_0
    return-void
.end method
