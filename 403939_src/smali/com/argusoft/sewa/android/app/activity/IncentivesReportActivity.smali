.class public Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "IncentivesReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FORM_SUBMISSION_SCREEN:Ljava/lang/String; = "FORM_SUBMISSION_SCREEN"

.field private static final INCENTIVE_COUNT_ENTRY_SCREEN:Ljava/lang/String; = "INCENTIVE_COUNT_ENTRY_SCREEN"

.field public static final IRON_SYRUP_SCREEN:Ljava/lang/String; = "IRON_SYRUP_SCREEN"

.field private static final IRON_SYRUP_UI_SCREEN:Ljava/lang/String; = "IRON_SYRUP_UI_SCREEN"

.field private static final MANUAL_INCENTIVE_SCREEN:Ljava/lang/String; = "MANUAL_INCENTIVE_SCREEN"

.field private static final MONTH_YEAR_SELECTION_SCREEN:Ljava/lang/String; = "MONTH_YEAR_SELECTION_SCREEN"

.field private static final PREVIOUS_YEAR_SCREEN:Ljava/lang/String; = "PREVIOUS_YEAR_SCREEN"

.field private static final ROUTINE_INCENTIVE_SCREEN:Ljava/lang/String; = "ROUTINE_INCENTIVE_SCREEN"

.field private static final SUM_AMOUNT_SCREEN:Ljava/lang/String; = "SUM_AMOUNT_SCREEN"

.field private static final SYSTEM_INCENTIVE_SCREEN:Ljava/lang/String; = "SYSTEM_INCENTIVE_SCREEN"

.field public static final TAG:Ljava/lang/String; = "IncentiveReportActivity"


# instance fields
.field allListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private amountLayout:Landroid/widget/LinearLayout;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private checkBoxListView:Landroid/widget/LinearLayout;

.field private countMismatch:Z

.field private final editTextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private familyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private filteredIncentives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private footerView:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headerTitle:Lcom/google/android/material/textview/MaterialTextView;

.field i:I

.field private final incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private final incentiveDetailsIdCardViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field incentiveMasterDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMaster;",
            "Ljava/lang/Integer;",
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

.field incentiveOccurrenceDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

.field private final incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field incentiveTypeCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isIronSyrupFlowStarted:Z

.field private final layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

.field private final limit:Ljava/lang/Long;

.field listIncentives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private manualIncentives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mapOfSelectedFamilyIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapOfSelectedMemberIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

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

.field memberDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mmmmYyyy:Ljava/text/SimpleDateFormat;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private newAdded:Z

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:Ljava/lang/Long;

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private routineIncentives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field selectedFamilyIndex:Ljava/lang/Integer;

.field private selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

