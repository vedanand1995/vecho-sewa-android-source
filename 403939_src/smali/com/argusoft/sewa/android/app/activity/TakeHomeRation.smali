.class public Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "TakeHomeRation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final CHILD_SELECTION_SCREEN:Ljava/lang/String; = "childSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;


# instance fields
.field private ashaAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private ashaAreaSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private limit:I

.field memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private nextButton:Landroid/widget/Button;

.field private noTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:I

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchBox:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchstring:Ljava/lang/CharSequence;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedChildIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field public techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private titleTextView:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->timer:Ljava/util/Timer;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    const/16 v0, 0x1e

    .line 100
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->limit:I

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedChildIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;)Ljava/util/Timer;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedChildIndex:I

    return p1
.end method

.method private initView()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->showProcessDialog()V

    .line 124
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->globalPanel:Landroid/widget/LinearLayout;

    .line 125
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 126
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->nextButton:Landroid/widget/Button;

    .line 129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setBodyDetail()V

    return-void
.end method

.method private nextButtonPressed()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "childSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedChildIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 178
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->startDynamicFormActivity()V

    goto :goto_1

    .line 180
    :cond_2
    const-string v0, "Please select child"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->navigateToHomeScreen(Z)V

    return-void

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->showProcessDialog()V

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 161
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 162
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedAshaArea:Ljava/lang/Integer;

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 169
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->retrieveChildrens(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method private setTextInList(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 312
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v0, 0xb

    const/4 v4, 0x0

    .line 314
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 315
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 316
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 317
    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 319
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 320
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 322
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v11, "actualId"

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 327
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    :cond_0
    :goto_1
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    const-class v11, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v0, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 334
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastTHRServiceDate()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getLastTHRServiceDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    :goto_2
    if-nez v9, :cond_2

    .line 339
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v14

    .line 340
    const-string v10, "Not available"

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v12, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 339
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 342
    :cond_2
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v14

    const-string v10, "Mother"

    .line 343
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v16

    const/4 v12, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 346
    :cond_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 349
    :cond_4
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v6
.end method

.method private startDynamicFormActivity()V
    .locals 8

    .line 401
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->showProcessDialog()V

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 404
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v3, "AWW_THR"

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    .line 405
    const-string v1, "entity"

    const-string v2, "AWW_THR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->REQUEST_CODE_FOR_MY_PEOPLE_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->startActivityForResult(Landroid/content/Intent;I)V

    .line 407
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 243
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setSubTitle(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 250
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 253
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 254
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedAshaArea:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 257
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 258
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 259
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->hideProcessDialog()V

    return-void
.end method

.method public addChildsOfAgeBetween6MonthsTo3YearsList(Z)V
    .locals 4

    .line 279
    const-string v0, "childSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setSubTitle(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 282
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->noTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const-string v0, "Select a Child"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 287
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setTextInList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$2;-><init>(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;)V

    .line 296
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 297
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    :cond_0
    const-string v0, "No children in your area with age between 6 months to 3 years"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->noTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 301
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->hideProcessDialog()V

    :cond_1
    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 190
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    .line 191
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->searchBox:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$1;-><init>(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 412
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 413
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->showProcessDialog()V

    .line 414
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 416
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedChildIndex:I

    .line 417
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->addSearchTextBox()V

    const/4 p1, 0x0

    .line 418
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->retrieveChildrens(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 381
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation$3;-><init>(Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;)V

    .line 394
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Take Home Ration?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->nextButtonPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 110
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedAshaArea:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->searchstring:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->limit:I

    int-to-long v3, v3

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->offset:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBetween6MonthsTo3YearsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 429
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->offset:I

    .line 430
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 423
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 435
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 437
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setTextInList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 446
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 447
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 452
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 453
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "childSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->addAshaAreaSelectionSpinner()V

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->navigateToHomeScreen(Z)V

    :goto_0
    return v1

    :cond_3
    return v2

    .line 448
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setContentView(Landroid/view/View;)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v0

    const-string v1, "AWW_THR"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveChildrens(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 9

    .line 269
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->searchstring:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->offset:I

    const/4 v1, -0x1

    .line 271
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedChildIndex:I

    .line 272
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedAshaArea:Ljava/lang/Integer;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->limit:I

    int-to-long v5, v1

    int-to-long v7, v0

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBetween6MonthsTo3YearsByAshaArea(Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->memberList:Ljava/util/List;

    .line 273
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->offset:I

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->limit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->offset:I

    .line 274
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->addChildsOfAgeBetween6MonthsTo3YearsList(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->selectedAshaArea:Ljava/lang/Integer;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v2, v0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->retrieveChildrens(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/TakeHomeRation;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setRadioButtonColorFromSyncStatus(Landroid/widget/RadioButton;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 3

    .line 355
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSyncStatus()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getSyncStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "R"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 364
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/high16 p2, -0x10000

    .line 361
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const p2, -0xffff01

    .line 358
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 367
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 368
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 369
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p2, -0x100

    .line 370
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpNegativeQues()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getCpState()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 372
    const-string p2, "#20aa0b"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 374
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_5
    :goto_0
    return-void
.end method
