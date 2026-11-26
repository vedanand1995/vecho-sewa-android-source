.class public Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "ChlorinationStatusActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ANSWER_YES:Ljava/lang/String; = "1"

.field private static final DELAY:J = 0x1f4L

.field private static final REQUEST_CODE_FOR_CHLORINATION_STATUS:I = 0x30a

.field private static final TAG:Ljava/lang/String; = "ChlorinationStatusActivity"


# instance fields
.field private final areaHierarchies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private areaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;"
        }
    .end annotation
.end field

.field private areaListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private listTitleView:Lcom/google/android/material/textview/MaterialTextView;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private noAreaAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private searchString:Ljava/lang/CharSequence;

.field private selectedArea:Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaHierarchies:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;)Ljava/util/Timer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method private applyFiledStatusToArea()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "chlorineIssueResolved"

    .line 360
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 362
    :try_start_0
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->getFiledServiceDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->setLastServiceDate(Ljava/util/Date;)V

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 372
    const-string v2, "ChlorinationStatusActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    return-void
.end method

.method private areaNameOf(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;
    .locals 1

    .line 247
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getAreaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getAreaName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private filterAreas(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    .line 167
    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->getAreaHierarchy(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAreaHierarchy(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;
    .locals 5

    .line 224
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaNameOf(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaHierarchies:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 233
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 237
    const-string v3, "ChlorinationStatusActivity"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    :cond_2
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaNameOf(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;

    move-result-object v1

    .line 242
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaHierarchies:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getAreaItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    .line 210
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v3, "ASHA Area"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getAreaName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->getAreaHierarchy(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getFiledServiceDate()Ljava/util/Date;
    .locals 5

    .line 382
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "serviceDate"

    .line 383
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 390
    const-string v2, "ChlorinationStatusActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method private initView()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->showProcessDialog()V

    const/4 v0, 0x0

    .line 120
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 121
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 122
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 123
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 124
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v2, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->setSubTitle(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->addSearchTextBox()V

    .line 128
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->retrieveAreas(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onAreaSelected(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)V
    .locals 7

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->showProcessDialog()V

    .line 252
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->selectedArea:Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getLocationId()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForVBDSForms(Ljava/lang/Integer;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 269
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getWaterQualityId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    const-string v2, "waterQualityId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getLastServiceDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 274
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getLastServiceDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v2, "lastServiceDate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getAreaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "nameForLog"

    .line 278
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;->getAreaName()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v0, "entity"

    const-string v1, "VBDS_CHLORINATION_STATUS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x30a

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 284
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->hideProcessDialog()V

    return-void

    .line 256
    :catch_0
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;)V

    .line 260
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "Some error occurred. Please refresh and try again"

    .line 261
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, -0x69

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 262
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 263
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->hideProcessDialog()V

    return-void
.end method

.method private queryAreas(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;",
            ">;"
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->chlorinationStatusBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->filterAreas(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 148
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 152
    const-string v0, "ChlorinationStatusActivity"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public addAreaListScreen(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->noAreaAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "Select an area to fill the chlorination status"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    const/16 v1, 0x32

    const/4 v2, 0x0

    .line 187
    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;)V

    .line 192
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_info:I

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 196
    :cond_0
    const-string p1, "No area is pending for chlorination."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->noAreaAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 197
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x1e

    .line 289
    const-string v2, "Area or Village Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$addAreaListScreen$1$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->onAreaSelected(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)V

    return-void
.end method

.method synthetic lambda$onAreaSelected$2$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity(Landroid/view/View;)V
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 258
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$onBackPressed$3$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity(Landroid/view/View;)V
    .locals 1

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 409
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 410
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->navigateToHomeScreen(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->finish()V

    goto :goto_0

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$queryAreas$0$com-argusoft-sewa-android-app-activity-ChlorinationStatusActivity(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)I
    .locals 1

    .line 149
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->getAreaHierarchy(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->getAreaHierarchy(Lcom/argusoft/sewa/android/app/model/ChlorinationStatusBean;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x30a

    if-ne p1, p3, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->showProcessDialog()V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->applyFiledStatusToArea()V

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->searchString:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->retrieveAreas(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->navigateToHomeScreen(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->hideProcessDialog()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 407
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;)V

    .line 417
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Chlorination Status?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 420
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 397
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->navigateToHomeScreen(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->setContentView(Landroid/view/View;)V

    .line 108
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->finish()V

    .line 115
    :cond_1
    const-string v0, "Chlorination Status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveAreas(Ljava/lang/CharSequence;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->searchString:Ljava/lang/CharSequence;

    .line 134
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->queryAreas(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->areaList:Ljava/util/List;

    .line 137
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->getAreaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/ChlorinationStatusActivity;->addAreaListScreen(Ljava/util/List;)V

    return-void
.end method
