.class public Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "WorkRegisterLineListActivity.java"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private resultList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private serviceType:Ljava/lang/String;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

.field private visitId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->visitId:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->serviceType:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->resultList1:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->printIncentiveDetails(Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private createTableRow(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/widget/TableRow;
    .locals 6

    .line 431
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(I)V

    .line 432
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xf

    const/16 v3, 0xa

    .line 433
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 434
    sget v2, Lcom/argusoft/sewa/android/app/util/SewaUtil;->CURRENT_THEME:I

    sget v4, Lcom/argusoft/sewa/android/app/R$style;->techo_training_app:I

    if-ne v2, v4, :cond_0

    .line 435
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->table_row_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    goto :goto_0

    .line 437
    :cond_0
    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->spinner_item_border:I

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 439
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    .line 442
    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 443
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 444
    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    .line 446
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 448
    :cond_1
    new-instance p1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, -0x2

    invoke-direct {p1, v5, v5, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance p1, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-virtual {p1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 452
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    if-eqz p2, :cond_2

    .line 454
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 456
    :cond_2
    const-string p2, "N/A"

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p3, :cond_3

    .line 459
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    :cond_3
    new-instance p2, Landroid/widget/TableRow$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, v5, v5, p3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, p2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->showProcessDialog()V

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 103
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 104
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 107
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 108
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->setBodyDetail()V

    return-void
.end method

.method private printIncentiveDetails(Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p2, p3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->createPdf(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private setBodyDetail()V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->showNotOnlineMessage()V

    .line 113
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->retrieveData()V

    return-void
.end method


# virtual methods
.method public addFloatingActionButton(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;)V

    .line 294
    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_print:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 295
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->colorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 296
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->buttonTextColor:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 299
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x800055

    .line 303
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0x78

    const/16 v3, 0x96

    const/4 v4, 0x0

    .line 304
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 305
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addLineListDetails(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 395
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/LinkedHashMap;

    .line 399
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    .line 403
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 402
    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    .line 405
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 404
    invoke-static {v1, p3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public addTable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 413
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    .line 414
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 415
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    const-string v1, "Field"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Value"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->createTableRow(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/widget/TableRow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 421
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->createTableRow(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/widget/TableRow;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->hideProcessDialog()V

    return-void
.end method

.method public createPdf(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 320
    new-instance v2, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v2}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 329
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, -0x1000000

    .line 330
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 331
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 332
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v10, 0x1

    invoke-static {v3, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 334
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/LinkedHashMap;

    .line 335
    new-instance v3, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v10

    const/16 v5, 0x253

    const/16 v6, 0x34a

    invoke-direct {v3, v5, v6, v4}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v3

    .line 336
    invoke-virtual {v2, v3}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v15

    .line 337
    invoke-virtual {v15}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    .line 341
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    int-to-float v7, v4

    .line 342
    invoke-virtual {v8, v3, v7, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 343
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v3, 0x32

    int-to-float v6, v3

    const/16 v3, 0x22b

    int-to-float v5, v3

    move-object v3, v8

    move v4, v7

    move/from16 v16, v5

    move v5, v6

    move/from16 v17, v6

    move/from16 v6, v16

    move v10, v7

    move/from16 v7, v17

    move-object v12, v8

    move-object v8, v9

    .line 344
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 346
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 348
    const-string v3, "Question"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    int-to-float v4, v4

    invoke-virtual {v12, v3, v10, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 349
    const-string v3, "Answer "

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x18b

    int-to-float v8, v5

    invoke-virtual {v12, v3, v8, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 350
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v3, 0x5f

    int-to-float v7, v3

    move-object v3, v12

    move v4, v10

    move v5, v7

    move-object/from16 v18, v11

    move v11, v8

    move-object v8, v9

    .line 352
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 354
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 358
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v3, 0x73

    const/16 v8, 0x73

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    int-to-float v5, v8

    invoke-virtual {v12, v4, v10, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 361
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v11, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 363
    :cond_0
    const-string v3, "N/A"

    invoke-virtual {v12, v3, v11, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v3, v8, 0x19

    int-to-float v7, v3

    move-object v3, v12

    move v4, v10

    move v5, v7

    move/from16 v6, v16

    move/from16 v17, v8

    move-object v8, v9

    .line 367
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v17, 0x28

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {v2, v15}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    move-object/from16 v11, v18

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 374
    :cond_2
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".pdf"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PDF saved to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error saving PDF: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument;->close()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    const-string v0, "visitId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->visitId:Ljava/lang/String;

    .line 78
    const-string v0, "serviceType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->serviceType:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 468
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 469
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->setContentView(Landroid/view/View;)V

    .line 89
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->finish()V

    .line 96
    :cond_1
    const-string v0, "Work Register"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public retrieveData()V
    .locals 13

    const/4 v0, 0x0

    .line 144
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 145
    const-string v2, "visitId"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->visitId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->serviceType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "FHW_CS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "FHW_MOTHER_WPD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "NCD_DIABETES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "NCD_CERVICAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "NCD_HYPERTENSION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "ASHA_PNC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "ASHA_LMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_7
    const-string v6, "ASHA_ANC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_8
    const-string v6, "ASHA_CS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_9
    const-string v6, "NCD_ORAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    goto :goto_1

    :sswitch_a
    const-string v6, "NCD_CBAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_b
    const-string v6, "FHW_PNC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_c
    const-string v6, "FHW_LMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_d
    const-string v6, "FHW_ANC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_e
    const-string v6, "NCD_BREAST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    goto :goto_1

    :sswitch_f
    const-string v6, "ASHA_NPCB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v5, -0x1

    :goto_1
    const-string v6, "HBYC Service Details"

    const-string v9, "ANC Service Details"

    const-string v10, "LMP Follow Up Service Details"

    const-string v11, "Child Details"

    const-string v12, "Mother Details"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 222
    :pswitch_0
    :try_start_1
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_asha_work_register_detail_npcb"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v1, "National Program for Blindness Control Screening Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 218
    :pswitch_1
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_cervical"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v1, "Cervical Cancer Screening Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 214
    :pswitch_2
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_breast"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v1, "Breast Cancer Screening Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 210
    :pswitch_3
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_oral"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v1, "Oral Cancer Screening Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 206
    :pswitch_4
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_diabetes"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v1, "Diabetes Screening Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 202
    :pswitch_5
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_hypertension"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "Hypertension Screening Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 198
    :pswitch_6
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_asha_work_register_detail_cbac"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v1, "CBAC Screening Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 194
    :pswitch_7
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v9, "mob_asha_work_register_detail_cs"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v5, v9, v0, v1, v10}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 190
    :pswitch_8
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v9, "mob_work_register_detail_cs"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v5, v9, v0, v1, v10}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 183
    :pswitch_9
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_asha_work_register_detail_pnc_mother"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v5, "HBNC Service Details"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_asha_work_register_detail_pnc_child"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 176
    :pswitch_a
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_pnc_mother"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v5, "PNC Service Details"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_pnc_child"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 169
    :pswitch_b
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_wpd_mother"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v5, "Delivery Registration Details"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_wpd_child"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    :pswitch_c
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_asha_work_register_detail_anc"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v5, v6, v0, v1, v10}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :pswitch_d
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_anc"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v5, v6, v0, v1, v10}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 157
    :pswitch_e
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_asha_work_register_detail_lmp"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :pswitch_f
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    const-string v6, "mob_work_register_detail_lmp"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v0, v1, v9}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->hideProcessDialog()V

    return-void

    .line 234
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    add-int/lit8 v9, v5, 0x1

    .line 236
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v10, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->executeQuery(Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;)Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 238
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 239
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/QueryMobDataBean;->getResult()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 240
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 241
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->resultList1:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v9, :cond_2

    .line 245
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_4

    :cond_2
    move-object v10, v0

    .line 247
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v9, :cond_3

    .line 248
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_5

    :cond_3
    move-object v5, v0

    .line 250
    :goto_5
    invoke-virtual {p0, v6, v10, v5}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->addLineListDetails(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 252
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 253
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$3;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)V

    invoke-virtual {p0, v5}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 263
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v9, v5, :cond_6

    .line 264
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$4;

    invoke-direct {v5, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)V

    invoke-virtual {p0, v5}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_6
    move v5, v9

    goto :goto_3

    .line 274
    :cond_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->resultList1:Ljava/util/List;

    invoke-virtual {p0, v1, v3}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->addFloatingActionButton(Ljava/util/List;Ljava/util/List;)V

    .line 276
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->hideProcessDialog()V
    :try_end_1
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    .line 278
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$5;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)V

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5793374b -> :sswitch_f
        -0x1532d6a3 -> :sswitch_e
        -0x938b5b4 -> :sswitch_d
        -0x9388c7b -> :sswitch_c
        -0x9387d65 -> :sswitch_b
        -0x7bf1a2f -> :sswitch_a
        -0x7b969a2 -> :sswitch_9
        0x2cdc84 -> :sswitch_8
        0x56eac22 -> :sswitch_7
        0x56ed55b -> :sswitch_6
        0x56ee471 -> :sswitch_5
        0x17218176 -> :sswitch_4
        0x3baa9afb -> :sswitch_3
        0x5906eb13 -> :sswitch_2
        0x620393b9 -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showNotOnlineMessage()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->hideProcessDialog()V

    .line 120
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)V

    .line 127
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->context:Landroid/content/Context;

    const-string v3, "You are not connected to internet. Make sure you are connected to internet to access this feature."

    .line 128
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x69

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 130
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/WorkRegisterLineListActivity;)V

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method
