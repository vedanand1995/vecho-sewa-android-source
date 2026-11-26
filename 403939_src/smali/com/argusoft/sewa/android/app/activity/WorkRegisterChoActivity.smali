.class public Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WorkRegisterChoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_SELECTION_SCREEN:Ljava/lang/String; = "ashaSelectionScreen"

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

.field private ashaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field public context:Landroid/content/Context;

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

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private numberOfRows:I

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private selectedPeopleIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private tableLayout:Landroid/widget/TableLayout;

.field private toDate:Landroid/widget/LinearLayout;

.field private toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

.field private userId:I

.field userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 67
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->sdf:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->headNames:Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->areaList:Ljava/util/List;

    const/4 v1, -0x1

    .line 97
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->selectedPeopleIndex:I

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->ashaList:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->users:Ljava/util/List;

    .line 100
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->userId:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->selectedPeopleIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->selectedPeopleIndex:I

    return p1
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->userId:I

    return p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    return p0
.end method

.method private addLoadMoreButton()V
    .locals 5

    .line 419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 421
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

    const/16 v1, 0x11

    .line 424
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

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

    .line 380
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 382
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf

    const/16 v3, 0xa

    .line 383
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 384
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 385
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 387
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 389
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->headNames:Ljava/util/List;

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

    .line 393
    new-instance v4, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    .line 394
    invoke-virtual {v4, v5}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 395
    invoke-virtual {v4, v3, v3, v3, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 396
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$6;

    invoke-direct {v2, p0, p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;Ljava/util/Map;)V

    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual {p1, v1, p2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private getMembersList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/UserBean;

    .line 235
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getLocationId()I

    move-result v4

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getUserFullName(Lcom/argusoft/sewa/android/app/model/UserBean;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showProcessDialog()V

    .line 130
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 131
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 132
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->nextButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;->retrieveUsersAssigned()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->ashaList:Ljava/util/List;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showNotOnlineMessage()V

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setAshaSelectionScreen()V

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

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 369
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 370
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1, v2, v1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addTableRow(Landroid/widget/TableLayout;ILjava/util/Map;)V

    .line 371
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    goto :goto_0

    .line 373
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addLoadMoreButton()V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V

    return-void
.end method

.method public addDateSelectionScreen()V
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 242
    const-string v0, "dateSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setSubTitle(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;

    const-string v3, "isFutureDate"

    const-string v4, "Invalid Date"

    invoke-direct {v2, v3, v4}, Lcom/argusoft/sewa/android/app/databean/ValidationTagBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->fromDate:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 250
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 251
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    const/16 v4, 0x3e9

    invoke-static {v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->fromDate:Landroid/widget/LinearLayout;

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->toDate:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 254
    new-instance v2, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    .line 255
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    const/16 v3, 0x3ea

    invoke-static {v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCustomDatePickerForStatic(Landroid/content/Context;Landroid/view/View$OnClickListener;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->toDate:Landroid/widget/LinearLayout;

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select from date"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->fromDate:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select to date"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->toDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V

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

    .line 337
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->tableLayout:Landroid/widget/TableLayout;

    const/16 v1, 0xa

    .line 338
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 339
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->tableLayout:Landroid/widget/TableLayout;

    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf

    .line 342
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 343
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 344
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 346
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 348
    :goto_0
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 351
    new-instance v3, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 352
    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 353
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 354
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 356
    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->tableLayout:Landroid/widget/TableLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 360
    new-instance p1, Landroid/widget/HorizontalScrollView;

    invoke-direct {p1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showNotOnlineMessage()V

    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setSubTitle(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->screen:Ljava/lang/String;

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
    const-string v0, "ashaSelectionScreen"

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

    goto :goto_1

    .line 175
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 156
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addDateSelectionScreen()V

    goto :goto_1

    .line 159
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_4

    .line 160
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    const-string v0, "Please select from date"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_5

    .line 164
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    const-string v0, "Please select to date"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_5
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->screen:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->showProcessDialog()V

    .line 170
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 p1, 0x64

    .line 171
    invoke-virtual {p0, v2, p1, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->retrieveData(ZII)V

    .line 172
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d008476 -> :sswitch_2
        -0x31fba313 -> :sswitch_1
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

    .line 106
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 441
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 447
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 448
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->screen:Ljava/lang/String;

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
    const-string v0, "ashaSelectionScreen"

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

    .line 463
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addDateSelectionScreen()V

    .line 464
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    goto :goto_1

    .line 450
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 453
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->areaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 454
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->areaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 458
    :cond_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setAshaSelectionScreen()V

    .line 459
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return v1

    :cond_6
    return v2

    .line 443
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d008476 -> :sswitch_2
        -0x31fba313 -> :sswitch_1
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

    .line 113
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 114
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setContentView(Landroid/view/View;)V

    .line 118
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->finish()V

    .line 125
    :cond_1
    const-string v0, "Work Register"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveData(ZII)V
    .locals 5

    .line 267
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->userId:I

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V

    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 281
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 282
    const-string v2, "user_id"

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v2, "from_date"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->fromDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "to_date"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->toDateListener:Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/component/listeners/DateChangeListenerStatic;->getDateSet()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v2, "limit"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string p2, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    new-instance p3, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v2, "mob_asha_work_register_detail_for_cho"

    const/4 v3, 0x0

    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p3, v2, v0, v1, v4}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 288
    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 290
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 291
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 292
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 293
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->headNames:Ljava/util/List;

    .line 295
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

    .line 296
    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->headNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 301
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    .line 302
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->headNames:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->createTableLayout(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 304
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->addDataToTable(Landroid/widget/TableLayout;Ljava/util/List;)V

    goto :goto_1

    .line 307
    :cond_6
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->loadMore:Landroid/widget/Button;

    if-eqz p2, :cond_7

    .line 308
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$4;

    invoke-direct {p2, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V

    invoke-virtual {p0, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 317
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->numberOfRows:I

    .line 318
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$5;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 328
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 330
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public setAshaSelectionScreen()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    const-string v0, "ashaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->screen:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->users:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->ashaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->users:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "Select an Asha User"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 188
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->users:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V

    .line 200
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 201
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 204
    const-string v0, "No Asha\'s in your Area for Incentives"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 205
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->hideProcessDialog()V

    return-void
.end method

.method public showNotOnlineMessage()V
    .locals 5

    .line 212
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V

    .line 219
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 220
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 222
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 223
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterChoActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
