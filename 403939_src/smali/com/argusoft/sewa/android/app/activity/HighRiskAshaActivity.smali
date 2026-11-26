.class public Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "HighRiskAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

.field private static final TYPE_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScree"

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

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field public fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field public formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

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

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private selectedAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedChildIndex:I

.field private selectedTypeIndex:I

.field private selectedVisitIndex:I

.field private selectedWomanIndex:I

.field public sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private spinner:Landroid/widget/Spinner;

.field public techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

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

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const-wide/16 v1, 0x1e

    .line 92
    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->limit:J

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    .line 96
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedWomanIndex:I

    .line 97
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedChildIndex:I

    .line 98
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedVisitIndex:I

    .line 103
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->timer:Ljava/util/Timer;

    .line 105
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->searchString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)Landroid/widget/Button;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)Ljava/util/Timer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedWomanIndex:I

    return p1
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedChildIndex:I

    return p1
.end method

.method static synthetic access$602(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedVisitIndex:I

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

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 413
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 415
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

    .line 133
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 134
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 135
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->footerView:Landroid/widget/LinearLayout;

    .line 139
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setBodyDetail()V

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

    .line 422
    const-string v0, "visitSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 424
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visitForms:Ljava/util/List;

    .line 427
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 428
    const-string v2, "Member Name"

    const/4 v3, 0x0

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    const-string v2, "High risk reasons"

    invoke-static {v3, v3, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 433
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHighRiskReasons()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHighRiskReasons()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 435
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getHighRiskReasons()Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 438
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v2, v6

    .line 439
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 443
    :cond_0
    const-string v2, "Not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_3

    .line 447
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Visit"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visitForms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->showMemberDetails()V

    .line 456
    :cond_4
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$8;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    .line 462
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v1, v0, v2, p1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 463
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showMemberDetails()V
    .locals 7

    .line 467
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 469
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 470
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 472
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Member Details"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v1, :cond_b

    .line 474
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v1

    .line 476
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Member Name"

    .line 477
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 476
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Health Id"

    .line 481
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Family ID"

    .line 485
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Mobile Number"

    .line 490
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Date of birth"

    .line 495
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Age"

    .line 499
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/util/Date;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 501
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 504
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 505
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 506
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 507
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getYearOfWedding()Ljava/lang/Integer;

    move-result-object v6

    .line 508
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v6, v2

    .line 509
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v5, "Age at Wedding"

    .line 510
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 509
    invoke-static {v4, v4, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    :cond_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v5, "LMP date"

    .line 516
    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 515
    invoke-static {v4, v4, p0, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    :cond_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Religion"

    .line 522
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 523
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 524
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Caste"

    .line 529
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 531
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    :cond_4
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "BPL"

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 536
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Family is BPL"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 539
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 540
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Family is not BPL"

    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 546
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v6, "Total Living Children"

    .line 547
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 546
    invoke-static {v4, v4, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v3, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 553
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v6, "Total Male Children"

    .line 554
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-static {v4, v4, p0, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v5, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getChildrenCount(Ljava/lang/Long;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 561
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Total Female Children"

    .line 562
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getLatestChildByMotherId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 568
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Latest child name"

    .line 569
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Latest child gender"

    .line 573
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 575
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Male"

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 577
    :cond_9
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Female"

    invoke-static {p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 580
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "Latest child age"

    .line 581
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-static {v4, v4, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/util/Date;

    .line 583
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 586
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Address"

    .line 587
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-static {v4, v4, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 589
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFamilyFullAddress(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 6

    .line 594
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visitForms:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedVisitIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "entity"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 613
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->hideProcessDialog()V

    return-void

    .line 598
    :catch_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$9;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    .line 605
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "Some error occurred. Please refresh and try again"

    .line 606
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 607
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 301
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 308
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 311
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->spinner:Landroid/widget/Spinner;

    .line 312
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 315
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 316
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 317
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 618
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 619
    sget-object p2, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->REQUEST_CODE_FOR_HIGH_RISK_PREGNANCY_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->showProcessDialog()V

    const/4 p1, -0x1

    .line 621
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedVisitIndex:I

    .line 622
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedWomanIndex:I

    .line 623
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedChildIndex:I

    .line 624
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visits:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    .line 625
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 627
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 157
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    .line 170
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close High Risk Beneficiaries?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v1, :cond_a

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "memberDetailsScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "memberSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "visitSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "typeSelectionScree"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 225
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_2

    .line 201
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visits:Ljava/util/List;

    .line 202
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedChildIndex:I

    if-eq p1, v3, :cond_5

    .line 203
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 204
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visits:Ljava/util/List;

    const-string v0, "ASHA_CS"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskChildren:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedChildIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 206
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visits:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto/16 :goto_2

    .line 207
    :cond_5
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedWomanIndex:I

    if-eq p1, v3, :cond_6

    .line 208
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 209
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visits:Ljava/util/List;

    const-string v0, "ASHA_ANC"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visits:Ljava/util/List;

    const-string v0, "ANC_REFERRAL_VISIT"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskPregnantWomen:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedWomanIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 212
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visits:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setVisitSelectionScreen(Ljava/util/List;)V

    goto :goto_2

    .line 214
    :cond_6
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedVisitIndex:I

    if-eq p1, v3, :cond_7

    .line 219
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->visitForms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_2

    .line 221
    :cond_7
    const-string p1, "Please Select a Visit"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 184
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 185
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 189
    :cond_9
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSelectionType()V

    goto :goto_2

    .line 192
    :pswitch_4
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    if-eq p1, v3, :cond_a

    .line 193
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->searchTextBox()V

    .line 197
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6565d410 -> :sswitch_4
        -0x308379e0 -> :sswitch_3
        0xe6d904d -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x3eb994d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 13

    .line 690
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAreas:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v9, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->limit:J

    iget-wide v11, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v12}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow5YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAreas:Ljava/util/List;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->searchString:Ljava/lang/String;

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->limit:J

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 699
    :goto_0
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    .line 700
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 684
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->onLoadMoreBackground()V

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

    .line 705
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 718
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 719
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v3, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 721
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 707
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskPregnantWomen:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 709
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 710
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v3, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 712
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v2, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 633
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 634
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 639
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_8

    .line 640
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "ashaAreaSelectionScreen"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "visitSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "typeSelectionScree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Next"

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 666
    :pswitch_0
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    .line 667
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSelectionType()V

    .line 668
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 643
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->showProcessDialog()V

    .line 644
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedChildIndex:I

    .line 645
    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedWomanIndex:I

    const/4 p1, 0x0

    .line 646
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 648
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->searchTextBox()V

    .line 649
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V

    goto :goto_3

    .line 672
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_3

    .line 652
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 653
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 656
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 657
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 658
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 660
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 661
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->addAshaAreaSelectionSpinner()V

    .line 663
    :goto_2
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    :goto_3
    return v1

    :cond_8
    return v2

    .line 635
    :cond_9
    :goto_4
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6565d410 -> :sswitch_4
        -0x308379e0 -> :sswitch_3
        0xe6d904d -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x3eb994d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setContentView(Landroid/view/View;)V

    .line 122
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->finish()V

    .line 129
    :cond_1
    const-string v0, "High Risk Beneficiaries"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveHighRiskWomenAndChildList(Ljava/lang/String;)V
    .locals 12

    .line 329
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAreas:Ljava/util/List;

    .line 330
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x0

    .line 331
    iput-wide v9, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    .line 332
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->searchString:Ljava/lang/String;

    const/4 v0, -0x1

    .line 333
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedChildIndex:I

    .line 334
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedWomanIndex:I

    .line 335
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    if-nez v0, :cond_0

    .line 336
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAreas:Ljava/util/List;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->limit:J

    const/4 v4, 0x1

    move-object v6, p1

    invoke-virtual/range {v2 .. v10}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnantWomenByAshaArea(Ljava/util/List;ZLjava/util/List;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskPregnantWomen:Ljava/util/List;

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAreas:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->limit:J

    iget-wide v10, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveChildsBelow5YearsByAshaArea(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskChildren:Ljava/util/List;

    .line 340
    :goto_0
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->offset:J

    .line 341
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setMemberSelectionScreen()V

    return-void
.end method

.method public searchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 261
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->setSelectionType()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 6

    .line 346
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 350
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->selectedTypeIndex:I

    const-string v1, "Okay"

    const-string v2, "Next"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskChildren:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    const-string v0, "No High Risk Children in your Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 382
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 391
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$7;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    .line 397
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v4, v0, v5, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 398
    const-string v0, "High Risk Children"

    invoke-static {v3, v3, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 399
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->highRiskPregnantWomen:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->addHighRiskMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 353
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    const-string v0, "No High Risk Pregnant Women in your Area"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 355
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 364
    :cond_3
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    .line 370
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v4, v0, v5, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 371
    const-string v0, "High Risk Pregnant Women"

    invoke-static {v3, v3, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 372
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public setSelectionType()V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Select Type"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    const-string v0, "typeSelectionScree"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->screen:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "High Risk Women"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "High Risk Children"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;)V

    .line 254
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
