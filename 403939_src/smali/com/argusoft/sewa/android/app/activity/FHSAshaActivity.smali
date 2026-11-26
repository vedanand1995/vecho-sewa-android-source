.class public Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FHSAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_DETAILS_SCREEN:Ljava/lang/String; = "familyDetailsScreen"

.field private static final FAMILY_OPTION_SCREEN:Ljava/lang/String; = "familyOptionScreen"

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final FINAL_SCREEN:Ljava/lang/String; = "finalScreen"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_OPTION_SCREEN:Ljava/lang/String; = "memberOptionScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final REPORT_FAMILY_MIGRATION_SCREEN:Ljava/lang/String; = "reportFamilyMigrationScreen"

.field private static final REPORT_FAMILY_SPLIT_SCREEN:Ljava/lang/String; = "reportFamilySplitScreen"

.field private static final REPORT_MEMBER_DEATH_SCREEN:Ljava/lang/String; = "reportMemberDeathScreen"

.field private static final REPORT_MEMBER_MIGRATION_SCREEN:Ljava/lang/String; = "reportMemberMigrationScreen"


# instance fields
.field private areaSpinner:Landroid/widget/Spinner;

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

.field private familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerView:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headMembersMapWithFamilyIdAsKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private lastScreen:Ljava/lang/String;

.field private limit:J

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchString:Ljava/lang/String;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;

.field private titleTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private yesNoToggleButton:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 104
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->timer:Ljava/util/Timer;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    const-wide/16 v0, 0x1e

    .line 115
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->limit:J

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Ljava/util/Timer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addReportEventScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->footerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addMemberDetailsScreen()V

    return-void
.end method

