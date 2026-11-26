.class public Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AshaFacilitatorIncentiveFlowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field public static final ASHA_SELECTION_FOR_APPROVAL_SCREEN:Ljava/lang/String; = "ashaSelectionForApprovalScreen"

.field public static final CHO_INCENTIVE_SCREEN:Ljava/lang/String; = "choIncentiveScreen"

.field public static final DISAPPROVAL_SCREEN:Ljava/lang/String; = "disapprovalScreen"

.field private static final FORM_SUBMISSION_SCREEN:Ljava/lang/String; = "FORM_SUBMISSION_SCREEN"

.field public static final INCENTIVE_APPROVAL_SCREEN:Ljava/lang/String; = "manualIncentiveScreen"

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "SERVICE_SELECTION_SCREEN"

.field public static final SUM_AMOUNT_SCREEN:Ljava/lang/String; = "sumAmountScreen"

.field public static final VALIDATION_SCREEN:Ljava/lang/String; = "validationScreen"


# instance fields
.field private approvedIncentives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private final checkBoxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field private final disapprovalReasonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final disapprovalReasonMapForConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            ">;"
        }
    .end annotation
.end field

.field private disapprovedAmt:I

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private final incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private final incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private final incentiveDetailsLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final incentiveDisapproveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private incentiveMasterWithIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMaster;",
            ">;"
        }
    .end annotation
.end field

.field incentiveMonthlyDetailBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final incentiveMonthlyDetailsAmountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

.field private final incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private final incentivesForApproval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

.field private memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mmmmYyyy:Ljava/text/SimpleDateFormat;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

.field private selectedPeopleIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field userDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/UserBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 5

    .line 83
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 85
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedPeopleIndex:I

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->memberList:Ljava/util/List;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovalReasonMapForConfig:Ljava/util/Map;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDisapproveList:Ljava/util/List;

    .line 121
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMonthlyDetailsAmountMap:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    .line 141
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovedAmt:I

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;I)I
    .locals 0

    .line 83
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedPeopleIndex:I

    return p1
.end method