.field selectedMemberIndex:Ljava/lang/Integer;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private final systemIncentiveDetailsLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private systemIncentives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field private titleView:Lcom/google/android/material/textview/MaterialTextView;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const-wide/16 v0, 0x1e

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    .line 166
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->timer:Ljava/util/Timer;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsIdCardViewMap:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMonthlyDetailsAmountMap:Ljava/util/Map;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentiveDetailsLayouts:Ljava/util/Map;

    .line 179
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    .line 179
    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    invoke-direct {v0, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v0, v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->listIncentives:Ljava/util/List;

    .line 186
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    .line 189
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    .line 191
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->isIronSyrupFlowStarted:Z

    .line 193
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->editTextMap:Ljava/util/Map;

    .line 194
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedMemberIndex:Ljava/lang/Integer;

    .line 195
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedFamilyIndex:Ljava/lang/Integer;

    .line 196
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->newAdded:Z

    .line 197
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->countMismatch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)Ljava/util/Map;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)Ljava/util/Timer;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private addCommentScreen()V
    .locals 23

    move-object/from16 v0, p0

    .line 1450
    const-string v1, "SUM_AMOUNT_SCREEN"

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 1451
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1453
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Congratulations on submitting the form. Here is the details of approximate amount for incentives calculated for the month of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    .line 1454
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1453
    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1460
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    const-string v2, "RA_MAMTA_DIVAS"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v1

    .line 1461
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    const-string v3, "VACCINATION_CM"

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v2

    .line 1463
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1466
    new-instance v5, Ljava/util/HashSet;

    const-string v6, "NDCP_TB_DRUG_RESISTANT"

    const-string v7, "NDCP_TB_PREVENTIVE"

    const-string v8, "NDCP_TB_DRUG_RESISTANT_CP"

    filled-new-array {v8, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1468
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1469
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-double v14, v14

    add-double/2addr v9, v14

    .line 1470
    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual {v13}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-double v14, v14

    add-double/2addr v11, v14

    .line 1471
    :cond_0
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1474
    :cond_1
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    if-nez v14, :cond_3

    .line 1476
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v15

    if-ne v14, v15, :cond_2

    .line 1477
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIsAbsent()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 1479
    :cond_3
    :goto_2
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v16, v14

    int-to-double v13, v7

    add-double/2addr v9, v13

    .line 1480
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v13, v7

    add-double/2addr v11, v13

    .line 1481
    :cond_4
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v14, v16

    const/4 v13, 0x0

    goto :goto_1

    .line 1484
    :cond_5
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1485
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v7, v8

    add-double/2addr v9, v7

    .line 1486
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v11, v7

    .line 1487
    :cond_6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1490
    :cond_7
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v14, :cond_a

    .line 1493
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1494
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v13

    if-ne v8, v13, :cond_9

    .line 1495
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1496
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v17, v5

    int-to-double v4, v8

    add-double/2addr v9, v4

    .line 1497
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v11, v4

    .line 1498
    :cond_8
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    :goto_5
    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v17, v5

    .line 1503
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->listIncentives:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "PENDING"

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1504
    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v7, v5}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v7

    move-object/from16 v8, v17

    .line 1505
    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 1506
    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_c

    :cond_b
    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    .line 1507
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    .line 1509
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    move-object/from16 v19, v4

    .line 1510
    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v20, v8

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    if-ne v4, v8, :cond_10

    if-eqz v5, :cond_e

    .line 1512
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1513
    invoke-virtual {v15, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    move-object v4, v15

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    .line 1515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v15

    invoke-virtual {v4, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1517
    :goto_9
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_f

    if-eqz v5, :cond_12

    .line 1520
    :cond_f
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v9, v5

    .line 1521
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_12

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v11, v4

    goto :goto_a

    :cond_10
    move-object/from16 v4, v19

    move-object/from16 v8, v20

    goto :goto_8

    :cond_11
    move-object/from16 v19, v4

    move-object/from16 v20, v8

    :cond_12
    :goto_a
    move-object/from16 v4, v19

    move-object/from16 v17, v20

    goto/16 :goto_6

    :cond_13
    move-object/from16 v20, v17

    .line 1528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1529
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    if-nez v14, :cond_15

    const/4 v7, 0x0

    .line 1530
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    goto :goto_b

    .line 1531
    :cond_15
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v14, :cond_14

    .line 1532
    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto :goto_b

    .line 1536
    :cond_16
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setIncentiveDetails(Ljava/util/List;)V

    .line 1538
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1539
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v4

    .line 1542
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1543
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_c

    .line 1550
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1551
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x0

    .line 1552
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1553
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1560
    :cond_1b
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v4, 0x0

    :cond_1c
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1561
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v8, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v8

    .line 1563
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1d

    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1c

    :cond_1d
    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    .line 1564
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1e

    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_d

    .line 1567
    :cond_1e
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    int-to-double v13, v2

    div-double/2addr v13, v6

    add-double/2addr v4, v13

    goto :goto_d

    .line 1572
    :cond_1f
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v2, "Incentive-wise Amounts:"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v8, 0x0

    .line 1573
    invoke-virtual {v1, v8, v2, v8, v2}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1574
    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1576
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    .line 1577
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1578
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v13, -0x2

    invoke-direct {v8, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    .line 1581
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1582
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x8

    .line 1583
    invoke-virtual {v8, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1585
    new-instance v7, Landroid/widget/TextView;

    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1586
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v14, v15, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1587
    const-string v2, "Incentive Title"

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    const/4 v14, 0x0

    .line 1588
    invoke-virtual {v7, v14, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v14, 0x41600000    # 14.0f

    .line 1589
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1591
    new-instance v2, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1592
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3e800000    # 0.25f

    const/4 v14, 0x0

    invoke-direct {v15, v14, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v14, v15

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    const-string v14, "NHM Incentive"

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, 0x2

    .line 1594
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setLines(I)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 1595
    invoke-virtual {v2, v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v15, 0x6

    .line 1596
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/high16 v14, 0x41600000    # 14.0f

    .line 1597
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1599
    new-instance v14, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1600
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-wide/from16 v21, v4

    const/4 v4, 0x0

    invoke-direct {v15, v4, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v4, v15

    const/4 v5, 0x6

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    const-string v4, "State Top-up 50%"

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    .line 1602
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setLines(I)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1603
    invoke-virtual {v14, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1604
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 1605
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1607
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1608
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1609
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1613
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x11

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1614
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_20

    .line 1621
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v4, "(Routine Activities)"

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 1622
    invoke-virtual {v2, v5}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/16 v4, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 1623
    invoke-virtual {v2, v7, v4, v7, v6}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1624
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1625
    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addTableHeader(Landroid/widget/LinearLayout;)V

    .line 1627
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    move-object/from16 v6, v20

    .line 1628
    invoke-direct {v0, v1, v4, v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addIncentiveRow(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Ljava/util/Set;)V

    goto :goto_e

    :cond_21
    move-object/from16 v6, v20

    .line 1632
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v4, "(RCH)"

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 1633
    invoke-virtual {v2, v5}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    const/16 v4, 0x18

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 1634
    invoke-virtual {v2, v7, v4, v7, v5}, Lcom/google/android/material/textview/MaterialTextView;->setPadding(IIII)V

    .line 1635
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1636
    invoke-direct {v0, v1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addTableHeader(Landroid/widget/LinearLayout;)V

    .line 1638
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1639
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 1640
    invoke-direct {v0, v1, v3, v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addIncentiveRow(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Ljava/util/Set;)V

    goto :goto_f

    .line 1644
    :cond_23
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1646
    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1647
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    .line 1649
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1651
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1652
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1655
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v7, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1656
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v7, v2

    goto :goto_10

    :cond_24
    const-wide v1, 0x409f400000000000L    # 2000.0

    .line 1658
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    sub-double/2addr v9, v7

    add-double/2addr v9, v1

    sub-double/2addr v11, v7

    add-double/2addr v11, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v1

    add-double v11, v11, v21

    .line 1670
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NHM Incentive Total: \u20b9 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1671
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v3, "%.1f"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1670
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    .line 1673
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "State 50% Top-Up Total: \u20b9 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1674
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v8, v7

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1673
    invoke-static {v2, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 1676
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v6, "State Fixed Amount: \u20b9 2500/-"

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    add-double/2addr v9, v11

    const/16 v6, 0x9c4

    int-to-double v6, v6

    add-double/2addr v9, v6

    .line 1680
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Total Amount: \u20b9 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1681
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1680
    invoke-static {v6, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    .line 1684
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1685
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1686
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1687
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1688
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void
.end method

.method private addIncentiveDetailsLayoutForEachIncentive(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Landroid/widget/ImageView;)V
    .locals 3

    .line 1309
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1310
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    const/16 v2, 0xf

    .line 1311
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1312
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1314
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getIncentiveDetailTableForEachIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 1315
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 1317
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/16 p3, 0x8

    .line 1319
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1320
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1321
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentiveDetailsLayouts:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1728
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1729
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    move-object/from16 v3, p3

    .line 1730
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1732
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_1

    if-eqz v2, :cond_5

    :cond_1
    if-eqz v1, :cond_2

    .line 1733
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Incentive ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1734
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 1736
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    int-to-double v1, v1

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_4
    int-to-double v1, v4

    :goto_2
    div-double/2addr v1, v5

    .line 1739
    :goto_3
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 1740
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1741
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x8

    .line 1742
    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1744
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1745
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v8, v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1746
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 1747
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1749
    new-instance v8, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1750
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct {v10, v6, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1751
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "\u20b9 "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v4, v14, v6

    const-string v4, "%.1f"

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/-"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x6

    .line 1752
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1753
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1755
    new-instance v15, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v15, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1756
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1758
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 1759
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1761
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1762
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1763
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, p1

    .line 1764
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private addTableHeader(Landroid/widget/LinearLayout;)V
    .locals 13

    .line 1692
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1693
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1694
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    .line 1696
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1698
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1699
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1700
    const-string v3, "Incentive Title"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1701
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 1702
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1704
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1705
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {v8, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    const-string v8, "NHM Incentive"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    .line 1707
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 1708
    invoke-virtual {v7, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v10, 0x6

    .line 1709
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1710
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1712
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1713
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
    const-string v1, "State Top-up 50%"

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1715
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 1716
    invoke-virtual {v11, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1717
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1718
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1720
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1721
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1722
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1723
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addUiForIronSyrupScreen()V
    .locals 6

    .line 2372
    const-string v0, "IRON_SYRUP_UI_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 2373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->footerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2374
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Next"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2375
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2376
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v2, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2377
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->newAdded:Z

    .line 2378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->checkBoxListView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v5, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->checkBoxListView:Landroid/widget/LinearLayout;

    .line 2381
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->checkBoxListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->checkBoxListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2383
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v3, "NVBDCP_LLIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v3, "NIDDCP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2384
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addSearchTextBoxForMember(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2386
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addSearchTextBoxForMember(Ljava/lang/Boolean;)V

    :goto_0
    const/4 v0, 0x0

    .line 2389
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->retrieveMemberListForIronPillsFromDB(Ljava/lang/String;)V

    .line 2390
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void
.end method

.method private convertDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1399
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1401
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1402
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1405
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createPdf(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 441
    new-instance v2, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v2}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 442
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    const/16 v3, 0x253

    const/16 v4, 0x34a

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v0

    .line 443
    invoke-virtual {v2, v0}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 444
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    .line 445
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/high16 v6, -0x1000000

    .line 446
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x41900000    # 18.0f

    .line 447
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v6, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Incentive Details For "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x28

    int-to-float v14, v13

    .line 452
    invoke-virtual {v4, v6, v14, v14, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v6, 0x40000000    # 2.0f

    .line 453
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v6, 0x32

    int-to-float v10, v6

    .line 454
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getPageWidth()I

    move-result v6

    sub-int/2addr v6, v13

    int-to-float v9, v6

    move-object v6, v4

    move v7, v14

    move v8, v10

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v15, 0x41800000    # 16.0f

    .line 455
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 458
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getPageWidth()I

    move-result v6

    add-int/lit16 v6, v6, -0xc8

    .line 459
    const-string v7, "Incentive Title"

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x50

    int-to-float v8, v8

    invoke-virtual {v4, v7, v14, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Amount "

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "(\u20b9)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    int-to-float v11, v6

    invoke-virtual {v4, v7, v11, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 461
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v6, 0x5f

    int-to-float v10, v6

    .line 463
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getPageWidth()I

    move-result v6

    sub-int/2addr v6, v13

    int-to-float v9, v6

    move-object v6, v4

    move v7, v14

    move v8, v10

    move v5, v11

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 465
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 466
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 471
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v6, 0x73

    const/16 v11, 0x73

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 472
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getApprovedAmount()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getApprovedAmount()I

    move-result v8

    add-int v17, v7, v8

    .line 477
    iget-object v7, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v7

    .line 479
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v7

    int-to-float v8, v11

    invoke-virtual {v4, v7, v14, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 481
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u20b9"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getApprovedAmount()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v11, 0x19

    int-to-float v10, v6

    .line 485
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getPageWidth()I

    move-result v6

    sub-int/2addr v6, v13

    int-to-float v9, v6

    move-object v6, v4

    move v7, v14

    move v8, v10

    move/from16 v18, v11

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v18, 0x28

    move/from16 v7, v17

    goto :goto_0

    :cond_1
    move/from16 v18, v11

    .line 489
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 490
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    add-int/lit8 v11, v18, 0x14

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Total Approved Amount: \u20b9"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-float v5, v11

    invoke-virtual {v4, v0, v14, v5, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 494
    invoke-virtual {v2, v3}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 496
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "incentive_details_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p2 .. p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDF saved to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 503
    const-string v3, "IncentiveReportActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error saving PDF: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument;->close()V

    return-void
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;"
        }
    .end annotation

    .line 2639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2642
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2643
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2645
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 2649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 2650
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 2652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 2654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2655
    const-string v4, " null"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2657
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2659
    :goto_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 2660
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 2662
    :cond_2
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2664
    :goto_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    return-object v1
.end method

.method private getIncentiveDetailTableForEachIncentive(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/LinearLayout;
    .locals 18

    move-object/from16 v0, p0

    .line 1325
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1326
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x5

    const/16 v4, 0xf

    .line 1327
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1328
    sget v3, Lcom/argusoft/sewa/android/app/R$drawable;->box_background:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1329
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1331
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v5, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1332
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0x11

    .line 1333
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1334
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1335
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1338
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1339
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0xa

    .line 1340
    invoke-virtual {v7, v10, v4, v10, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1341
    iget-object v11, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    new-instance v11, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v11, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1343
    new-instance v12, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v12, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1344
    new-instance v13, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v13, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1346
    invoke-virtual {v11, v6}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1347
    invoke-virtual {v12, v6}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1348
    invoke-virtual {v13, v6}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1349
    const-string v14, "Name of beneficiary"

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    const-string v15, "Service Date"

    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    const-string v2, "Family Planning Method"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1353
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1354
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v6}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1355
    invoke-virtual {v7, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    invoke-virtual {v7, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    iget-object v6, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    const-string v11, "FPM_TEMP"

    invoke-virtual {v6, v11}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v6

    .line 1358
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1359
    invoke-virtual {v7, v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    :cond_0
    invoke-virtual {v1, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1364
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;

    .line 1365
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1366
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1367
    invoke-virtual {v13, v10, v4, v10, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1368
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    new-instance v4, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v4, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1370
    new-instance v5, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v5, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1371
    new-instance v10, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v10, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v7

    const/16 v7, 0x11

    .line 1372
    invoke-virtual {v4, v7}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1373
    invoke-virtual {v5, v7}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1374
    invoke-virtual {v10, v7}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    if-nez v11, :cond_1

    .line 1376
    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v17, v2

    goto :goto_1

    .line 1381
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1382
    invoke-virtual {v4, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getServiceDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->getFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    :goto_1
    invoke-virtual {v13, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    invoke-virtual {v13, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1388
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1389
    invoke-virtual {v13, v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    :cond_2
    invoke-virtual {v1, v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v16

    move-object/from16 v2, v17

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/16 v10, 0xa

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method private getMamtaDiwasRadioListener(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1

    .line 1244
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda8;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v0
.end method

.method private getMembersList(Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    .line 2623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 2626
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "%s %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2627
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2628
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 2630
    :cond_0
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2633
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getRadioCheckChangeListener(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 8

    .line 1224
    new-instance v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda9;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda9;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v7
.end method

.method private getRadioGroupCheckChangeListener(Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 0

    .line 1213
    new-instance p3, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda7;

    invoke-direct {p3, p1, p2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)V

    return-object p3
.end method

.method private getRowClickListenerForSystemIncentive(Landroid/widget/LinearLayout;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1411
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda13;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;Landroid/widget/LinearLayout;)V

    return-object v0
.end method

.method private getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;
    .locals 1

    .line 1440
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 1441
    invoke-virtual {v0, p3}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 1442
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 1444
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-object v0
.end method

.method private getTableRowLayout()Landroid/widget/LinearLayout;
    .locals 3

    .line 1432
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1433
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xa

    const/16 v2, 0xf

    .line 1434
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1435
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->layoutParamsForRow:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getTextChangeListenerForManualCountInput(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/LinearLayout;)Landroid/text/TextWatcher;
    .locals 1

    .line 1261
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;Landroid/widget/LinearLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)V

    return-object v0
.end method

.method private initView()V
    .locals 3

    .line 226
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 227
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setContentView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 229
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 230
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->footerView:Landroid/widget/LinearLayout;

    .line 233
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->amountLayoutForMainScreen:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->amountLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "code"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "incentiveGroup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "manualType"

    const-string v2, "LIST"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "queryForList"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryRaw()Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 240
    invoke-static {}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/FormGenerator$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->listIncentives:Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    const-string v1, "IncentiveReportActivity"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setContentView(Landroid/view/View;)V

    .line 248
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic lambda$getMamtaDiwasRadioListener$10(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1245
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->mamtaRadioButtonYes:I

    if-ne p4, p3, :cond_0

    const/4 p3, 0x0

    .line 1246
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1247
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1248
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 1250
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1251
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1252
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getRadioCheckChangeListener$9(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1225
    sget p6, Lcom/argusoft/sewa/android/app/R$id;->attendedYes:I

    if-ne p7, p6, :cond_0

    const/4 p6, 0x0

    .line 1226
    invoke-virtual {p0, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1227
    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1228
    invoke-virtual {p2, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1229
    invoke-virtual {p3, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1230
    invoke-virtual {p4, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1231
    invoke-virtual {p5, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p6, 0x8

    .line 1233
    invoke-virtual {p0, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1234
    invoke-virtual {p1, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1235
    invoke-virtual {p2, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1236
    invoke-virtual {p3, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1237
    invoke-virtual {p4, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1238
    invoke-virtual {p5, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getRadioGroupCheckChangeListener$8(Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1214
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->radioButtonYes:I

    if-ne p3, p2, :cond_1

    .line 1215
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "N/A"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1217
    :cond_1
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$initView$0([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 239
    aget-object p0, p0, v0

    return-object p0
.end method

.method static synthetic lambda$setIronPillsMemberCheckBoxList$12(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2453
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIronPillsMemberCheckBoxList$13(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$setRoutineIncentiveScreen$7(Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 744
    sget p3, Lcom/argusoft/sewa/android/app/R$id;->attendedYes:I

    const/4 v0, 0x0

    if-ne p4, p3, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 746
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 747
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 750
    const-string p0, "0"

    invoke-virtual {p2, p0}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$sortIncentiveDetails$14(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 2559
    check-cast p0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v0

    .line 2560
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v1

    .line 2561
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 2567
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getOrder()Ljava/lang/Short;

    move-result-object p0

    .line 2568
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getOrder()Ljava/lang/Short;

    move-result-object p1

    .line 2569
    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result p0

    return p0
.end method

.method private printIncentiveDetails(Landroid/view/View;Ljava/util/List;Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;",
            ">;",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            ")V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p2, p3}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->createPdf(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    return-void
.end method

.method private resetScroll()V
    .locals 3

    .line 2672
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSaveEnabled(Z)V

    .line 2673
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2674
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2675
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2678
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda10;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBodyDetail()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->retrieveIncentiveMonthYear()V

    return-void
.end method

.method private setManualIncentiveScreen()V
    .locals 22

    move-object/from16 v7, p0

    .line 764
    const-string v0, "MANUAL_INCENTIVE_SCREEN"

    iput-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 765
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 767
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 772
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 773
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please enter Incentive Details for"

    .line 774
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 795
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 796
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    .line 797
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 798
    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 800
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOccurrenceFrequency()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMaxOccurrence()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 801
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v8

    :cond_2
    if-nez v8, :cond_3

    goto :goto_0

    .line 804
    :cond_3
    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v8, v1}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveOccurrence(Ljava/lang/Long;I)Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 806
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getNextOccurrenceOn()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 807
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getNextOccurrenceOn()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 808
    iget-object v2, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 810
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 811
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 813
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 814
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x2

    .line 816
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v4, v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v3, v1, :cond_1

    .line 817
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 823
    :cond_5
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 824
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 826
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsIdCardViewMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 829
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->incentive_details_manual:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    .line 830
    iget-object v0, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsIdCardViewMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->memberCountLayout:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    .line 833
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->radioGroupLayout:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    .line 834
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->memberDetailsLayout:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 835
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->attendedGroupLayout:I

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 836
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->amountLayout:I

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 837
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->dateLayout:I

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/LinearLayout;

    .line 838
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->locationLayout:I

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 839
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->attendedRadioGroup:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 840
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->memberCountLayoutForMamta:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    .line 841
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->dateLayoutForMamta:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    .line 842
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->locationLayoutForMamta:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout;

    .line 843
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->multipleMamtaGroupLayout:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 844
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->adolescentLayout:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    .line 845
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->adolescentsRadioGroup:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 848
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->incentiveForHeading:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 849
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Incentive For"

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v17}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->incentiveTitle:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 852
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->totalMembersHeading:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 855
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v8, "CHILD_ORS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v17, "Total Families"

    move-object/from16 v19, v9

    const-string v9, " : "

    if-eqz v3, :cond_6

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    invoke-static/range {v17 .. v17}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move-object/from16 v20, v5

    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Members"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    :goto_2
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->memberCountEditText:I

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 863
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 864
    invoke-static/range {v17 .. v17}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 866
    :cond_7
    const-string v3, "Enter Member Count"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 869
    :goto_3
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->amountCalculated:I

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textview/MaterialTextView;

    .line 870
    const-string v5, "N/A"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->radioGroupHeading:I

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 874
    const-string v8, "Select"

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->radioGroup:I

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    .line 877
    invoke-direct {v7, v3, v11, v10}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getRadioGroupCheckChangeListener(Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 878
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->amountHeading:I

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 879
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Amount calculated"

    move-object/from16 v21, v6

    invoke-static/range {v17 .. v17}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    invoke-direct {v7, v10, v3, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTextChangeListenerForManualCountInput(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/LinearLayout;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 884
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->attendedRadioGroup:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioGroup;

    .line 885
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->multipleMamtaGroupLayout:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v6, v18

    move-object v3, v13

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v18, v13

    move-object/from16 v20, v15

    move-object/from16 v13, v21

    move-object v15, v6

    move-object/from16 v6, v16

    .line 886
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getRadioCheckChangeListener(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 888
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->mamtaRadioGroup:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 889
    invoke-direct {v7, v15, v10, v13}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getMamtaDiwasRadioListener(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 891
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->dateHeading:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->attendedLabelLayout:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 895
    const-string v1, "Attended"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->locationHeadingForMamta:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 898
    const-string v1, "Attended Location : "

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->multipleMamtaLayout:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 901
    const-string v1, "Any more Mamta"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->dateHeadingForMamta:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 904
    const-string v1, "Date :"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->totalMembersHeadingForMamta:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 907
    const-string v1, "Total Members :"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->adolescentHeading:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 909
    const-string v1, "Adolescent Screening Done ?"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 914
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$4;->$SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType:[I

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    goto :goto_4

    .line 932
    :cond_8
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 933
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 928
    :cond_9
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v1, v20

    .line 929
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    .line 916
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 917
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 918
    sget v0, Lcom/argusoft/sewa/android/app/R$id;->radioGroup:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 919
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->radioButtonNo:I

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 921
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    const/4 v0, 0x0

    .line 922
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    :cond_b
    :goto_4
    move-object v0, v12

    goto :goto_5

    :cond_c
    move-object/from16 v19, v9

    .line 949
    :goto_5
    iget-object v1, v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_d
    move-object/from16 v9, v19

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 951
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void

    .line 768
    :cond_f
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->showIncentiveCountEntryScreen()V

    return-void
.end method

.method private setPreviousYearIncentiveScreen(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 13

    .line 341
    const-string v0, "PREVIOUS_YEAR_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Main Menu"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incentive Details for"

    .line 347
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 349
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x5

    const/16 v4, 0x10

    const/16 v5, 0xa

    .line 350
    invoke-virtual {v0, v3, v4, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 351
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x14

    .line 352
    invoke-virtual {v3, v1, v6, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 353
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 360
    const-string v5, "Service Provided"

    const v6, 0x800003

    invoke-direct {p0, v2, v5, v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const-string v5, "Incentive Type"

    const/16 v6, 0x11

    invoke-direct {p0, v2, v5, v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    const-string v5, "Amount"

    invoke-direct {p0, v2, v5, v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    const-string v5, "   "

    const v8, 0x800005

    invoke-direct {p0, v2, v5, v8}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    .line 367
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    .line 368
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v0, "No Previous Incentive available"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 373
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 374
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v5

    .line 375
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveGroup(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOrder()Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setOrder(Ljava/lang/Short;)V

    goto :goto_0

    .line 379
    :cond_1
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->sortIncentiveDetails(Ljava/util/List;)V

    .line 383
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 384
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getApprovedAmount()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    .line 387
    :cond_2
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    .line 391
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 392
    :cond_4
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v5

    .line 393
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v11

    .line 394
    invoke-virtual {v11, v6}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 395
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    :cond_5
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v12, Lcom/argusoft/sewa/android/app/R$layout;->incentive_details_system:I

    invoke-virtual {v11, v12, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 398
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 399
    sget v12, Lcom/argusoft/sewa/android/app/R$id;->service:I

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/textview/MaterialTextView;

    .line 400
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->count:I

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/textview/MaterialTextView;

    .line 402
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_6
    const-string v12, "0"

    :goto_2
    invoke-virtual {v10, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->amount:I

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/textview/MaterialTextView;

    .line 404
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getApprovedAmount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getApprovedAmount()I

    move-result v10

    add-int/2addr v8, v10

    .line 407
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->downArrow:I

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 408
    const-string v12, "a"

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 409
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    sget v12, Lcom/argusoft/sewa/android/app/R$id;->memberDetailsLayout:I

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 412
    invoke-direct {p0, v12, v9, v10}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addIncentiveDetailsLayoutForEachIncentive(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Landroid/widget/ImageView;)V

    .line 413
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->amountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->amountLayout:Landroid/widget/LinearLayout;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->amountButton:I

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 416
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Total Approved Amount is : \u20b9 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 419
    :cond_7
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 420
    const-string v2, "Print"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 427
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda15;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;Ljava/util/List;Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void
.end method

.method private setRoutineIncentiveScreen()V
    .locals 12

    .line 630
    const-string v0, "ROUTINE_INCENTIVE_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 633
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 639
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 640
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please enter Incentive Details for"

    .line 641
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v2, "ROUTINE ACTIVITIES"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 647
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 648
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 649
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 651
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOccurrenceFrequency()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMaxOccurrence()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 652
    sget-object v5, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v5, :cond_2

    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    goto :goto_0

    .line 655
    :cond_3
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveOccurrence(Ljava/lang/Long;I)Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getNextOccurrenceOn()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 658
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getNextOccurrenceOn()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 659
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 662
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 664
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 665
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 667
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 668
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 674
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 675
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 676
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsIdCardViewMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-nez v6, :cond_8

    .line 679
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$layout;->incentive_details_manual:I

    invoke-virtual {v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 680
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsIdCardViewMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget v7, Lcom/argusoft/sewa/android/app/R$id;->incentiveForHeading:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textview/MaterialTextView;

    .line 682
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incentive For"

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    sget v7, Lcom/argusoft/sewa/android/app/R$id;->incentiveTitle:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textview/MaterialTextView;

    .line 685
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    sget v7, Lcom/argusoft/sewa/android/app/R$id;->totalMembersHeading:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textview/MaterialTextView;

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total Members"

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    sget v7, Lcom/argusoft/sewa/android/app/R$id;->amountCalculated:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textview/MaterialTextView;

    .line 691
    const-string v8, "0"

    invoke-virtual {v7, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->radioGroup:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    .line 694
    invoke-direct {p0, v7, v5, v1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getRadioGroupCheckChangeListener(Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 696
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->attendedLabelLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/textview/MaterialTextView;

    .line 697
    const-string v10, "Attended"

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 701
    sget-object v10, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$4;->$SwitchMap$com$argusoft$sewa$android$app$model$IncentiveMaster$ManualType:[I

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-eq v9, v4, :cond_7

    if-eq v9, v3, :cond_6

    goto/16 :goto_2

    .line 726
    :cond_6
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->radioGroupLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 727
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->locationLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 728
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->dateLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 729
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->memberCountLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 730
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->multipleMamtaGroupLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 731
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->adolescentLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 733
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->attendedGroupLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 734
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->amountLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 736
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->attendedLabelLayout:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/textview/MaterialTextView;

    .line 737
    const-string v11, "Attended?"

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->attendedRadioGroup:I

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    .line 740
    sget v11, Lcom/argusoft/sewa/android/app/R$id;->attendedNo:I

    invoke-virtual {v9, v11}, Landroid/widget/RadioGroup;->check(I)V

    .line 741
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 742
    invoke-virtual {v7, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    new-instance v8, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, v5, v1, v7}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;)V

    invoke-virtual {v9, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 703
    :cond_7
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->radioGroupLayout:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 704
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->locationLayout:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 705
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->dateLayout:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 706
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->attendedGroupLayout:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 707
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->amountLayout:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 708
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->memberCountLayout:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 710
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->totalMembersHeading:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 711
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total Meetings"

    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->memberCountEditText:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 714
    const-string v9, "Enter meeting count"

    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 719
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->memberDetailsLayout:I

    .line 720
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v7, v8}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTextChangeListenerForManualCountInput(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/LinearLayout;)Landroid/text/TextWatcher;

    move-result-object v1

    .line 719
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 758
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 760
    :cond_9
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void

    .line 634
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setManualIncentiveScreen()V

    return-void
.end method

.method private setSystemIncentiveScreen()V
    .locals 10

    .line 556
    const-string v0, "SYSTEM_INCENTIVE_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 559
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 564
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 565
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incentive Details for"

    .line 566
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 570
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    const/4 v3, 0x5

    const/16 v4, 0xa

    .line 571
    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 572
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x14

    const/4 v5, 0x0

    .line 573
    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 574
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 578
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 579
    const-string v3, "Service Provided"

    const v4, 0x800003

    invoke-direct {p0, v1, v3, v4}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTitleLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    const-string v3, "Member Count"

    const/16 v4, 0x11

    invoke-direct {p0, v1, v3, v4}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    const-string v3, "Amount"

    invoke-direct {p0, v1, v3, v4}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveAmountLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    const-string v3, "   "

    const v6, 0x800005

    invoke-direct {p0, v1, v3, v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTableRowCellText(ZLjava/lang/String;I)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 591
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 592
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 596
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 597
    :cond_2
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v2

    .line 598
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    .line 599
    invoke-virtual {v7, v4}, Lcom/google/android/material/textview/MaterialTextView;->setGravity(I)V

    .line 600
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    :cond_3
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/argusoft/sewa/android/app/R$layout;->incentive_details_system:I

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 604
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 605
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveMemberDetails()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 606
    invoke-direct {p0, v7}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getRowClickListenerForSystemIncentive(Landroid/widget/LinearLayout;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    :cond_4
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->service:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/textview/MaterialTextView;

    .line 610
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    sget v6, Lcom/argusoft/sewa/android/app/R$id;->count:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textview/MaterialTextView;

    .line 613
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "0"

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    move-object v8, v9

    :goto_1
    invoke-virtual {v6, v8}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    sget v6, Lcom/argusoft/sewa/android/app/R$id;->amount:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textview/MaterialTextView;

    .line 616
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6
    invoke-virtual {v6, v9}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    sget v6, Lcom/argusoft/sewa/android/app/R$id;->downArrow:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 619
    const-string v8, "a"

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 620
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->memberDetailsLayout:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 623
    invoke-direct {p0, v8, v3, v6}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addIncentiveDetailsLayoutForEachIncentive(Landroid/widget/LinearLayout;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Landroid/widget/ImageView;)V

    .line 624
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 626
    :cond_7
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void

    .line 560
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setRoutineIncentiveScreen()V

    return-void
.end method

.method private showIncentiveCountEntryScreen()V
    .locals 23

    move-object/from16 v0, p0

    .line 2270
    const-string v1, "INCENTIVE_COUNT_ENTRY_SCREEN"

    iput-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 2271
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2272
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->editTextMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2273
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Next"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 2274
    iput-boolean v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->isIronSyrupFlowStarted:Z

    .line 2276
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 2277
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2278
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x10

    .line 2279
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2281
    const-string v4, "Enter the counts for Incentives"

    invoke-static {v0, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    iput-object v4, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->titleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2282
    iget-object v7, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2284
    iget-object v4, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->listIncentives:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2285
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2286
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v9, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0x18

    .line 2287
    invoke-virtual {v8, v1, v9, v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPadding(IIII)V

    .line 2289
    iget-object v9, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v9, v7}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v9

    .line 2290
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCountLimit()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCountLimit()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_0
    const v10, 0x7fffffff

    .line 2291
    :goto_1
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2292
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    .line 2293
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 2294
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2296
    new-instance v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v12, v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 2297
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2299
    new-instance v12, Landroid/widget/EditText;

    iget-object v13, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x2

    .line 2300
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 2301
    invoke-virtual {v12, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 2302
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setId(I)V

    .line 2304
    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2305
    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_2

    .line 2307
    :cond_1
    iget-object v14, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x0

    :goto_2
    if-le v14, v10, :cond_2

    move v14, v10

    .line 2313
    :cond_2
    new-array v13, v13, [Landroid/text/InputFilter;

    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    .line 2314
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v15, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v15, v13, v1

    new-instance v5, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;

    invoke-direct {v5, v0, v10, v9}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;ILcom/argusoft/sewa/android/app/model/IncentiveMaster;)V

    aput-object v5, v13, v3

    .line 2313
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2339
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2342
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v5, v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 2343
    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2345
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 2346
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 2348
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2349
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2351
    invoke-virtual {v11}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/4 v10, 0x6

    invoke-virtual {v5, v9, v10, v1, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 2352
    invoke-virtual {v11}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10, v1, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 2353
    invoke-virtual {v11}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/4 v13, 0x4

    invoke-virtual {v5, v9, v13, v1, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 2354
    invoke-virtual {v11}, Landroid/widget/TextView;->getId()I

    move-result v9

    const v14, 0x3f333333    # 0.7f

    invoke-virtual {v5, v9, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentWidth(IF)V

    .line 2356
    invoke-virtual {v12}, Landroid/widget/EditText;->getId()I

    move-result v18

    invoke-virtual {v11}, Landroid/widget/TextView;->getId()I

    move-result v20

    const/16 v21, 0x7

    const/16 v22, 0x10

    const/16 v19, 0x6

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v22}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2357
    invoke-virtual {v12}, Landroid/widget/EditText;->getId()I

    move-result v9

    const/4 v11, 0x7

    invoke-virtual {v5, v9, v11, v1, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 2358
    invoke-virtual {v12}, Landroid/widget/EditText;->getId()I

    move-result v9

    invoke-virtual {v5, v9, v10, v1, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 2359
    invoke-virtual {v12}, Landroid/widget/EditText;->getId()I

    move-result v9

    invoke-virtual {v5, v9, v13, v1, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 2360
    invoke-virtual {v12}, Landroid/widget/EditText;->getId()I

    move-result v9

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentWidth(IF)V

    .line 2362
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2364
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2365
    iget-object v5, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->editTextMap:Ljava/util/Map;

    invoke-interface {v5, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2367
    :cond_3
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2368
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

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

    .line 2557
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateIncentiveDetailsBean(Ljava/lang/Integer;)V
    .locals 2

    .line 1875
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMonthlyDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "actualId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    .line 1876
    const-string v0, "ASHA_APPROVED"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->setStatus(Ljava/lang/String;)V

    .line 1877
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMonthlyDetailBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1879
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private updateIncentiveOccurrenceDetails(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1037
    const-string v0, "INCENTIVE"

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 1042
    :cond_0
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOccurrenceFrequency()Ljava/lang/Integer;

    move-result-object v1

    .line 1043
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMaxOccurrence()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_9

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1050
    :cond_1
    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 1052
    const-string p1, "User ID is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1056
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 1058
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v4, v3, p2}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveOccurrence(Ljava/lang/Long;I)Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    .line 1064
    :cond_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getVal()Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_8

    .line 1065
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 1074
    :cond_5
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getYearlyOccurrenceCount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->getYearlyOccurrenceCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1075
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 1076
    invoke-virtual {p2, v0}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->setLastOccurrenceOn(Ljava/util/Date;)V

    .line 1077
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->setYearlyOccurrenceCount(Ljava/lang/Integer;)V

    .line 1078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1079
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1080
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1081
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->setNextOccurrenceOn(Ljava/util/Date;)V

    .line 1084
    :cond_7
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->setModifiedOn(Ljava/util/Date;)V

    .line 1085
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveOccurrenceDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void

    .line 1066
    :cond_8
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1067
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1068
    invoke-virtual {p1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 1069
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->setNextOccurrenceOn(Ljava/util/Date;)V

    .line 1070
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/IncentiveOccurrenceBean;->setModifiedOn(Ljava/util/Date;)V

    .line 1071
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveOccurrenceDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void

    .line 1046
    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Frequency or MaxOccurrence is null for incentive: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1038
    :cond_a
    :goto_4
    const-string p1, "Incentive detail data bean is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private validateAndSetManualEntryAnswers()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 956
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 957
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v4

    .line 958
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsIdCardViewMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 960
    sget-object v7, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->BOOL:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 961
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->radioGroup:I

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 962
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 963
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please select yes/no for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 966
    :cond_1
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    sget v5, Lcom/argusoft/sewa/android/app/R$id;->radioButtonYes:I

    if-ne v4, v5, :cond_2

    .line 967
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 968
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    goto :goto_0

    .line 970
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 971
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 974
    :cond_3
    const-string v2, "Please enter member count for "

    const-string v7, "PENDING"

    if-eqz v4, :cond_7

    sget-object v8, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 975
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->memberCountEditText:I

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 976
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 977
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 980
    :cond_4
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 981
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMultiplier()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 982
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    mul-int v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 983
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 984
    invoke-virtual {v1, v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_5
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 988
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 990
    :cond_6
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 991
    invoke-virtual {v1, v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_0

    .line 995
    sget-object v8, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->CNT_DATE:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 996
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->memberCountEditText:I

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 997
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 998
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 1002
    :cond_8
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->dateEditText:I

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;

    .line 1003
    const-string v5, "Click Here To Select Date"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setHint(Ljava/lang/CharSequence;)V

    .line 1004
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_a

    .line 1005
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->getSelectedDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1006
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please enter incentive date for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v6

    .line 1009
    :cond_9
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->getSelectedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveDate(Ljava/lang/Long;)V

    goto :goto_1

    .line 1011
    :cond_a
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->getSelectedDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    .line 1012
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveDate(Ljava/lang/Long;)V

    .line 1016
    :cond_b
    :goto_1
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 1017
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMultiplier()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1018
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    mul-int v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1019
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 1020
    invoke-virtual {v1, v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1023
    :cond_c
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_d

    .line 1024
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1026
    :cond_d
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1027
    invoke-virtual {v1, v7}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    return v2
.end method

.method private validateAndSetRoutineEntryAnswers()Z
    .locals 12

    .line 1091
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1092
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 1093
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v4

    .line 1094
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveDetailsIdCardViewMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1096
    const-string v6, "PENDING"

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    sget-object v8, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->MAMTA_DAY:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1097
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->attendedGroupLayout:I

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1098
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->memberCountEditText:I

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1099
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->memberCountEditTextForMamta:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1100
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->locationEditText:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1101
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->locationEditTextForMamta:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1102
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->dateEditText:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;

    .line 1103
    sget v9, Lcom/argusoft/sewa/android/app/R$id;->dateEditTextForMamta:I

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;

    .line 1104
    const-string v10, "Click Here To Select Date"

    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setHint(Ljava/lang/CharSequence;)V

    .line 1105
    invoke-static {v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/argusoft/sewa/android/app/component/IncentiveDateComponent;->setHint(Ljava/lang/CharSequence;)V

    .line 1106
    sget v8, Lcom/argusoft/sewa/android/app/R$id;->mamtaRadioGroup:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    const/16 v5, 0x8

    .line 1108
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1122
    :try_start_0
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_4

    const/4 v5, 0x2

    if-le v2, v5, :cond_1

    goto/16 :goto_1

    .line 1173
    :cond_1
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 1174
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMultiplier()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1175
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    mul-int v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1176
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 1177
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1180
    :cond_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 1181
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1183
    :cond_3
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1184
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1128
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Meeting count must be between 0 and 2 for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v7

    .line 1124
    :catch_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please enter meeting count for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v7

    :cond_5
    if-eqz v4, :cond_0

    .line 1189
    sget-object v8, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->AM:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1190
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->attendedRadioGroup:I

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 1191
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 1192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please select yes/no for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return v7

    .line 1195
    :cond_6
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    sget v5, Lcom/argusoft/sewa/android/app/R$id;->attendedYes:I

    if-ne v4, v5, :cond_7

    .line 1196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 1197
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1198
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1200
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setVal(Ljava/lang/Integer;)V

    .line 1201
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_8
    return v2
.end method


# virtual methods
.method public addSearchTextBoxForMember(Ljava/lang/Boolean;)V
    .locals 2

    .line 2491
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2492
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2493
    const-string p1, "Search Member"

    invoke-static {p0, p1, v1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    goto :goto_0

    .line 2495
    :cond_0
    const-string p1, "Search Family"

    invoke-static {p0, p1, v1, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2497
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2498
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2535
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2536
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2537
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2538
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void
.end method

.method public addSelectedMemberScreen()V
    .locals 24

    move-object/from16 v1, p0

    .line 1884
    const-string v2, " "

    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1885
    const-string v0, "IRON_SYRUP_SCREEN"

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 1887
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object v0

    .line 1888
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    iget-object v4, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v3

    .line 1890
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v6, "NVBDCP_LLIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v6, "NIDDCP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 1893
    :goto_1
    const-string v6, "actualId"

    const-string v7, "IncentiveReportActivity"

    const-string v8, "Next"

    const/4 v9, 0x0

    if-eqz v5, :cond_a

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    if-eqz v10, :cond_a

    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 1894
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 1895
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1897
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Families Selected For "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    iput-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 1898
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1900
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    .line 1901
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1902
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 1903
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1906
    :cond_2
    iget-object v10, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v10, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 1908
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1909
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v12

    if-ne v0, v12, :cond_7

    .line 1910
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1914
    :try_start_0
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v14}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v14

    invoke-virtual {v14, v6, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v14

    invoke-virtual {v14}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 1915
    new-instance v15, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {v15, v14, v9}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/FamilyBean;Ljava/util/List;)V

    .line 1917
    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v15, :cond_3

    .line 1920
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v5

    :try_start_2
    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "null"

    const-string v15, ""

    .line 1922
    invoke-virtual {v5, v9, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    :goto_5
    move-object/from16 v17, v2

    goto :goto_9

    :cond_3
    move-object/from16 v16, v5

    const/4 v5, 0x0

    .line 1925
    :goto_6
    const-string v9, "Head member name not available"

    if-eqz v5, :cond_4

    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v17, v2

    :try_start_4
    const-string v2, "Head of the family - "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v19, v9

    .line 1926
    :goto_7
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v20, "Family ID"

    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v23}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;-><init>()V

    .line 1929
    invoke-virtual {v14}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setUniqueHealthId(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    goto :goto_8

    :cond_5
    move-object v5, v9

    .line 1930
    :goto_8
    invoke-virtual {v2, v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setName(Ljava/lang/String;)V

    .line 1931
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setMemberId(Ljava/lang/Integer;)V

    .line 1933
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v16, v5

    .line 1936
    :goto_9
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    move-object/from16 v5, v16

    move-object/from16 v2, v17

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v16, v5

    .line 1940
    invoke-virtual {v11, v12}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveMemberDetails(Ljava/util/List;)V

    goto :goto_b

    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v16, v5

    :goto_b
    move-object/from16 v5, v16

    move-object/from16 v2, v17

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1944
    :cond_8
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    .line 1949
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchString:Ljava/lang/String;

    if-nez v3, :cond_9

    move-object v3, v1

    goto :goto_c

    :cond_9
    const/4 v3, 0x0

    :goto_c
    const/4 v5, 0x0

    .line 1944
    invoke-static {v0, v4, v2, v5, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 1951
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1952
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1954
    :cond_a
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    if-eqz v2, :cond_15

    iget-object v9, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v9, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 1955
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v9, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1957
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Members Selected For "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    iput-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 1958
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1960
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    .line 1962
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1963
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActualId()Ljava/lang/Integer;

    move-result-object v9

    if-ne v0, v9, :cond_b

    .line 1965
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1969
    :try_start_5
    iget-object v11, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v11}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    invoke-virtual {v11, v6, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1971
    new-instance v12, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 1972
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v17

    .line 1973
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v18

    .line 1974
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v21}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1979
    new-instance v12, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;

    invoke-direct {v12}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;-><init>()V

    .line 1980
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 1981
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setUniqueHealthId(Ljava/lang/String;)V

    .line 1983
    :cond_c
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 1984
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setName(Ljava/lang/String;)V

    :cond_d
    if-eqz v0, :cond_e

    .line 1987
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setMemberId(Ljava/lang/Integer;)V

    .line 1989
    :cond_e
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1990
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setGender(Ljava/lang/String;)V

    .line 1992
    :cond_f
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1993
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setState(Ljava/lang/String;)V

    .line 1995
    :cond_10
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1996
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMemberDetailsDataBean;->setDob(Ljava/lang/String;)V

    .line 1999
    :cond_11
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_e

    :catch_4
    move-exception v0

    .line 2002
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 2006
    :cond_12
    invoke-virtual {v5, v9}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveMemberDetails(Ljava/util/List;)V

    goto/16 :goto_d

    .line 2010
    :cond_13
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    .line 2015
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchString:Ljava/lang/String;

    if-nez v3, :cond_14

    move-object v5, v1

    const/4 v3, 0x0

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2010
    :goto_f
    invoke-static {v0, v4, v2, v3, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 2017
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2018
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_15
    if-eqz v5, :cond_16

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No Families selected for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 2023
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No members selected for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2025
    :goto_10
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2026
    iget-object v2, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2027
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->hideProcessDialog()V

    .line 2030
    invoke-direct/range {p0 .. p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void
.end method

.method synthetic lambda$getRowClickListenerForSystemIncentive$11$com-argusoft-sewa-android-app-activity-IncentivesReportActivity(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 3

    .line 1412
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->downArrow:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1413
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentiveDetailsLayouts:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    .line 1415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string p2, "Incentive Details not found"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1418
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_up:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    const-string v0, "b"

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 1421
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_down:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1424
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 p2, 0x8

    .line 1425
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onBackPressed$1$com-argusoft-sewa-android-app-activity-IncentivesReportActivity(Landroid/view/View;)V
    .locals 1

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 259
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 260
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->navigateToHomeScreen(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->finish()V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$resetScroll$15$com-argusoft-sewa-android-app-activity-IncentivesReportActivity()V
    .locals 3

    .line 2699
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2701
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2702
    instance-of v1, v0, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2703
    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_1

    .line 2705
    :cond_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_1

    .line 2706
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2, v2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_1

    .line 2709
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$resetScroll$16$com-argusoft-sewa-android-app-activity-IncentivesReportActivity()V
    .locals 4

    .line 2679
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2680
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2681
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2683
    :cond_0
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2684
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 2685
    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_1

    .line 2688
    :cond_1
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    .line 2689
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2, v2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_1

    .line 2693
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2696
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 2697
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda14;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$retrieveIncentiveMonthYear$2$com-argusoft-sewa-android-app-activity-IncentivesReportActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$retrieveIncentiveMonthYear$3$com-argusoft-sewa-android-app-activity-IncentivesReportActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 306
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->retrieveSelectedIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    return-void
.end method

.method synthetic lambda$retrieveIncentiveMonthYear$4$com-argusoft-sewa-android-app-activity-IncentivesReportActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 323
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->previousYearIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    return-void
.end method

.method synthetic lambda$retrieveIncentiveMonthYear$5$com-argusoft-sewa-android-app-activity-IncentivesReportActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 328
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setPreviousYearIncentiveScreen$6$com-argusoft-sewa-android-app-activity-IncentivesReportActivity(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;Landroid/view/View;)V
    .locals 0

    .line 430
    invoke-direct {p0, p3, p1, p2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->printIncentiveDetails(Landroid/view/View;Ljava/util/List;Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    return-void
.end method

.method public loadMoreFamilies()V
    .locals 5

    .line 2605
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveFamilyListByCode(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 2606
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    .line 2607
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->onLoadMoreUiFamily(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreMembers()V
    .locals 5

    .line 2584
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveMemberListByCode(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 2585
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    .line 2586
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->onLoadMoreUiMember(Ljava/util/List;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 257
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda11;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)V

    .line 267
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Incentive?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 270
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 2123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2127
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "SYSTEM_INCENTIVE_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "INCENTIVE_COUNT_ENTRY_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "SUM_AMOUNT_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "ROUTINE_INCENTIVE_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "FORM_SUBMISSION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "IRON_SYRUP_UI_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "IRON_SYRUP_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "MANUAL_INCENTIVE_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    .line 2264
    :goto_0
    const-string p1, "Next"

    const-string v0, "NIDDCP"

    const-string v4, "NVBDCP_LLIN"

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_e

    .line 2129
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setRoutineIncentiveScreen()V

    .line 2130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 2153
    :pswitch_1
    new-instance p1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2155
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    .line 2158
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->editTextMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2159
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2160
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2161
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2163
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "\\d+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_3

    .line 2169
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2170
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v8, v7}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v8

    .line 2171
    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCountLimit()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getCountLimit()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_b
    const v9, 0x7fffffff

    :goto_2
    if-le v5, v9, :cond_c

    .line 2175
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " can\'t exceed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " count"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 2178
    :cond_c
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v5, :cond_9

    .line 2181
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    :goto_3
    move-object v6, v7

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    .line 2185
    :goto_4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2186
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2187
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_11

    if-eq v7, v8, :cond_f

    .line 2190
    :cond_11
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_7

    .line 2196
    :cond_12
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    goto :goto_5

    .line 2191
    :cond_13
    :goto_7
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2193
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    goto :goto_5

    .line 2204
    :cond_14
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_16

    .line 2205
    :cond_15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    .line 2206
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    :cond_16
    if-eqz v1, :cond_17

    .line 2210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {p1, v6}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object p1

    .line 2211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please enter valid count for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2212
    :cond_17
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_18

    .line 2213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 2214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    .line 2215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    .line 2216
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addUiForIronSyrupScreen()V

    goto/16 :goto_e

    .line 2218
    :cond_18
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addCommentScreen()V

    goto/16 :goto_e

    .line 2256
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setFormSubmissionScreen()V

    .line 2257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 2134
    :pswitch_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->validateAndSetRoutineEntryAnswers()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2135
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setManualIncentiveScreen()V

    goto/16 :goto_e

    .line 2260
    :pswitch_4
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->storeIncentiveForm()V

    .line 2261
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_e

    .line 2223
    :pswitch_5
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->newAdded:Z

    if-eqz p1, :cond_1b

    .line 2224
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_8

    .line 2227
    :cond_19
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2225
    :cond_1a
    :goto_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    :cond_1b
    :goto_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_a

    :cond_1c
    const/4 p1, 0x0

    .line 2231
    :goto_a
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_b

    .line 2233
    :cond_1d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c

    .line 2232
    :cond_1e
    :goto_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c

    :cond_1f
    const/4 v0, 0x0

    :goto_c
    if-eq p1, v0, :cond_20

    goto :goto_d

    :cond_20
    const/4 v1, 0x0

    .line 2235
    :goto_d
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->countMismatch:Z

    if-lez p1, :cond_21

    if-eqz v0, :cond_22

    :cond_21
    if-eqz v1, :cond_23

    .line 2237
    :cond_22
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please select "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " members/families"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2240
    :cond_23
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addSelectedMemberScreen()V

    goto :goto_e

    .line 2244
    :pswitch_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    .line 2245
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    .line 2246
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    .line 2247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 2248
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 2249
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addUiForIronSyrupScreen()V

    goto :goto_e

    .line 2251
    :cond_24
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addCommentScreen()V

    goto :goto_e

    .line 2141
    :pswitch_7
    :try_start_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->validateAndSetManualEntryAnswers()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2142
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->showIncentiveCountEntryScreen()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception p1

    .line 2145
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 2146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v0, "Error while saving manual incentive data"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_25
    :goto_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4dabaac7 -> :sswitch_7
        -0x4a4d6c85 -> :sswitch_6
        -0x489c14f8 -> :sswitch_5
        -0x218a3dfc -> :sswitch_4
        0x3535c1b -> :sswitch_3
        0x491cc71f -> :sswitch_2
        0x5b5f95bd -> :sswitch_1
        0x5e9dc9f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    .line 205
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 206
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 2

    .line 2575
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v1, "NVBDCP_LLIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2578
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->loadMoreMembers()V

    goto :goto_1

    .line 2576
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->loadMoreFamilies()V

    :goto_1
    return-void
.end method

.method public onLoadMoreUiFamily(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2612
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2613
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2614
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2615
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2616
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 2618
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiMember(Ljava/util/List;)V
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

    .line 2591
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2593
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2594
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2595
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2596
    invoke-interface {p1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2597
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 2599
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 2036
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 2037
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string v3, "Next"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2043
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2045
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_17

    .line 2046
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "SYSTEM_INCENTIVE_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_1
    const-string v0, "INCENTIVE_COUNT_ENTRY_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "PREVIOUS_YEAR_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "SUM_AMOUNT_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "ROUTINE_INCENTIVE_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "FORM_SUBMISSION_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "IRON_SYRUP_UI_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "IRON_SYRUP_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "MANUAL_INCENTIVE_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2115
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->finish()V

    goto/16 :goto_4

    .line 2101
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    .line 2103
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setManualIncentiveScreen()V

    goto/16 :goto_4

    .line 2104
    :cond_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 2105
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setRoutineIncentiveScreen()V

    goto/16 :goto_4

    .line 2106
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 2107
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setSystemIncentiveScreen()V

    goto/16 :goto_4

    .line 2109
    :cond_c
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 2110
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->retrieveIncentiveMonthYear()V

    goto/16 :goto_4

    .line 2071
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->amountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2072
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->retrieveIncentiveMonthYear()V

    goto/16 :goto_4

    .line 2052
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    if-lez p1, :cond_d

    sub-int/2addr p1, v2

    .line 2053
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    .line 2054
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 2055
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addSelectedMemberScreen()V

    goto/16 :goto_4

    :cond_d
    if-nez p1, :cond_e

    .line 2057
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->showIncentiveCountEntryScreen()V

    goto/16 :goto_4

    .line 2058
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    if-nez p1, :cond_f

    goto :goto_3

    .line 2060
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    if-nez p1, :cond_10

    goto :goto_2

    .line 2063
    :cond_10
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setManualIncentiveScreen()V

    goto :goto_4

    .line 2061
    :cond_11
    :goto_2
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setSystemIncentiveScreen()V

    goto :goto_4

    .line 2059
    :cond_12
    :goto_3
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setRoutineIncentiveScreen()V

    goto :goto_4

    .line 2084
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    if-eqz p1, :cond_13

    .line 2085
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setSystemIncentiveScreen()V

    goto :goto_4

    .line 2087
    :cond_13
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->retrieveIncentiveMonthYear()V

    goto :goto_4

    .line 2048
    :pswitch_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addCommentScreen()V

    goto :goto_4

    .line 2091
    :pswitch_5
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    if-lez p1, :cond_14

    sub-int/2addr p1, v2

    .line 2092
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->i:I

    .line 2093
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->filteredIncentives:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    .line 2094
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addSelectedMemberScreen()V

    goto :goto_4

    .line 2096
    :cond_14
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->showIncentiveCountEntryScreen()V

    goto :goto_4

    .line 2067
    :pswitch_6
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->addUiForIronSyrupScreen()V

    goto :goto_4

    .line 2075
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    if-eqz p1, :cond_15

    .line 2076
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setRoutineIncentiveScreen()V

    goto :goto_4

    .line 2077
    :cond_15
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    if-eqz p1, :cond_16

    .line 2078
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setSystemIncentiveScreen()V

    goto :goto_4

    .line 2080
    :cond_16
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->retrieveIncentiveMonthYear()V

    :cond_17
    :goto_4
    return v2

    .line 2038
    :cond_18
    :goto_5
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->navigateToHomeScreen(Z)V

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x4dabaac7 -> :sswitch_8
        -0x4a4d6c85 -> :sswitch_7
        -0x489c14f8 -> :sswitch_6
        -0x218a3dfc -> :sswitch_5
        0x3535c1b -> :sswitch_4
        0x491cc71f -> :sswitch_3
        0x4c993166 -> :sswitch_2
        0x5b5f95bd -> :sswitch_1
        0x5e9dc9f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 211
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setContentView(Landroid/view/View;)V

    .line 215
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->finish()V

    .line 222
    :cond_1
    const-string v0, "Incentive"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public performActionOnClick(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2396
    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    const/4 p2, 0x1

    .line 2397
    iput-boolean p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->newAdded:Z

    .line 2399
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2401
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v1, "NVBDCP_LLIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Only "

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v2, "NIDDCP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 2420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2421
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2423
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p2, :cond_2

    .line 2424
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " member can be selected."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 2429
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2431
    :cond_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2433
    :goto_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberIds:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setVerified(Z)V

    goto :goto_4

    .line 2402
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 2403
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2404
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2406
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 2407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " family can be selected."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz v2, :cond_6

    .line 2412
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2414
    :cond_6
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    :goto_3
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyIds:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;->setVerified(Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public previousYearIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setPreviousYearIncentiveScreen(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    :cond_0
    return-void
.end method

.method public retrieveIncentiveMonthYear()V
    .locals 10

    .line 274
    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    .line 275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrievePendingIncentives()Ljava/util/List;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveApprovedIncentives()Ljava/util/List;

    move-result-object v1

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 279
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveTypeCountMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 280
    const-string v3, "MONTH_YEAR_SELECTION_SCREEN"

    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 282
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "Main Menu"

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v2, "Incentive Months not found"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda19;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    .line 291
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveDetails()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 292
    new-instance v6, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v7, "No Incentives Details Found"

    .line 298
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-static {v5, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v7, "Select Incentive month year"

    .line 301
    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-static {v5, v5, v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    new-instance v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda20;

    invoke-direct {v7, p0, v2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda20;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;Ljava/util/List;)V

    invoke-static {v0, v3, v6, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 307
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    .line 312
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 313
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v7, "Previous year incentive"

    invoke-static {v5, v5, p0, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;

    .line 315
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveDetails()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 316
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v7, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Approved Incentive For Month "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 321
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 322
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    sget v6, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    new-instance v7, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0, v2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;Ljava/util/List;)V

    invoke-static {v1, v0, v6, v7, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_7
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void
.end method

.method public retrieveMemberListForIronPillsFromDB(Ljava/lang/String;)V
    .locals 4

    .line 2543
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchString:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 2544
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    .line 2545
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v0, "NVBDCP_LLIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    const-string v0, "NIDDCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2546
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveMemberListByCode(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberDataBeans:Ljava/util/List;

    goto :goto_0

    .line 2549
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchString:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveFamilyListByCode(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyDataBeans:Ljava/util/List;

    .line 2551
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->showProcessDialog()V

    .line 2552
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->limit:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->offset:Ljava/lang/Long;

    .line 2553
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->type:Ljava/lang/String;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberDataBeans:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setIronPillsMemberCheckBoxList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public retrieveSelectedIncentiveDetails(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V
    .locals 5

    if-eqz p1, :cond_8

    .line 513
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMonthlyDetailsAmountMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-direct {v0, p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    .line 516
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    .line 517
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    .line 518
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    .line 519
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    .line 520
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 524
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v2

    .line 525
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setIncentiveGroup(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOrder()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setOrder(Ljava/lang/Short;)V

    goto :goto_0

    .line 529
    :cond_1
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->sortIncentiveDetails(Ljava/util/List;)V

    .line 530
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 531
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 532
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getActive()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 535
    :cond_3
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getSystemCalculated()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getAmount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 537
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->systemIncentives:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 539
    :cond_4
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->DEPENDENT:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->LIST:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 542
    :cond_5
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->MAMTA_DAY:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    move-result-object v2

    sget-object v3, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->AM:Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster$ManualType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 546
    :cond_6
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 547
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 543
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 544
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->routineIncentives:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 552
    :cond_8
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->setSystemIncentiveScreen()V

    return-void
.end method

.method public setFormSubmissionScreen()V
    .locals 3

    .line 1771
    const-string v0, "FORM_SUBMISSION_SCREEN"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->screen:Ljava/lang/String;

    .line 1772
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Submit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1774
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v2, "Your form is complete."

    .line 1775
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1774
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1776
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed Incentive form."

    .line 1777
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1776
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1778
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->resetScroll()V

    return-void
.end method

.method public setIronPillsMemberCheckBoxList(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2441
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveService:Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/IncentiveServiceImpl;->retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 2447
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NIDDCP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NVBDCP_LLIN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2448
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Select Members From List for "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 2449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2451
    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    .line 2452
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda17;-><init>()V

    .line 2456
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchString:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 2457
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->list_view_item_with_checkbox:I

    invoke-static {p2, v0, v2, p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItemForIncentive(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 2459
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->list_view_item_with_checkbox:I

    invoke-static {p2, v0, v2, p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItemForIncentive(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 2462
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2463
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2465
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2466
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Select Families From List for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 2467
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2469
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    .line 2470
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda18;-><init>()V

    .line 2473
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->searchString:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 2474
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->list_view_item_with_checkbox:I

    invoke-static {p2, v0, v2, p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItemForIncentive(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_1

    .line 2476
    :cond_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->allListItems:Ljava/util/List;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->list_view_item_with_checkbox:I

    invoke-static {p2, v0, v2, p1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItemForIncentive(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 2479
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2480
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2483
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "No Members/Families For "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 2484
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2485
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->nextButton:Landroid/widget/Button;

    const-string p2, "Okay"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2487
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->hideProcessDialog()V

    return-void
.end method

.method public storeIncentiveForm()V
    .locals 13

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1786
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1788
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 1789
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 1790
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 1791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 1792
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    .line 1793
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 1794
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    .line 1795
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 1796
    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 1798
    const-string v2, "SYSTEM_INCENTIVE"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 1800
    new-instance v3, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 1801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 1802
    const-string v0, "Incentive Entry"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 1803
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 1804
    const-string v0, "P"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 1805
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1806
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 1807
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mmmmYyyy:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1808
    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {v3, v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 1810
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;-><init>()V

    .line 1811
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setId(Ljava/lang/Integer;)V

    .line 1812
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getIncentiveDetails()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setIncentiveDetails(Ljava/util/List;)V

    .line 1813
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1814
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedMemberIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "actualId"

    const-string v7, "IncentiveReportActivity"

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1816
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-virtual {v9, v6, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v6

    .line 1818
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 1819
    new-instance v10, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;

    invoke-direct {v10}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;-><init>()V

    .line 1820
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setFamily(Ljava/lang/Boolean;)V

    .line 1821
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setMemberFullName(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getActualId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setMemberId(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setUniqueHealthId(Ljava/lang/String;)V

    .line 1824
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setIncentiveMonthDate(Ljava/util/Date;)V

    .line 1825
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1827
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 1829
    invoke-virtual {v5}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1833
    :cond_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->mapOfSelectedFamilyIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1835
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-virtual {v9, v6, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v9

    .line 1837
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 1838
    new-instance v11, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;

    invoke-direct {v11}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;-><init>()V

    .line 1839
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setFamily(Ljava/lang/Boolean;)V

    .line 1840
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setFamilyId(Ljava/lang/Integer;)V

    .line 1841
    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setFamilyUniqueId(Ljava/lang/String;)V

    .line 1842
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/argusoft/sewa/android/app/databean/ListOfIncentives;->setIncentiveMonthDate(Ljava/util/Date;)V

    .line 1843
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1845
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 1847
    invoke-virtual {v5}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1851
    :cond_3
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setListOfIncentives(Ljava/util/Map;)V

    .line 1853
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    const-string v4, "ASHA_APPROVED"

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->setStatus(Ljava/lang/String;)V

    .line 1854
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->selectedIncentive:Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/IncentiveMonthlyDetailsDataBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->updateIncentiveDetailsBean(Ljava/lang/Integer;)V

    .line 1856
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->manualIncentives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    .line 1857
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->incentiveMasterWithIdMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 1858
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getOccurrenceFrequency()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1860
    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->updateIncentiveOccurrenceDetails(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v4

    .line 1862
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error updating occurrence details: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1867
    :cond_5
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 1870
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void
.end method
