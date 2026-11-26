.class public Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FHWIncentiveFlowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field public static final ASHA_SELECTION_FOR_APPROVAL_SCREEN:Ljava/lang/String; = "ashaSelectionForApprovalScreen"

.field public static final DISAPPROVAL_SCREEN:Ljava/lang/String; = "disapprovalScreen"

.field public static final FHW_INCENTIVE_SCREEN:Ljava/lang/String; = "fhwIncentiveScreen"

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
            "Landroid/view/View;",
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

.field private footerView:Landroid/widget/LinearLayout;

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

.field private selectedServiceIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private tbiTopupAmount:Ljava/lang/String;

.field private tbiTopupInputField:Lcom/google/android/material/textfield/TextInputLayout;

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

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 90
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedPeopleIndex:I

    .line 114
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedServiceIndex:I

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->memberList:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMapForConfig:Ljava/util/Map;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDisapproveList:Ljava/util/List;

    .line 128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveMonthlyDetailsAmountMap:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    .line 151
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovedAmt:I

    .line 153
    const-string v0, "0"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->tbiTopupAmount:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedPeopleIndex:I

    return p1
.end method

.method private addCommentScreen()V
    .locals 18

    move-object/from16 v0, p0

    .line 652
    const-string v1, "sumAmountScreen"

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 653
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 655
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Congratulations on submitting the form. Here is the details of approximate amount for incentives calculated for the month of "

    .line 656
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 655
    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "NDCP_TB_DRUG_RESISTANT"

    const-string v3, "NDCP_TB_PREVENTIVE"

    const-string v4, "NDCP_TB_DRUG_RESISTANT_CP"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 665
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 666
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 668
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

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

    .line 669
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v12

    if-nez v12, :cond_1

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActive()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    .line 674
    :cond_2
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 675
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v14

    const-string v15, "7 - Routine Activities"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 677
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gtz v15, :cond_3

    if-eqz v13, :cond_0

    :cond_3
    if-eqz v14, :cond_4

    .line 679
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    :cond_4
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
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

    .line 689
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

    .line 698
    :cond_6
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v5, "Incentive-wise Amounts:"

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 699
    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 700
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 702
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 703
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 704
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    const/16 v13, 0x8

    const/16 v15, 0x11

    if-nez v12, :cond_7

    .line 708
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v11, "(Routine Activities)"

    invoke-static {v12, v11}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    .line 709
    invoke-virtual {v11, v15}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 710
    invoke-virtual {v11, v5, v6, v5, v13}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 711
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 713
    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addTableHeader(Landroid/widget/LinearLayout;)V

    .line 714
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 715
    invoke-direct {v0, v4, v6, v1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addIncentiveRow(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Ljava/util/Set;)V

    goto :goto_3

    .line 719
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 720
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v6, "(RCH)"

    invoke-static {v2, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 721
    invoke-virtual {v2, v15}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/16 v6, 0x18

    .line 722
    invoke-virtual {v2, v5, v6, v5, v13}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 723
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 725
    invoke-direct {v0, v4}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addTableHeader(Landroid/widget/LinearLayout;)V

    .line 726
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 727
    invoke-direct {v0, v4, v3, v1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addIncentiveRow(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Ljava/util/Set;)V

    goto :goto_4

    .line 731
    :cond_8
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 734
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    .line 736
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 734
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-double v1, v7, v9

    const-wide v3, 0x40a3880000000000L    # 2500.0

    add-double/2addr v1, v3

    .line 742
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "NHM Incentive Total: \u20b9 "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
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

    .line 742
    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 745
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "State 50% Top-Up Total: \u20b9 "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
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

    .line 745
    invoke-static {v11, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "State Fixed Amount: \u20b9 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
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

    .line 748
    invoke-static {v9, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 751
    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Total Amount: \u20b9 "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
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

    .line 751
    invoke-static {v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 754
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v3, "I declare that I have verified all the claimed incentive heads against relevant records and registers, post which the recommendation has been granted."

    invoke-static {v1, v3, v2, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v1

    .line 757
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    const-string v3, "MyCheckBox"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

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

    .line 797
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 800
    :cond_0
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 801
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-eqz v2, :cond_1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-nez v2, :cond_1

    .line 802
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-double v7, v2

    div-double/2addr v7, v5

    goto :goto_0

    :cond_1
    div-double v7, v3, v5

    .line 804
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 805
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 806
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x8

    .line 807
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 809
    new-instance v6, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 810
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v9, v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 812
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 814
    new-instance v9, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 815
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3e800000    # 0.25f

    invoke-direct {v11, v5, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
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

    .line 817
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 818
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 820
    new-instance v14, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 821
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v5, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
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

    .line 823
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 824
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 826
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 827
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 828
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, p1

    .line 829
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTableHeader(Landroid/widget/LinearLayout;)V
    .locals 13

    .line 762
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 763
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 764
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    .line 766
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 768
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 769
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    const-string v3, "Incentive Title"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 771
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 772
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 774
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 775
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {v8, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    const-string v8, "NHM Incentive"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    .line 777
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 778
    invoke-virtual {v7, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v10, 0x6

    .line 779
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 780
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 782
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 783
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    const-string v1, "State Top-up 50%"

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 786
    invoke-virtual {v11, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 787
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 788
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 790
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 791
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 792
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 793
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private convertDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 635
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 638
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 641
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 642
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 645
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getIncentiveDetailTableForEachIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/LinearLayout;
    .locals 17

    move-object/from16 v0, p0

    .line 554
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 555
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x5

    const/16 v4, 0xf

    .line 556
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 557
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v3, v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 561
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 562
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0xa

    .line 563
    invoke-virtual {v5, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 564
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 567
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 568
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;

    .line 573
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 574
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 575
    invoke-virtual {v10, v6, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 576
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 579
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 580
    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 583
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getComment()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x64

    if-eqz v13, :cond_0

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getComment()Ljava/lang/String;

    move-result-object v13

    const-string v6, "APPROVED"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 584
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "Asha Facilitator\'s comment: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getComment()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13, v8, v14, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getMaterialTextView(Landroid/content/Context;Ljava/lang/String;IIZ)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_1

    .line 587
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "Reason for not selecting "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4, v8, v14, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v15

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 590
    :goto_2
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    const-string v13, ""

    if-eqz v4, :cond_2

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 591
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v4, v13

    .line 593
    :goto_3
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getName()Ljava/lang/String;

    move-result-object v14

    .line 594
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getServiceDate()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getServiceDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v7

    const/4 v4, 0x1

    aput-object v14, v2, v4

    const/4 v9, 0x2

    aput-object v13, v2, v9

    .line 589
    const-string v9, "%s - %s%s"

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 596
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-static {v9, v2, v8, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getCheckBox(Landroid/content/Context;Ljava/lang/String;IZ)Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-result-object v2

    .line 597
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 598
    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 600
    new-instance v9, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda1;

    invoke-direct {v9, v6, v15}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 609
    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v9, 0x14

    if-eqz v6, :cond_4

    .line 613
    invoke-virtual {v6, v12}, Lcom/google/android/material/textview/MaterialTextView;->setTag(Ljava/lang/Object;)V

    const/16 v10, 0xf

    .line 614
    invoke-virtual {v6, v10, v9, v10, v9}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 615
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {v13, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    const/16 v10, 0xf

    :goto_4
    if-eqz v15, :cond_5

    .line 620
    invoke-virtual {v15, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setTag(Ljava/lang/Object;)V

    .line 621
    invoke-virtual {v15, v10, v9, v10, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 622
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {v6, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    :cond_5
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-interface {v6, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-virtual {v1, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    const/16 v4, 0xf

    const/16 v6, 0xa

    goto/16 :goto_0

    :cond_6
    return-object v1
.end method

.method private getIncentiveLayoutForIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)Landroid/widget/LinearLayout;
    .locals 8

    .line 489
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->cho_incentive_details:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 490
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->memberDetailsLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 492
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 493
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->checkbox:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    .line 494
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v5, 0x8

    .line 495
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 498
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->service:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "For "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0xffff01

    .line 500
    invoke-virtual {v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTextColor(I)V

    .line 502
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->count:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 503
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Amount : \u20b9 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "\u20b9 0/-"

    :goto_0
    invoke-virtual {v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->amount:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 506
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SNC_IRON_SYRUP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 507
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIronSyrupCount()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 508
    :cond_1
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAllowApproval()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "0"

    if-eqz v6, :cond_3

    .line 509
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-virtual {v5, v7}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 511
    :cond_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v5, v7}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :goto_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 516
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getIncentiveDetailTableForEachIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 518
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 520
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getComment()Ljava/lang/String;

    move-result-object v1

    const-string v5, "APPROVED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 521
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Asha Facilitator\'s comment: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_7

    .line 525
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reason for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v5, -0x1

    const/16 v6, 0x64

    invoke-static {v2, p2, v5, v6, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    :cond_7
    const/16 p2, 0x14

    const/16 v4, 0xf

    if-eqz v1, :cond_8

    .line 529
    invoke-virtual {v1, v4, p2, v4, p2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 530
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/textview/MaterialTextView;->setTag(Ljava/lang/Object;)V

    .line 531
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v2, :cond_9

    .line 535
    invoke-virtual {v2, v4, p2, v4, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setPadding(IIII)V

    .line 536
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_9
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, v2}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 547
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->hideProcessDialog()V

    return-object v0
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

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/UserBean;

    .line 371
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

    .line 350
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-virtual {v0, p3}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 352
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 354
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-object v0
.end method

.method private getTableRowLayout()Landroid/widget/LinearLayout;
    .locals 3

    .line 360
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    const/16 v2, 0xf

    .line 362
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 363
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 182
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setContentView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 184
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setContentView(Landroid/view/View;)V

    .line 188
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic lambda$getIncentiveDetailTableForEachIncentive$3(Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 602
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 605
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$getIncentiveLayoutForIncentive$2(Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 541
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 544
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$sortIncentiveDetails$4(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 949
    check-cast p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v0

    .line 950
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getOrder()Ljava/lang/Short;

    move-result-object p0

    .line 958
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getOrder()Ljava/lang/Short;

    move-result-object p1

    .line 959
    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result p0

    return p0
.end method

.method private setIncentiveApprovalScreen()V
    .locals 7

    .line 390
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 391
    const-string v0, "manualIncentiveScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 395
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 396
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incentive Details for"

    .line 397
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x5

    const/16 v3, 0x10

    const/16 v4, 0xa

    .line 401
    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 402
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    const/16 v5, 0x14

    .line 403
    invoke-virtual {v2, v3, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 404
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getTableRowLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 408
    const-string v2, "Service Provided"

    const v3, 0x800003

    invoke-direct {p0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    const-string v2, "Member Count"

    const/16 v3, 0x11

    invoke-direct {p0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    const-string v2, "Amount"

    invoke-direct {p0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    const-string v2, "   "

    const v4, 0x800005

    invoke-direct {p0, v1, v2, v4}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 416
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 421
    :cond_1
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    .line 423
    invoke-virtual {v5, v3}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 424
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    :cond_2
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-nez v5, :cond_3

    .line 429
    invoke-direct {p0, v2, v4}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getIncentiveLayoutForIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 430
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDetailsLayouts:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_3
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
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

    .line 947
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private validateCheckBoxesAndDisapprovalReason()Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 843
    iput v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovedAmt:I

    .line 844
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 846
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 847
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setApprovedAmount(I)V

    .line 851
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 852
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDisapproveList:Ljava/util/List;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 855
    :cond_0
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v5

    const-string v6, "Please enter disapproval reason for "

    const-string v8, "Asha Facilitator\'s comment: "

    const-string v9, "APPROVED"

    const-string v10, ""

    if-eqz v5, :cond_9

    .line 856
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 857
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    div-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 860
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;

    .line 861
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 862
    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 863
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 864
    instance-of v7, v1, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v7, :cond_1

    .line 865
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setComment(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 869
    :cond_1
    instance-of v7, v1, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v7, :cond_2

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    :goto_4
    if-eqz v15, :cond_7

    .line 871
    invoke-virtual {v15}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_7

    add-int/lit8 v12, v12, 0x1

    .line 874
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 878
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 879
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_4
    move-object v1, v10

    .line 882
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 883
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_6
    const/4 v1, 0x0

    return v1

    .line 887
    :cond_5
    invoke-virtual {v14, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setComment(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMultiplier()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 889
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int v7, v12, v5

    sub-int/2addr v1, v7

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setApprovedAmount(I)V

    goto :goto_7

    .line 891
    :cond_6
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setApprovedAmount(I)V

    .line 895
    :goto_7
    iget v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovedAmt:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovedAmt:I

    goto/16 :goto_2

    .line 897
    :cond_7
    invoke-virtual {v14, v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setComment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 903
    :cond_8
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v12, v1, :cond_a

    .line 904
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 908
    :cond_9
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 909
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 910
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 911
    instance-of v5, v1, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v5, :cond_b

    .line 912
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setComment(Ljava/lang/String;)V

    :cond_a
    :goto_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 915
    :cond_b
    instance-of v5, v1, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v5, :cond_c

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    :goto_9
    if-eqz v4, :cond_10

    .line 917
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_10

    .line 918
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_d

    .line 919
    invoke-virtual {v3, v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setComment(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    if-eqz v7, :cond_e

    .line 923
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 924
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 927
    :cond_e
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 928
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    const/4 v1, 0x0

    .line 931
    invoke-virtual {v3, v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setComment(Ljava/lang/String;)V

    .line 934
    iget v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovedAmt:I

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovedAmt:I

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    .line 936
    invoke-virtual {v3, v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setComment(Ljava/lang/String;)V

    .line 937
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method private validateDisapproval()Z
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    const-string v1, "MyCheckBox"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 835
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

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

    .line 205
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    const-string v0, "ashaSelectionForApprovalScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->memberList:Ljava/util/List;

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

    .line 209
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveAshaFacApprovedIncentives(I)Ljava/util/List;

    move-result-object v2

    .line 211
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

    .line 212
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveDetails()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v4, v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 224
    const-string v0, "Select an Asha User"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 225
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;)V

    .line 236
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 237
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 240
    const-string v0, "No Asha\'s in your Area for Incentives"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 241
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$retrieveScreenForFhw$0$com-argusoft-sewa-android-app-activity-FHWIncentiveFlowActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 253
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$retrieveScreenForFhw$1$com-argusoft-sewa-android-app-activity-FHWIncentiveFlowActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 265
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->retrieveSelectedIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1011
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    .line 1012
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setSubTitle(Ljava/lang/String;)V

    .line 1013
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

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

    .line 1034
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->validateDisapproval()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1035
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setFormSubmissionScreen()V

    goto :goto_2

    .line 1039
    :pswitch_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->storeIncentiveForm()V

    .line 1040
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 1015
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedPeopleIndex:I

    if-eq p1, v2, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 1016
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getId()I

    move-result p1

    .line 1017
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1018
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->retrieveScreenForFhw(I)V

    goto :goto_2

    .line 1020
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v0, "Please select an ASHA"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 1029
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->validateCheckBoxesAndDisapprovalReason()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1030
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addCommentScreen()V

    goto :goto_2

    .line 1025
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1026
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setIncentiveApprovalScreen()V

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

    .line 158
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 161
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 969
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 970
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const-string v3, "Next"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_6

    .line 979
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

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
    const-string v0, "FORM_SUBMISSION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "ashaSelectionForApprovalScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "manualIncentiveScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "fhwIncentiveScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1002
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->finish()V

    goto :goto_1

    .line 984
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->approvedIncentives:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 985
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveDisapproveList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 986
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setIncentiveApprovalScreen()V

    goto :goto_1

    .line 981
    :pswitch_1
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addCommentScreen()V

    goto :goto_1

    .line 999
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    goto :goto_1

    .line 989
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedPeopleIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/UserBean;->getId()I

    move-result p1

    .line 990
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 991
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->retrieveScreenForFhw(I)V

    goto :goto_1

    .line 994
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 995
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addUsersForApprovalToScreen()V

    .line 996
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    :goto_1
    return v1

    .line 971
    :cond_7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->navigateToHomeScreen(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4be78efe -> :sswitch_4
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

.method protected onResume()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setContentView(Landroid/view/View;)V

    .line 170
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->finish()V

    .line 177
    :cond_1
    const-string v0, "Incentive"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveAshaInLocation()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->userService:Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/UserServiceImpl;->retrieveUsersAssigned()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->memberList:Ljava/util/List;

    .line 199
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->addUsersForApprovalToScreen()V

    return-void
.end method

.method public retrieveScreenForFhw(I)V
    .locals 5

    .line 247
    const-string v0, "fhwIncentiveScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveAshaFacApprovedIncentives(I)Ljava/util/List;

    move-result-object p1

    .line 250
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v1, "Incentive Details not found"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Main Menu"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
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

    .line 259
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 260
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-static {v1, v0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public retrieveSelectedIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 4

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v0, "Incentive Details not found"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveMonthlyDetailsAmountMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    .line 278
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    .line 279
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 280
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->checkBoxMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 281
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->disapprovalReasonMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 282
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

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

    .line 283
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveGroup(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOrder()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setOrder(Ljava/lang/Short;)V

    .line 287
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->sortIncentiveDetails(Ljava/util/List;)V

    .line 290
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->setIncentiveApprovalScreen()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->retrieveAshaInLocation()V

    return-void
.end method

.method public setFormSubmissionScreen()V
    .locals 3

    .line 379
    const-string v0, "FORM_SUBMISSION_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->screen:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v2, "Your form is complete."

    .line 383
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed Incentive form."

    .line 385
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public storeIncentiveForm()V
    .locals 6

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 299
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 300
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 304
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    .line 305
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 306
    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 308
    const-string v2, "FHW_INCENTIVE"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 310
    new-instance v3, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 312
    const-string v0, "Incentive Entry"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 314
    const-string v0, "P"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 316
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->users:Ljava/util/List;

    iget v5, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedPeopleIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/model/UserBean;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getUserFullName(Lcom/argusoft/sewa/android/app/model/UserBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMonthlyBeanByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    move-result-object v0

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setIncentiveMonth(Ljava/util/Date;)V

    .line 327
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setModifiedOn(Ljava/util/Date;)V

    .line 328
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setIncentiveDetails(Ljava/lang/String;)V

    .line 329
    const-string v4, "APPROVAL_PENDING"

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setStatus(Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentiveMonthlyDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->incentivesForApproval:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setIncentiveDetails(Ljava/util/List;)V

    .line 332
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setIncentiveMonth(Ljava/util/Date;)V

    .line 338
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setModifiedOn(Ljava/util/Date;)V

    .line 339
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHWIncentiveFlowActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void
.end method