.method private addCommentScreen()V
    .locals 18

    move-object/from16 v0, p0

    .line 583
    const-string v1, "sumAmountScreen"

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 584
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 586
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Congratulations on submitting the form. Here is the details of approximate amount for incentives calculated for the month of "

    .line 587
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 586
    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "NDCP_TB_DRUG_RESISTANT"

    const-string v3, "NDCP_TB_PREVENTIVE"

    const-string v4, "NDCP_TB_DRUG_RESISTANT_CP"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 599
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-wide v9, v7

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 600
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v12

    if-nez v12, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActive()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 605
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v14

    const-string v15, "7 - Routine Activities"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 607
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gtz v15, :cond_3

    if-eqz v13, :cond_0

    :cond_3
    if-eqz v14, :cond_4

    .line 609
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 611
    :cond_4
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :goto_1
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v14

    add-double/2addr v7, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-eqz v13, :cond_5

    cmpl-double v11, v14, v5

    if-nez v11, :cond_5

    .line 619
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    int-to-double v11, v11

    div-double v11, v11, v16

    goto :goto_2

    :cond_5
    div-double v11, v14, v16

    :goto_2
    add-double/2addr v9, v11

    goto :goto_0

    .line 628
    :cond_6
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v5, "Incentive-wise Amounts:"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 629
    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 630
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 632
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 633
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 634
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    const/16 v13, 0x8

    const/16 v15, 0x11

    if-nez v12, :cond_7

    .line 639
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v11, "(Routine Activities)"

    invoke-static {v12, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    .line 640
    invoke-virtual {v11, v15}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 641
    invoke-virtual {v11, v5, v6, v5, v13}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 642
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addTableHeader(Landroid/widget/LinearLayout;)V

    .line 645
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 646
    invoke-direct {v0, v4, v6, v1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addIncentiveRow(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Ljava/util/Set;)V

    goto :goto_3

    .line 651
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 652
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v6, "(RCH)"

    invoke-static {v2, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 653
    invoke-virtual {v2, v15}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/16 v6, 0x18

    .line 654
    invoke-virtual {v2, v5, v6, v5, v13}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 655
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addTableHeader(Landroid/widget/LinearLayout;)V

    .line 658
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 659
    invoke-direct {v0, v4, v3, v1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addIncentiveRow(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Ljava/util/Set;)V

    goto :goto_4

    .line 663
    :cond_8
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 665
    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 666
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    .line 668
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 666
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-double v1, v7, v9

    const-wide v3, 0x40a3880000000000L    # 2500.0

    add-double/2addr v1, v3

    .line 674
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "NHM Incentive Total: \u20b9 "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v7, v13, v5

    const-string v7, "%.1f"

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/-"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 674
    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 677
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "State 50% Top-Up Total: \u20b9 "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v5

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 677
    invoke-static {v11, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 680
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "State Fixed Amount: \u20b9 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v3, v11, v5

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    invoke-static {v9, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 683
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Total Amount: \u20b9 "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v1, v9, v5

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-static {v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v3, "I declare that I have verified all the claimed incentive heads against relevant records and registers, post which the recommendation has been granted."

    invoke-static {v1, v3, v2, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v1

    .line 689
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    const-string v3, "MyCheckBox"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addIncentiveRow(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 729
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 733
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-eqz v2, :cond_1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-nez v2, :cond_1

    .line 734
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-double v7, v2

    div-double/2addr v7, v5

    goto :goto_0

    :cond_1
    div-double v7, v3, v5

    .line 736
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 737
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 738
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x8

    .line 739
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 741
    new-instance v6, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 742
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v9, v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 744
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 746
    new-instance v9, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 747
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3e800000    # 0.25f

    invoke-direct {v11, v5, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "\u20b9 "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v3, v14, v5

    const-string v3, "%.1f"

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x6

    .line 749
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 750
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 752
    new-instance v14, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 753
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v5, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 756
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 758
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 759
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, p1

    .line 761
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTableHeader(Landroid/widget/LinearLayout;)V
    .locals 13

    .line 694
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 695
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 696
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    .line 698
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 700
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 701
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    const-string v3, "Incentive Title"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 703
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 704
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 706
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 707
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {v8, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    const-string v8, "NHM Incentive"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    .line 709
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 710
    invoke-virtual {v7, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v10, 0x6

    .line 711
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 712
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 714
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 715
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    const-string v1, "State Top-up 50%"

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 718
    invoke-virtual {v11, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 719
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 720
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 722
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 723
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 725
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private convertDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 567
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 570
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 573
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 574
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 577
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getIncentiveDetailTableForEachIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/LinearLayout;
    .locals 18

    move-object/from16 v0, p0

    .line 498
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 499
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x5

    const/16 v4, 0xf

    .line 500
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 501
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v3, v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 505
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 506
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0xa

    .line 507
    invoke-virtual {v5, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 508
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 512
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;

    .line 516
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 518
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 520
    invoke-virtual {v11, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 521
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 524
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 525
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Reason for not recommending "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x64

    invoke-static {v13, v14, v8, v15, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v13

    const/16 v14, 0x14

    .line 528
    invoke-virtual {v13, v4, v14, v4, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 529
    invoke-virtual {v13, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setTag(Ljava/lang/Object;)V

    .line 530
    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {v14, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    if-eqz v14, :cond_0

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 534
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_0
    move-object v14, v15

    .line 536
    :goto_1
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getName()Ljava/lang/String;

    move-result-object v16

    .line 537
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getServiceDate()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 538
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getServiceDate()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1
    const/4 v4, 0x3

    .line 539
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v14, v4, v7

    aput-object v16, v4, v2

    const/4 v9, 0x2

    aput-object v15, v4, v9

    .line 532
    const-string v9, "%s - %s%s"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 542
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-static {v9, v4, v8, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v4

    .line 543
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 544
    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 545
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda4;

    invoke-direct {v9, v13}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 556
    invoke-virtual {v11, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 558
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    invoke-virtual {v1, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0xf

    goto/16 :goto_0

    :cond_2
    return-object v1
.end method

.method private getIncentiveLayoutForIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)Landroid/widget/LinearLayout;
    .locals 6

    .line 437
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->cho_incentive_details:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 442
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->memberDetailsLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 444
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 445
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->checkbox:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/16 v3, 0x8

    .line 446
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 449
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->service:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "For "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0xffff01

    .line 451
    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 453
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->count:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 454
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Amount : \u20b9 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "\u20b9 0/-"

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->amount:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 457
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, "0"

    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 470
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getIncentiveDetailTableForEachIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 472
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 474
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reason for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v1, p2, v5, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    const/16 v1, 0xf

    const/16 v3, 0x14

    .line 475
    invoke-virtual {p2, v1, v3, v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 477
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTag(Ljava/lang/Object;)V

    .line 482
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 490
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->hideProcessDialog()V

    return-object v0

    :cond_4
    :goto_3
    return-object v1
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

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/UserBean;

    .line 354
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

.method private getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;
    .locals 1

    .line 333
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v0, p3}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 335
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 337
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-object v0
.end method

.method private getTableRowLayout()Landroid/widget/LinearLayout;
    .locals 3

    .line 343
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    const/16 v2, 0xf

    .line 345
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 346
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 170
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setContentView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 172
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setContentView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic lambda$getIncentiveDetailTableForEachIncentive$3(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 549
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 551
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getIncentiveLayoutForIncentive$2(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 484
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 486
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$sortIncentiveDetails$4(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 853
    check-cast p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v0

    .line 854
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v1

    .line 855
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getOrder()Ljava/lang/Short;

    move-result-object p0

    .line 862
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getOrder()Ljava/lang/Short;

    move-result-object p1

    .line 863
    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result p0

    return p0
.end method

.method private setIncentiveApprovalScreen()V
    .locals 8

    .line 372
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 373
    const-string v0, "manualIncentiveScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 376
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 377
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incentive Details for"

    .line 378
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 382
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 383
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    if-eqz v3, :cond_0

    .line 384
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 390
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    const/4 v4, 0x5

    const/16 v5, 0xa

    .line 391
    invoke-virtual {v1, v4, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 392
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x14

    const/4 v6, 0x0

    .line 393
    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 394
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getTableRowLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 398
    const-string v3, "Service Provided"

    const v4, 0x800003

    invoke-direct {p0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    const-string v3, "Member Count"

    const/16 v4, 0x11

    invoke-direct {p0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    const-string v3, "Amount"

    invoke-direct {p0, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const-string v3, "   "

    const v5, 0x800005

    invoke-direct {p0, v2, v3, v5}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 406
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    if-nez v5, :cond_3

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 413
    :cond_4
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v6

    .line 414
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 416
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 417
    invoke-virtual {v2, v4}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 418
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v2, v6

    .line 421
    :cond_5
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-nez v6, :cond_6

    .line 423
    invoke-direct {p0, v3, v5}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getIncentiveLayoutForIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 425
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 429
    :cond_6
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private static sortIncentiveDetails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;)V"
        }
    .end annotation

    .line 851
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private validateCheckBoxesAndDisapprovalReason()Z
    .locals 13

    const/4 v0, 0x0

    .line 774
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovedAmt:I

    .line 775
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 776
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 777
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setApprovedAmount(I)V

    .line 782
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 784
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDisapproveList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v4

    const-string v5, "Please enter disapproval reason for "

    const-string v6, "APPROVED"

    if-eqz v4, :cond_7

    .line 789
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 790
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 793
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;

    .line 794
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 795
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    if-eqz v12, :cond_5

    .line 797
    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    if-nez v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    .line 799
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 800
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    .line 803
    :cond_2
    invoke-virtual {v11}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 804
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    .line 805
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    .line 808
    :cond_3
    invoke-virtual {v11}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setComment(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMultiplier()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 810
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int v11, v8, v4

    sub-int/2addr v10, v11

    invoke-virtual {v2, v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setApprovedAmount(I)V

    goto :goto_2

    .line 812
    :cond_4
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v2, v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setApprovedAmount(I)V

    .line 815
    :goto_2
    iget v10, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovedAmt:I

    add-int/2addr v10, v4

    iput v10, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovedAmt:I

    goto :goto_3

    .line 817
    :cond_5
    invoke-virtual {v10, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setComment(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 821
    :cond_6
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v8, v3, :cond_0

    .line 822
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 826
    :cond_7
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 827
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v3, :cond_a

    .line 828
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_a

    .line 829
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_8

    .line 831
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :cond_8
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 835
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    .line 838
    :cond_9
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setComment(Ljava/lang/String;)V

    .line 840
    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovedAmt:I

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovedAmt:I

    goto/16 :goto_0

    .line 842
    :cond_a
    invoke-virtual {v2, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setComment(Ljava/lang/String;)V

    .line 843
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private validateDisapproval()Z
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    const-string v1, "MyCheckBox"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 766
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v1, "Please accept the disclaimer"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addUsersForApprovalToScreen()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    const-string v0, "ashaSelectionForApprovalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->memberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/UserBean;

    .line 197
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveAshaApprovedIncentives(I)Ljava/util/List;

    move-result-object v2

    .line 199
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    .line 200
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveDetails()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v4, v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    .line 207
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    const-string v0, "Select an Asha User"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 213
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;)V

    .line 224
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 225
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 228
    const-string v0, "No Asha\'s in your Area for Incentives"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 229
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$retrieveScreenForCho$0$com-argusoft-sewa-android-app-activity-AshaFacilitatorIncentiveFlowActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 241
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$retrieveScreenForCho$1$com-argusoft-sewa-android-app-activity-AshaFacilitatorIncentiveFlowActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 253
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->retrieveSelectedIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    .line 916
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setSubTitle(Ljava/lang/String;)V

    .line 917
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "sumAmountScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "FORM_SUBMISSION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "ashaSelectionForApprovalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "manualIncentiveScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "disapprovalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 938
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->validateDisapproval()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 939
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setFormSubmissionScreen()V

    goto :goto_2

    .line 943
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->storeIncentiveForm()V

    .line 944
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 919
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedPeopleIndex:I

    if-eq p1, v2, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 920
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getId()I

    move-result p1

    .line 921
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 922
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->retrieveScreenForCho(I)V

    goto :goto_2

    .line 924
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v0, "Please select an ASHA"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 933
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->validateCheckBoxesAndDisapprovalReason()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 934
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addCommentScreen()V

    goto :goto_2

    .line 929
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 930
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setIncentiveApprovalScreen()V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d337763 -> :sswitch_4
        -0x2c9c26ef -> :sswitch_3
        -0x299ced69 -> :sswitch_2
        -0x218a3dfc -> :sswitch_1
        0x5cb054cf -> :sswitch_0
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
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 149
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 873
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 874
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const-string v3, "Next"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 883
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "sumAmountScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "choIncentiveScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "FORM_SUBMISSION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "ashaSelectionForApprovalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "manualIncentiveScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 906
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->finish()V

    goto :goto_1

    .line 888
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 889
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveDisapproveList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 890
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setIncentiveApprovalScreen()V

    goto :goto_1

    .line 898
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 899
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addUsersForApprovalToScreen()V

    .line 900
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 885
    :pswitch_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addCommentScreen()V

    goto :goto_1

    .line 903
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 893
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getId()I

    move-result p1

    .line 894
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 895
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->retrieveScreenForCho(I)V

    :cond_6
    :goto_1
    return v1

    .line 875
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x2c9c26ef -> :sswitch_4
        -0x299ced69 -> :sswitch_3
        -0x218a3dfc -> :sswitch_2
        0x59d3dbad -> :sswitch_1
        0x5cb054cf -> :sswitch_0
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

.method protected onResume()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setContentView(Landroid/view/View;)V

    .line 158
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->finish()V

    .line 165
    :cond_1
    const-string v0, "Incentive"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveAshaInLocation()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;->retrieveUsersAssigned()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->memberList:Ljava/util/List;

    .line 187
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->addUsersForApprovalToScreen()V

    return-void
.end method

.method public retrieveScreenForCho(I)V
    .locals 5

    .line 235
    const-string v0, "choIncentiveScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveAshaApprovedIncentives(I)Ljava/util/List;

    move-result-object p1

    .line 238
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v1, "Incentive Details not found"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Main Menu"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    .line 247
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 248
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-static {v1, v0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public retrieveSelectedIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 4

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v0, "Incentive Details not found"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMonthlyDetailsAmountMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    .line 266
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    .line 267
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 268
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 269
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 270
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 271
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveGroup(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOrder()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setOrder(Ljava/lang/Short;)V

    .line 275
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->sortIncentiveDetails(Ljava/util/List;)V

    .line 278
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->setIncentiveApprovalScreen()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->retrieveAshaInLocation()V

    return-void
.end method

.method public setFormSubmissionScreen()V
    .locals 3

    .line 362
    const-string v0, "FORM_SUBMISSION_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v2, "Your form is complete."

    .line 366
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed Incentive form."

    .line 368
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public storeIncentiveForm()V
    .locals 6

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 287
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 288
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    .line 291
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 292
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    .line 293
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 294
    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 296
    const-string v2, "ASHA_FACILITATOR_INCENTIVE"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 298
    new-instance v3, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 300
    const-string v0, "Incentive Entry"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 302
    const-string v0, "P"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 304
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->users:Ljava/util/List;

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedPeopleIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getUserFullName(Lcom/argusoft/sewa/android/app/model/UserBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMonthlyBeanByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    move-result-object v0

    const/4 v2, 0x0

    .line 314
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setIncentiveMonth(Ljava/util/Date;)V

    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setModifiedOn(Ljava/util/Date;)V

    .line 316
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setIncentiveDetails(Ljava/lang/String;)V

    .line 317
    const-string v4, "APPROVAL_PENDING"

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setStatus(Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentiveMonthlyDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 319
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setIncentiveDetails(Ljava/util/List;)V

    .line 320
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setIncentiveMonth(Ljava/util/Date;)V

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setModifiedOn(Ljava/util/Date;)V

    .line 322
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AshaFacilitatorIncentiveFlowActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void
.end method
