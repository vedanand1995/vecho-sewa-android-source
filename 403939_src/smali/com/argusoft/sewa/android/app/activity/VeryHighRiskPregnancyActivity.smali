.class public Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "VeryHighRiskPregnancyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final DETAILS_SCREEN:Ljava/lang/String; = "detailsScreen"

.field public static final DISPLAY_MEMBERS:Ljava/lang/String; = "displayMembers"

.field public static final REQUEST_CODE_FOR_VHRPW:I = 0xc8

.field public static final TYPE_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScreen"

.field private static final VERY_HIGH_RISK_WOMEN_SELECTION_SCREEN:Ljava/lang/String; = "veryHighRiskWomenSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


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

.field membersWithCorrectBankDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field membersWithIncorrectBankDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    const/4 v1, -0x1

    .line 88
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    const-wide/16 v2, 0x1e

    .line 89
    iput-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->limit:J

    .line 93
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->timer:Ljava/util/Timer;

    .line 95
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->searchString:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedTypeIndex:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithCorrectBankDetail:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithIncorrectBankDetail:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedTypeIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedTypeIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Ljava/util/Timer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
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

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 478
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 480
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

.method private addMemberList(Ljava/util/List;)Ljava/util/List;
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

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 358
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 360
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 362
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showProcessDialog()V

    .line 125
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 126
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 127
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setBodyDetail()V

    return-void
.end method