.method private addFinalScreen(Ljava/lang/String;)V
    .locals 2

    .line 784
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->lastScreen:Ljava/lang/String;

    .line 785
    const-string p1, "finalScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 786
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 787
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v1, "You have successfully reported an event"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addMemberDetailsScreen()V
    .locals 11

    .line 645
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 648
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Member Details"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Member Name"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 651
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Health Id"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 655
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not available"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const-string v0, "Female"

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    const-string v0, "Male"

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 660
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v5, "Gender"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 664
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 665
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplayOnGivenDate(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 667
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v5, "Age"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v4, "Marital Status"

    .line 671
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 672
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 673
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v4, "Mobile Number"

    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 680
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfsc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfsc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 683
    :goto_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v6, "Bank Details"

    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 684
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v5, "Education Status"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v5, "Congenital Anomalies present"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 690
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 691
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 692
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 693
    array-length v5, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v7, v0, v6

    .line 694
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 695
    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 694
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 698
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 699
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 698
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 702
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 705
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v6, "Chronic Diseases present"

    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 706
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 707
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 708
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 709
    array-length v5, v0

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_9

    aget-object v7, v0, v6

    .line 710
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 711
    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 710
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 714
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 715
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 714
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 718
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 721
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v6, "Current Diseases present"

    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 722
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 723
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 724
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 725
    array-length v5, v0

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_c

    aget-object v7, v0, v6

    .line 726
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 727
    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 726
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 730
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 731
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 730
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 734
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v6, "Eye Diseases present"

    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 739
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 740
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 741
    array-length v1, v0

    :goto_9
    if-ge v2, v1, :cond_f

    aget-object v3, v0, v2

    .line 742
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 743
    invoke-virtual {v6, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-static {v5, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 746
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 747
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 750
    :cond_e
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    :cond_f
    :goto_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addMemberOptionScreen()V
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 604
    const-string v0, "memberOptionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 608
    const-string v1, "Member Name"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    const-string v1, "Health Id"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 612
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Select an Option"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    const-string v1, "View Member Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    const-string v1, "Report Member Migration"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    const-string v1, "Report Member Death"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V

    .line 639
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 641
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private addReportEventScreen(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 756
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 757
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 758
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 760
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "reportMemberDeathScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "reportFamilySplitScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "reportMemberMigrationScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v0, "reportFamilyMigrationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 774
    :pswitch_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure want to report this member death?"

    invoke-static {p1, p1, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 766
    :pswitch_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure want to report this family split?"

    invoke-static {p1, p1, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 770
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure want to report this member migration?"

    invoke-static {p1, p1, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 762
    :pswitch_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Are you sure want to report this family migration?"

    invoke-static {p1, p1, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 779
    :goto_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getYesNoToggleButton(Landroid/content/Context;)Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->yesNoToggleButton:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 780
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45e406fe -> :sswitch_3
        -0xecd48f4 -> :sswitch_2
        0x40630b4e -> :sswitch_1
        0x77316a32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 9
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

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 437
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    .line 441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 442
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v2, :cond_1

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    const-string v3, " null"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 449
    :cond_1
    const-string v2, "Head name not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v8, v2

    .line 451
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->showProcessDialog()V

    .line 261
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 262
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 263
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 264
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 265
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->footerView:Landroid/widget/LinearLayout;

    .line 267
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->retrieveLocationsAssignedToUser()V

    return-void
.end method

.method static synthetic lambda$addFamilyOptionSelectionScreen$0(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 496
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$addFamilyOptionSelectionScreen$1(Landroid/view/View;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 495
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p2, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private storeAshaReportedEvent()V
    .locals 8

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 795
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 796
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 797
    sget-object v2, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 799
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    .line 800
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 801
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    .line 802
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 803
    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 806
    new-instance v2, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 808
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 809
    const-string v0, "P"

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 810
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 811
    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 813
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;-><init>()V

    .line 814
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setReportedOn(Ljava/lang/Long;)V

    .line 815
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setLocationId(Ljava/lang/Long;)V

    .line 816
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setFamilyId(Ljava/lang/Long;)V

    .line 818
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 819
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->lastScreen:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "reportMemberDeathScreen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "reportFamilySplitScreen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "reportMemberMigrationScreen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "reportFamilyMigrationScreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    const-string v5, " - "

    const-string v6, "ASHA_REPORTED_EVENT"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 855
    :pswitch_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 856
    const-string v0, "REPORT_DEATH"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setEventType(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 859
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->markMemberAsDead(Ljava/lang/Long;)V

    goto/16 :goto_4

    .line 834
    :pswitch_1
    const-string v0, "REPORT_FAMILY_SPLIT"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setEventType(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_2

    .line 840
    :cond_4
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 842
    :goto_2
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 846
    :pswitch_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setMemberId(Ljava/lang/Long;)V

    .line 847
    const-string v0, "REPORT_MIGRATION"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setEventType(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->markMemberAsMigrated(Ljava/lang/Long;)V

    goto :goto_4

    .line 821
    :pswitch_3
    const-string v0, "REPORT_FAMILY_MIGRATION"

    invoke-virtual {v3, v0}, Lcom/argusoft/sewa/android/app/databean/AshaReportedEventDataBean;->setEventType(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v1, v6}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 824
    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    goto :goto_3

    .line 827
    :cond_5
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 829
    :goto_3
    invoke-static {}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getFullFormOfEntity()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->markFamilyAsMigrated(Ljava/lang/String;)V

    .line 866
    :goto_4
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 868
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45e406fe -> :sswitch_3
        -0xecd48f4 -> :sswitch_2
        0x40630b4e -> :sswitch_1
        0x77316a32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 293
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

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

    .line 299
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 302
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Asha Area"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->hideProcessDialog()V

    return-void
.end method

.method public addFamilyOptionSelectionScreen()V
    .locals 6

    .line 458
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 459
    const-string v0, "familyOptionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 460
    const-string v0, "Family details"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 466
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 473
    const-string v1, "Family ID"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    const-string v1, "Members Info"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-static {p0, v1, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    new-instance v1, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 479
    const-string v4, "Click here to see color codes"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$color;->black:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_info_black:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x14

    .line 482
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 483
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x10

    .line 484
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 485
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 490
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/argusoft/sewa/android/app/R$layout;->color_code_alert:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 491
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 492
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 494
    new-instance v5, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    const-string v1, "View Family Details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v1, "Report Family Migration"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 506
    const-string v1, "Report Family Split"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v3, "What do you want to do with this family?"

    invoke-static {v2, v2, p0, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V

    .line 531
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->footerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public addMemberSelectionScreen()V
    .locals 5

    .line 583
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v3, "Select a member from list"

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 589
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V

    .line 598
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 313
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 314
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSelectedFamilyDetails()V
    .locals 6

    .line 539
    const-string v0, "familyDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 541
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Family ID"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v4, "Head of the family"

    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Address Line 1"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Address Line 2"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "ASHA Area"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 554
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Anganwadi Name"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->getLocationBeanByActualId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LocationBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 562
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Religion"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 564
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Caste"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Seasonal Migrant"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Vulnerable Family"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "BPL Family"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "Toilet Available"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getToiletAvailableFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "MAA / MAA Vatsalya Card No"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMaaVatsalyaNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v2, "RSBY Card Number"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 578
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRsbyCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 240
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V

    .line 253
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Family Health Survey?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 256
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v1, :cond_14

    .line 152
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "familySelectionScreen"

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "finalScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "reportMemberDeathScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "familyDetailsScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v1, "reportFamilySplitScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "memberDetailsScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "memberSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string v1, "reportMemberMigrationScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_8
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "reportFamilyMigrationScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :goto_1
    const/16 v1, 0x2713

    const/16 v5, 0x2712

    const-string v6, "Please Select an option"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 230
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->storeAshaReportedEvent()V

    .line 231
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_3

    .line 184
    :pswitch_1
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    .line 185
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addMemberSelectionScreen()V

    goto/16 :goto_3

    .line 191
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    if-eq p1, v3, :cond_a

    .line 192
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 193
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addMemberOptionScreen()V

    goto/16 :goto_3

    .line 195
    :cond_a
    const-string p1, "Please Select a Member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 169
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    .line 173
    :cond_b
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    if-eq p1, v3, :cond_c

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 175
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addFamilyOptionSelectionScreen()V

    goto/16 :goto_3

    .line 177
    :cond_c
    const-string p1, "Please Select a Family"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 170
    :cond_d
    :goto_2
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->navigateToHomeScreen(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->finish()V

    goto/16 :goto_3

    .line 216
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->yesNoToggleButton:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 219
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addFinalScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 221
    :cond_e
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_14

    .line 222
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addMemberOptionScreen()V

    goto/16 :goto_3

    .line 225
    :cond_f
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 154
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->showProcessDialog()V

    .line 155
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 157
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 158
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 162
    :cond_11
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 163
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addSearchTextBox()V

    .line 165
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 166
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    goto :goto_3

    .line 201
    :pswitch_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->yesNoToggleButton:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object p1

    .line 202
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 204
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_12

    .line 205
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addFinalScreen(Ljava/lang/String;)V

    goto :goto_3

    .line 206
    :cond_12
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_14

    .line 207
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addFamilyOptionSelectionScreen()V

    goto :goto_3

    .line 210
    :cond_13
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_14
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45e406fe -> :sswitch_9
        -0x308379e0 -> :sswitch_8
        -0xecd48f4 -> :sswitch_7
        -0xa1992ec -> :sswitch_6
        0x2cfd2b1e -> :sswitch_5
        0x3eb994d4 -> :sswitch_4
        0x40630b4e -> :sswitch_3
        0x59d6dc4a -> :sswitch_2
        0x77316a32 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    .line 127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 128
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->limit:J

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->offset:J

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFHSByArea(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    .line 387
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->offset:J

    .line 388
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->onLoadMoreBackground()V

    :cond_0
    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;)V"
        }
    .end annotation

    .line 393
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 873
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 875
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 911
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v1, :cond_10

    .line 875
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 880
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x102002c

    if-ne p1, v1, :cond_f

    .line 881
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "finalScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "reportMemberDeathScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "familyDetailsScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "reportFamilySplitScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "memberDetailsScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "memberSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "familyOptionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "familySelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v1, "reportMemberMigrationScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_a
    const-string v1, "reportFamilyMigrationScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_b
    const-string v1, "memberOptionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 935
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->lastScreen:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addReportEventScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 916
    :pswitch_1
    const-string p1, "Family details"

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addSelectedFamilyDetails()V

    goto/16 :goto_2

    .line 900
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 901
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 902
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    .line 903
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 904
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addSearchTextBox()V

    .line 905
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_2

    .line 887
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 888
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 889
    :cond_d
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 890
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 892
    :cond_e
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 893
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addAshaAreaSelectionSpinner()V

    .line 894
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 929
    :pswitch_4
    invoke-super {p0, v4}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 930
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    .line 931
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addMemberOptionScreen()V

    goto :goto_2

    .line 883
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 911
    :pswitch_6
    invoke-super {p0, v4}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setAlertRequired(Ljava/lang/Boolean;)V

    .line 912
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addFamilyOptionSelectionScreen()V

    goto :goto_2

    .line 921
    :pswitch_7
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    .line 922
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->footerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 923
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addMemberSelectionScreen()V

    :cond_f
    :goto_2
    return v2

    .line 876
    :cond_10
    :goto_3
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->navigateToHomeScreen(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58d6ef05 -> :sswitch_b
        -0x45e406fe -> :sswitch_a
        -0x308379e0 -> :sswitch_9
        -0xecd48f4 -> :sswitch_8
        -0xa1992ec -> :sswitch_7
        0x2c2a02c5 -> :sswitch_6
        0x2cfd2b1e -> :sswitch_5
        0x3eb994d4 -> :sswitch_4
        0x40630b4e -> :sswitch_3
        0x59d6dc4a -> :sswitch_2
        0x77316a32 -> :sswitch_1
        0x7b63fd82 -> :sswitch_0
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
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setContentView(Landroid/view/View;)V

    .line 137
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->finish()V

    .line 144
    :cond_1
    const-string v0, "Family Health Survey"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 7

    const-wide/16 v0, 0x0

    .line 365
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->offset:J

    const/4 v0, -0x1

    .line 366
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedFamilyIndex:I

    .line 367
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->searchString:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->offset:J

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFHSByArea(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    .line 370
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->offset:J

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForFHSByArea(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 374
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setFamilySelectionScreen(Ljava/lang/Boolean;)V

    return-void
.end method

.method public retrieveLocationsAssignedToUser()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    .line 273
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setBodyDetail()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setFamilySelectionScreen(Ljava/lang/Boolean;)V
    .locals 3

    .line 404
    const-string p1, "familySelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->screen:Ljava/lang/String;

    .line 405
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 406
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 407
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 409
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    const-string v0, "Select Family"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 414
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V

    .line 420
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 421
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->titleTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 425
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->noMemberTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 426
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->hideProcessDialog()V

    return-void
.end method
