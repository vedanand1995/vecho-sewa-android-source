.class public Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WorkRegisterAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AREA_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"

.field private static final DATE_SELECTION_SCREEN:Ljava/lang/String; = "dateSelectionScreen"

.field private static final LIMIT:I = 0x64

.field private static final TABLE_SCREEN:Ljava/lang/String; = "tableScreen"


# instance fields
.field private areaId:Ljava/lang/String;

.field private areaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private areaSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private fromDate:Landroid/widget/LinearLayout;

.field private fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadMore:Landroid/widget/Button;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private numberOfRows:I

.field private screen:Ljava/lang/String;

.field private sdf:Ljava/text/SimpleDateFormat;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private tableLayout:Landroid/widget/TableLayout;

.field private toDate:Landroid/widget/LinearLayout;

.field private toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->headNames:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)Landroid/widget/Button;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    return p0
.end method

.method private addLoadMoreButton()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    const-string v1, "Load more"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x65

    invoke-static {v0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButton(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/LinearLayout$LayoutParams;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    const/16 v1, 0x11

    .line 413
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 414
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTableRow(Landroid/widget/TableLayout;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 369
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 371
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf

    const/16 v3, 0xa

    .line 372
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 373
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 374
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 376
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 378
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->headNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    new-instance v4, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    .line 383
    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 384
    invoke-virtual {v4, v3, v3, v3, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 385
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$5;

    invoke-direct {v2, p0, p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;Ljava/util/Map;)V

    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 404
    :cond_2
    invoke-virtual {p1, v1, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->showProcessDialog()V

    .line 115
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 116
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 117
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->showNotOnlineMessage()V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->setBodyDetail()V

    return-void
.end method


# virtual methods
.method public addAreaSelectionSpinner()V
    .locals 6

    .line 210
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->screen:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 216
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 221
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Area"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 358
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 359
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v2, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addTableRow(Landroid/widget/TableLayout;ILjava/util/Map;)V

    .line 360
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    goto :goto_0

    .line 362
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addLoadMoreButton()V

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addDateSelectionScreen()V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 231
    const-string v0, "dateSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v3, "isFutureDate"

    const-string v4, "Invalid Date"

    invoke-direct {v2, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDate:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 239
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 240
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    const/16 v4, 0x3e9

    invoke-static {v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDate:Landroid/widget/LinearLayout;

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDate:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 243
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 244
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    const/16 v3, 0x3ea

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDate:Landroid/widget/LinearLayout;

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select from date"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDate:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select to date"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public createTableLayout(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 326
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->tableLayout:Landroid/widget/TableLayout;

    const/16 v1, 0xa

    .line 327
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->tableLayout:Landroid/widget/TableLayout;

    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf

    .line 331
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 332
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 333
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 335
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 337
    :goto_0
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 340
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 341
    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 342
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 343
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 345
    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->tableLayout:Landroid/widget/TableLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 349
    new-instance p1, Landroid/widget/HorizontalScrollView;

    invoke-direct {p1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 350
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->showNotOnlineMessage()V

    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "tableScreen"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "dateSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 166
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 140
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addDateSelectionScreen()V

    .line 141
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 143
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaId:Ljava/lang/String;

    goto :goto_1

    .line 150
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_5

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    const-string v0, "Please select from date"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_6

    .line 155
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    const-string v0, "Please select to date"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_6
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->screen:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->showProcessDialog()V

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 p1, 0x64

    .line 162
    invoke-virtual {p0, v2, p1, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->retrieveData(ZII)V

    .line 163
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4d008476 -> :sswitch_2
        -0x13a69534 -> :sswitch_1
        0xec655da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 430
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 431
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 436
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 437
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tableScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "dateSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const-string p1, "Next"

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 452
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addDateSelectionScreen()V

    .line 453
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    goto :goto_1

    .line 439
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 442
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 443
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 447
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addAreaSelectionSpinner()V

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return v1

    :cond_6
    return v2

    .line 432
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d008476 -> :sswitch_2
        -0x13a69534 -> :sswitch_1
        0xec655da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 99
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->setContentView(Landroid/view/View;)V

    .line 103
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->finish()V

    .line 110
    :cond_1
    const-string v0, "Work Register"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveData(ZII)V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V

    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 270
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 271
    const-string v2, "location_id"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v2, "from_date"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v2, "to_date"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v2, "limit"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string p2, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance p3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v2, "mob_asha_work_register_detail"

    const/4 v3, 0x0

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p3, v2, v0, v1, v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 277
    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 279
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 280
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 281
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 282
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->headNames:Ljava/util/List;

    .line 284
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 286
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->headNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 290
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->headNames:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->createTableLayout(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 293
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V

    goto :goto_1

    .line 296
    :cond_6
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->loadMore:Landroid/widget/Button;

    if-eqz p2, :cond_7

    .line 297
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$3;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)V

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 306
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->numberOfRows:I

    .line 307
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$4;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->hideProcessDialog()V

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addDateSelectionScreen()V

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaId:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->areaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->addAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 5

    .line 188
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)V

    .line 195
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 196
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 198
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterAshaActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