.method private setDetailsScreen()V
    .locals 9

    .line 487
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showProcessDialog()V

    .line 488
    const-string v0, "detailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 493
    const-string v1, "Member Name"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    const-string v1, "Very High risk reasons"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 498
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVeryHighRiskReasons()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVeryHighRiskReasons()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVeryHighRiskReasons()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 503
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 504
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 508
    :cond_0
    const-string v1, "Not available"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    .line 513
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 222
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    const-string v2, "VHRPW"

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v0, "entity"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string p1, "isVeryHighRisk"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0xc8

    .line 241
    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    return-void

    .line 226
    :catch_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    .line 233
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "Some error occurred. Please refresh and try again"

    .line 234
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 235
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 278
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 280
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

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

    .line 281
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 284
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 285
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Village"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

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

    .line 252
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 256
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageSpinner:Landroid/widget/Spinner;

    .line 257
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$2;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 270
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method public displayMembers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;)V"
        }
    .end annotation

    .line 321
    const-string v0, "displayMembers"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 326
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    .line 327
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string p1, "No Very High Risk Pregnant Women in your Area"

    .line 329
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 335
    :cond_0
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    .line 346
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->context:Landroid/content/Context;

    const-string v2, "Select from list"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 347
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 349
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$displayMembers$0$com-argusoft-sewa-android-app-activity-VeryHighRiskPregnancyActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 333
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setDetailsScreen$1$com-argusoft-sewa-android-app-activity-VeryHighRiskPregnancyActivity(Landroid/view/View;)V
    .locals 0

    .line 514
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSelectionType()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 599
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showProcessDialog()V

    .line 602
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 603
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->searchTextBox()V

    const/4 p1, 0x0

    .line 604
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 607
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    .line 608
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 519
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    .line 532
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Very High Risk Pregnancy?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 535
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_c

    .line 153
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "veryHighRiskWomenSelectionScreen"

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
    const-string v0, "displayMembers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Please Select a Member"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 181
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 182
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    if-eq p1, v1, :cond_3

    .line 183
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 184
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 185
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setDetailsScreen()V

    goto/16 :goto_3

    .line 187
    :cond_3
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 155
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showProcessDialog()V

    .line 156
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 159
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedVillage:Ljava/lang/Integer;

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    const-string v0, "All"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 167
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 171
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 172
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 178
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSelectionType()V

    goto :goto_3

    .line 192
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    if-eq p1, v1, :cond_b

    .line 193
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 195
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedTypeIndex:I

    if-nez v0, :cond_9

    .line 196
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setDetailsScreen()V

    goto :goto_3

    .line 198
    :cond_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->techoService:Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "VHRPW"

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/TechoServiceImpl;->checkIfOfflineAnyFormFilledForMemberWithFormType(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 202
    const-string p1, "A form for this member has been already filled which is not synced with the server. Please refresh and try again."

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showAlertAndFinish(Ljava/lang/String;)V

    goto :goto_3

    .line 205
    :cond_a
    const-string p1, "FHW_NS"

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_3

    .line 211
    :cond_b
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66a4b609 -> :sswitch_2
        -0x13a69534 -> :sswitch_1
        0xe038ac1 -> :sswitch_0
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

    .line 103
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 8

    .line 619
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->searchString:Ljava/lang/String;

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->limit:J

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->offset:J

    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveVeryHighRiskPregnantWomenByAshaArea(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 620
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->offset:J

    .line 621
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedTypeIndex:I

    if-nez v1, :cond_0

    .line 622
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->onLoadMoreUi(Ljava/util/List;)V

    .line 623
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithCorrectBankDetail:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 625
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 627
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-nez v3, :cond_2

    .line 629
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 632
    :cond_2
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVhrpwRejected()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVhrpwRejected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :cond_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->onLoadMoreUi(Ljava/util/List;)V

    .line 637
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithIncorrectBankDetail:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 614
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->onLoadMoreBackground()V

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

    .line 643
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 645
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 646
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 648
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 540
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 547
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_8

    .line 548
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "villageSelectionScreen"

    const-string v4, "typeSelectionScreen"

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "detailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "veryHighRiskWomenSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "displayMembers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Next"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 550
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showProcessDialog()V

    .line 551
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedWomanIndex:I

    const/4 p1, 0x0

    .line 552
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSubTitle(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 554
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->searchTextBox()V

    .line 555
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V

    goto :goto_3

    .line 558
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    goto :goto_3

    .line 579
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showProcessDialog()V

    .line 580
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 584
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 585
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addVillageSelectionSpinner()V

    .line 586
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    goto :goto_3

    .line 562
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->showProcessDialog()V

    .line 563
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 567
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 568
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSelectionType()V

    goto :goto_2

    .line 569
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 570
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 572
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 573
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 574
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setSelectionType()V

    .line 576
    :goto_2
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    :goto_3
    return v1

    :cond_8
    return v2

    .line 543
    :cond_9
    :goto_4
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66a4b609 -> :sswitch_4
        -0x4754ad82 -> :sswitch_3
        -0x13a69534 -> :sswitch_2
        0xe038ac1 -> :sswitch_1
        0x3581654e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setContentView(Landroid/view/View;)V

    .line 113
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->finish()V

    .line 120
    :cond_1
    const-string v0, "Very High Risk Women"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V
    .locals 10

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithCorrectBankDetail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithIncorrectBankDetail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedVillage:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x0

    .line 374
    iput-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->offset:J

    .line 375
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->searchString:Ljava/lang/String;

    .line 377
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedAshaAreas:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedVillages:Ljava/util/List;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->limit:J

    move-object v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveVeryHighRiskPregnantWomenByAshaArea(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    .line 379
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 381
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;-><init>()V

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithCorrectBankDetail:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVhrpwRejected()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getVhrpwRejected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithIncorrectBankDetail:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedTypeIndex:I

    if-nez p1, :cond_2

    .line 392
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithCorrectBankDetail:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 394
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->membersWithIncorrectBankDetail:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 397
    :cond_3
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->offset:J

    .line 398
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->displayMembers(Ljava/util/List;)V

    return-void
.end method

.method public searchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 403
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setBodyDetail()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    .line 137
    const-string v1, "villageSelectionScreen"

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->selectedVillage:Ljava/lang/Integer;

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    .line 141
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addVillageSelectionSpinner()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->villageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->ashaAreaList:Ljava/util/List;

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setHighRiskWomenAndChildSelectionScreen()V
    .locals 4

    .line 444
    const-string v0, "veryHighRiskWomenSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->highRiskPregnantWomen:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const-string v0, "No Very High Risk Pregnant Women in your Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 451
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->context:Landroid/content/Context;

    const-string v2, "Select from list"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 461
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    .line 468
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 469
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method

.method public setSelectionType()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 293
    const-string v0, "typeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->screen:Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Very High Risk Women"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Rejected Member List"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;)V

    .line 310
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/VeryHighRiskPregnancyActivity;->hideProcessDialog()V

    return-void
.end method
