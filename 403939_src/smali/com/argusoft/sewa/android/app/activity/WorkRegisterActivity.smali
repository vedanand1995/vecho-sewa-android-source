.class public Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WorkRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATE_SELECTION_SCREEN:Ljava/lang/String; = "dateSelectionScreen"

.field private static final LIMIT:I = 0x64

.field private static final TABLE_SCREEN:Ljava/lang/String; = "tableScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
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

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationId:Ljava/lang/String;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private numberOfRows:I

.field private screen:Ljava/lang/String;

.field private final sdf:Ljava/text/SimpleDateFormat;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private tableLayout:Landroid/widget/TableLayout;

.field private toDate:Landroid/widget/LinearLayout;

.field private toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->headNames:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)Landroid/widget/Button;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    return p0
.end method

.method private addDateSelectionScreen()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 268
    const-string v0, "dateSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->screen:Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v2, "isFutureDate"

    const-string v3, "Invalid Date"

    invoke-direct {v1, v2, v3}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDate:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 277
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    const/16 v3, 0x3e9

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDate:Landroid/widget/LinearLayout;

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDate:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 280
    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    const/16 v2, 0x3ea

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDate:Landroid/widget/LinearLayout;

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select from date"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select to date"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    return-void
.end method

.method private addLoadMoreButton()V
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

    const/16 v1, 0x11

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 453
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

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

    .line 408
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 410
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf

    const/16 v3, 0xa

    .line 411
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 412
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 413
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 415
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 417
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->headNames:Ljava/util/List;

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

    .line 421
    new-instance v4, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    .line 422
    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 423
    invoke-virtual {v4, v3, v3, v3, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 424
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 426
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$6;

    invoke-direct {v2, p0, p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;Ljava/util/Map;)V

    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 443
    :cond_2
    invoke-virtual {p1, v1, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private addVillageSelectionSpinner()V
    .locals 5

    .line 249
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->screen:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

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

    .line 254
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->villageSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 259
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->showProcessDialog()V

    .line 114
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 115
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->setContentView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 117
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->nextButton:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->showNotOnlineMessage()V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->setBodyDetail()V

    return-void
.end method


# virtual methods
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

    .line 396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 397
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 398
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v2, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addTableRow(Landroid/widget/TableLayout;ILjava/util/Map;)V

    .line 399
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addLoadMoreButton()V

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    return-void
.end method

.method public checkServerIsAlive()Z
    .locals 4

    const/4 v0, 0x0

    .line 164
    :try_start_0
    new-instance v1, Lcom/argusoft/sewa/android/app/asynctask/ServerIsAliveAsyncTask;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/asynctask/ServerIsAliveAsyncTask;-><init>(Lcom/argusoft/sewa/android/app/core/SewaService;)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/asynctask/ServerIsAliveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 165
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    const-string v3, "The server is temporarily down or not working"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 170
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    return v0
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

    .line 365
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->tableLayout:Landroid/widget/TableLayout;

    const/16 v1, 0xa

    .line 366
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->tableLayout:Landroid/widget/TableLayout;

    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf

    .line 370
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 371
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 372
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 374
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 376
    :goto_0
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 379
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 380
    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 381
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 382
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 384
    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->tableLayout:Landroid/widget/TableLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 388
    new-instance p1, Landroid/widget/HorizontalScrollView;

    invoke-direct {p1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 389
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 390
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->showNotOnlineMessage()V

    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_5

    .line 137
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tableScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "dateSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 154
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 139
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addDateSelectionScreen()V

    .line 140
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 142
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationId:Ljava/lang/String;

    goto :goto_1

    .line 149
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->validateDate()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->checkServerIsAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->setTableScreen()V

    :cond_5
    :goto_1
    return-void

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 469
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 470
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 475
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 476
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->screen:Ljava/lang/String;

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

    .line 491
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addDateSelectionScreen()V

    .line 492
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    goto :goto_1

    .line 478
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 481
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 482
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 486
    :cond_5
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addVillageSelectionSpinner()V

    .line 487
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return v1

    .line 471
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->navigateToHomeScreen(Z)V

    return v1

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

    .line 97
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 98
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->setContentView(Landroid/view/View;)V

    .line 102
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->finish()V

    .line 109
    :cond_1
    const-string v0, "Work Register"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveData(ZII)V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 307
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 308
    const-string v2, "location_id"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "from_date"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v2, "to_date"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v2, "limit"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string p2, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance p3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v2, "mob_work_register_detail"

    const/4 v3, 0x0

    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p3, v2, v0, v1, v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 314
    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 316
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 317
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 318
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 319
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->headNames:Ljava/util/List;

    .line 321
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

    .line 322
    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 323
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->headNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 327
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    .line 328
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->headNames:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->createTableLayout(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 330
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V

    goto :goto_1

    .line 333
    :cond_6
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->loadMore:Landroid/widget/Button;

    if-eqz p2, :cond_7

    .line 334
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$4;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)V

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 343
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->numberOfRows:I

    .line 344
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$5;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    :cond_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    goto :goto_1

    .line 355
    :cond_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 358
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addDateSelectionScreen()V

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationId:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Data not synced properly. Please refresh."

    .line 209
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)V

    .line 216
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->screen:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setTableScreen()V
    .locals 3

    .line 194
    const-string v0, "tableScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->screen:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->showProcessDialog()V

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 197
    invoke-virtual {p0, v2, v0, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->retrieveData(ZII)V

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 5

    .line 227
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->hideProcessDialog()V

    .line 228
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)V

    .line 235
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 236
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 238
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 239
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public validateDate()Z
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    const-string v2, "Please select from date"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    const-string v2, "Please select to date"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterActivity;->context:Landroid/content/Context;

    const-string v2, "To date cannot be before From date"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
