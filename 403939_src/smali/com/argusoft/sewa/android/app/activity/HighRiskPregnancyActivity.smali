.class public Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "HighRiskPregnancyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final HIGH_RISK_WOMEN_AND_CHILD_SELECTION_SCREEN:Ljava/lang/String; = "highRiskWomenAndChildSelectionScreen"

.field private static final REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

.field private static final TYPE_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"

.field private static final VISIT_SELECTION_SCREEN:Ljava/lang/String; = "visitSelectionScreen"


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

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private highRiskChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private highRiskPregnantWomen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field private listTitleView:Lcom/google/android/material/textview/MaterialTextView;

.field private memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private selectedAshaAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedChildIndex:I

.field private selectedTypeIndex:I

.field private selectedVillage:Ljava/lang/Integer;

.field private selectedVillages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedVisitIndex:I

.field private selectedWomanIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private villageSpinner:Landroid/widget/Spinner;

.field private visitForms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskChildren:Ljava/util/List;

    const/4 v1, -0x1

    .line 91
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedWomanIndex:I

    .line 92
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedChildIndex:I

    .line 93
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedTypeIndex:I

    .line 94
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVisitIndex:I

    const-wide/16 v1, 0x1e

    .line 95
    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    .line 100
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->timer:Ljava/util/Timer;

    .line 102
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->searchString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedTypeIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)Ljava/util/Timer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedWomanIndex:I

    return p1
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedChildIndex:I

    return p1
.end method

.method static synthetic access$902(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVisitIndex:I

    return p1
.end method

.method private addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 409
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 411
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 129
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 130
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 131
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    .line 135
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setBodyDetail()V

    return-void
.end method

.method private setVisitSelectionScreen(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 419
    const-string v0, "visitSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visitForms:Ljava/util/List;

    .line 424
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 426
    const-string v2, "Member Name"

    const/4 v3, 0x0

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    const-string v2, "High risk reasons"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 431
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-eqz v2, :cond_1

    .line 432
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHighRiskReasons()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHighRiskReasons()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 433
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHighRiskReasons()Ljava/lang/String;

    move-result-object v2

    const-string v5, "[\\[\\]]"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 434
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 437
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v8, v2, v6

    .line 438
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 440
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/constants/RchConstants;->getHighRiskDiseaseFromConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 441
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/constants/RchConstants;->getHighRiskDiseaseFromConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 445
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 449
    :cond_1
    const-string v2, "Not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Visit"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 456
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visitForms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 459
    :cond_3
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$8;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    .line 465
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v1, v0, v2, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 466
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 7

    .line 471
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 472
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visitForms:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVisitIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "entity"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, -0x1

    .line 491
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVisitIndex:I

    .line 492
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->hideProcessDialog()V

    return-void

    .line 476
    :catch_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$9;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    .line 483
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "Some error occurred. Please refresh and try again"

    .line 484
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 485
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 247
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 249
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 250
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 253
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 254
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Village"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

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

    .line 221
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 225
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 226
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$1;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 239
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 518
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 519
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 521
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 522
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visits:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    .line 523
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 525
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 497
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    .line 510
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close High Risk Pregnancy?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 513
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_b

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "visitSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "highRiskWomenAndChildSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 202
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVisitIndex:I

    if-eq p1, v1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visitForms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto/16 :goto_3

    .line 205
    :cond_3
    const-string p1, "Please Select a Visit"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 159
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 160
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 163
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillage:Ljava/lang/Integer;

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 171
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 175
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 176
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSelectionType()V

    goto :goto_3

    .line 184
    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visits:Ljava/util/List;

    .line 185
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 186
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedChildIndex:I

    if-eq p1, v1, :cond_9

    .line 187
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 188
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visits:Ljava/util/List;

    const-string v0, "FHW_CS"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskChildren:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedChildIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visits:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto :goto_3

    .line 191
    :cond_9
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedWomanIndex:I

    if-eq p1, v1, :cond_a

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visits:Ljava/util/List;

    const-string v0, "FHW_ANC"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedWomanIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->visits:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto :goto_3

    .line 197
    :cond_a
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5a27a8da -> :sswitch_2
        -0x13a69534 -> :sswitch_1
        0xe6d904d -> :sswitch_0
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

    .line 107
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 14

    .line 596
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedTypeIndex:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->searchString:Ljava/lang/String;

    iget-wide v10, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    iget-wide v12, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow5YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v0

    .line 604
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    .line 605
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->onLoadMoreUi(Ljava/util/List;)V

    goto :goto_0

    .line 598
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->searchString:Ljava/lang/String;

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    iget-wide v10, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 599
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    .line 600
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->onLoadMoreUi(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 590
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 613
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedTypeIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 626
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 627
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v3, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 615
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 617
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 618
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v3, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 531
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 533
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 538
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_7

    .line 539
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "villageSelectionScreen"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "visitSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "typeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "highRiskWomenAndChildSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Next"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 541
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 542
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedWomanIndex:I

    .line 543
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedChildIndex:I

    const/4 p1, 0x0

    .line 544
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 546
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->searchTextBox()V

    .line 547
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V

    goto :goto_3

    .line 569
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    goto :goto_3

    .line 551
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 552
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 556
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 557
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addVillageSelectionSpinner()V

    goto :goto_2

    .line 558
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 559
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 561
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 562
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 563
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addVillageSelectionSpinner()V

    .line 565
    :goto_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    goto :goto_3

    .line 573
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->showProcessDialog()V

    .line 574
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setSelectionType()V

    .line 575
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedTypeIndex:I

    .line 576
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return v1

    :cond_7
    return v2

    .line 534
    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a27a8da -> :sswitch_3
        -0x4754ad82 -> :sswitch_2
        -0x13a69534 -> :sswitch_1
        0xe6d904d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
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
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setContentView(Landroid/view/View;)V

    .line 117
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->finish()V

    .line 124
    :cond_1
    const-string v0, "High Risk Women & Child"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V
    .locals 12

    .line 260
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillage:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x0

    .line 261
    iput-wide v9, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    .line 262
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->searchString:Ljava/lang/String;

    .line 264
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedTypeIndex:I

    if-nez v0, :cond_0

    .line 265
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    const/4 v4, 0x1

    move-object v6, p1

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    iget-wide v10, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow5YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskChildren:Ljava/util/List;

    .line 269
    :goto_0
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->offset:J

    .line 270
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->setHighRiskWomenAndChildSelectionScreen()V

    return-void
.end method

.method public searchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 302
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    .line 141
    const-string v1, "villageSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedVillage:Ljava/lang/Integer;

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setHighRiskWomenAndChildSelectionScreen()V
    .locals 5

    .line 342
    const-string v0, "highRiskWomenAndChildSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 346
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->selectedTypeIndex:I

    const-string v1, "Okay"

    const-string v2, "Next"

    const-string v3, "Select from list"

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskChildren:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    const-string v0, "No High Risk Children in your Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 378
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 388
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    .line 395
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v3, v0, v4, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 396
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    const-string v0, "No High Risk Pregnant Women in your Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 351
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 361
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    .line 368
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v3, v0, v4, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 369
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method

.method public setSelectionType()V
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 277
    const-string v0, "typeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "High Risk Women"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "High Risk Children"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;)V

    .line 294
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method
