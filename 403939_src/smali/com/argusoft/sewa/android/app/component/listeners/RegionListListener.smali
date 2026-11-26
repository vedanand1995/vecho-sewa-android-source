.class public Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;
.super Ljava/lang/Object;
.source "RegionListListener.java"


# instance fields
.field private blockSpinner:Landroid/widget/Spinner;

.field private final context:Landroid/content/Context;

.field private districtSpinner:Landroid/widget/Spinner;

.field private hierarchyLayout:Landroid/widget/LinearLayout;

.field private hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private phcSpinner:Landroid/widget/Spinner;

.field private queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

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

.field private subCenterSpinner:Landroid/widget/Spinner;

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectedLocationId:Ljava/lang/Long;

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Ljava/util/Map;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->villageSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectedLocationId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addDistrictSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addBlockSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addPhcSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addSubCenterSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addVillageSpinner(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/LinearLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->districtSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->blockSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->phcSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;)Landroid/widget/Spinner;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->subCenterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method private addBlockSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 193
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x3

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 198
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 200
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 201
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

    .line 202
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 203
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 204
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 212
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->blockSpinner:Landroid/widget/Spinner;

    .line 214
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$3;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$3;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "Zone"

    const-string v2, "Z"

    const-string v4, "B"

    const-string v5, "Block"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 247
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 248
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 254
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 259
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 260
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 261
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v7, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 263
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 264
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 267
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 269
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectBlockQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->blockSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDistrictSpinner(Ljava/lang/Long;)V
    .locals 7

    .line 138
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 143
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 144
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

    .line 145
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/2addr v5, v2

    goto :goto_0

    .line 149
    :cond_0
    const-string v2, "No location available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v2, v0, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->districtSpinner:Landroid/widget/Spinner;

    .line 154
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$2;

    invoke-direct {v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$2;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 186
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    const-string v0, "District/Corporation"

    .line 187
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-static {v1, v1, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectDistrictQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->districtSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPhcSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 274
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x4

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 279
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "-Select-"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 281
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 282
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

    .line 283
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    .line 284
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 285
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v3, v1, v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->phcSpinner:Landroid/widget/Spinner;

    .line 295
    new-instance v3, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$4;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$4;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "UHC"

    const-string v3, "P"

    const-string v4, "U"

    const-string v6, "PHC"

    const/4 v7, 0x0

    if-le p1, v2, :cond_7

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 326
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 330
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v2, v8, :cond_5

    .line 333
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 338
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 339
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 340
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 342
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 343
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 346
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 348
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectPhcQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->phcSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRegionSpinner()V
    .locals 7

    .line 80
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 85
    const-string v3, "-Select-"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 86
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

    .line 87
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/2addr v5, v1

    goto :goto_0

    .line 91
    :cond_0
    const-string v3, "No location available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v3, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    const-string v2, "Region"

    .line 132
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 131
    invoke-static {v3, v3, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSubCenterSpinner(Ljava/lang/Long;)V
    .locals 10

    .line 353
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x5

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 358
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 360
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 361
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

    .line 362
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 363
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 364
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 369
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 372
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->subCenterSpinner:Landroid/widget/Spinner;

    .line 374
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$5;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$5;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 398
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "ANM Area"

    const-string v2, "SC"

    const-string v4, "ANM"

    const-string v5, "Subcenter"

    const/4 v7, 0x0

    if-le p1, v3, :cond_7

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 402
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 403
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 406
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 409
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v7, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 414
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 415
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 416
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v7, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 418
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 419
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 422
    :cond_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v7, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 424
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectSubcenterQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->subCenterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addVillageSpinner(Ljava/lang/Long;)V
    .locals 12

    .line 429
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->locationMasterService:Lcom/argusoft/sewa/android/app/core/LocationMasterService;

    const/4 v1, 0x6

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/core/LocationMasterService;->retrieveLocationMasterBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 434
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "-Select-"

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 436
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 437
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

    .line 438
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 439
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 440
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/LocationMasterBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 445
    :cond_1
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 448
    :cond_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v4, v2, v6, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->villageSpinner:Landroid/widget/Spinner;

    .line 450
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$6;

    invoke-direct {v2, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener$6;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 471
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

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 475
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 476
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 479
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 482
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_6

    .line 485
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, v9, v0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 490
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 491
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 492
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v9, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 494
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 495
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v9, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 497
    :cond_a
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 498
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v9, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    goto :goto_2

    .line 501
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v9, p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    .line 503
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->selectVillageQues:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addHierarchyLayoutForSchool()Landroid/widget/LinearLayout;
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    const-string v1, "Select hierarchy for School"

    .line 68
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    invoke-static {v2, v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    .line 74
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->addRegionSpinner()V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/RegionListListener;->hierarchyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method
