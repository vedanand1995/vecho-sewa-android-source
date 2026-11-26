.class public Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FHSAwwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_DETAILS_SCREEN:Ljava/lang/String; = "familyDetailsScreen"

.field private static final FAMILY_OPTION_SCREEN:Ljava/lang/String; = "familyOptionScreen"

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final MEMBER_DETAILS_SCREEN:Ljava/lang/String; = "memberDetailsScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"


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

.field private familyTextView:Lcom/google/android/material/textview/MaterialTextView;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

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

.field private limit:J

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private searchString:Ljava/lang/String;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->timer:Ljava/util/Timer;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    const-wide/16 v0, 0x1e

    .line 91
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->limit:J

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamilyIndex:I

    .line 96
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMemberIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;)Ljava/util/Timer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMemberIndex:I

    return p1
.end method

.method private addMemberDetailsScreen()V
    .locals 11

    .line 472
    const-string v0, "memberDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 476
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Member Details"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Member Name"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 481
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Health Id"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not available"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "Female"

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    const-string v0, "Male"

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 490
    :goto_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v5, "Gender"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

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

    .line 497
    :goto_1
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v5, "Age"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v4, "Marital Status"

    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v4, "Mobile Number"

    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 508
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfsc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfsc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 511
    :goto_2
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v6, "Bank Details"

    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v5, "Education Status"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v5, "Congenital Anomalies present"

    invoke-static {v3, v3, v4, v5}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 518
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 519
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 521
    array-length v5, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v7, v0, v6

    .line 522
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 523
    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 522
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 527
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v6, "Chronic Diseases present"

    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 535
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 537
    array-length v5, v0

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_9

    aget-object v7, v0, v6

    .line 538
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 539
    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 538
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 542
    :cond_7
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 543
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 542
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 546
    :cond_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v6, "Current Diseases present"

    .line 550
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 549
    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 552
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 553
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 554
    array-length v5, v0

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_c

    aget-object v7, v0, v6

    .line 555
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 556
    invoke-virtual {v10, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 555
    invoke-static {v9, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 559
    :cond_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 560
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 559
    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 563
    :cond_b
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v6, "Eye Diseases present"

    .line 567
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 566
    invoke-static {v3, v3, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 569
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 570
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 571
    array-length v1, v0

    :goto_9
    if-ge v2, v1, :cond_f

    aget-object v3, v0, v2

    .line 572
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 573
    invoke-virtual {v6, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-static {v5, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 576
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 577
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 580
    :cond_e
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    :cond_f
    :goto_a
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Main Menu"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
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

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 352
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    .line 356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 357
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v2, :cond_1

    .line 359
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

    .line 360
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 361
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

    .line 362
    const-string v3, " null"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 364
    :cond_1
    const-string v2, "Head name not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v8, v2

    .line 366
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

    .line 203
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->showProcessDialog()V

    .line 204
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 205
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 206
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 207
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    .line 209
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->retrieveLocationsAssignedToUser()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 234
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 238
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->areaSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 241
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

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

    .line 242
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 245
    invoke-static {p0, v1, v3, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->areaSpinner:Landroid/widget/Spinner;

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select Asha Area"

    invoke-static {v0, v0, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->hideProcessDialog()V

    return-void
.end method

.method public addFamilyOptionSelectionScreen()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 374
    const-string v0, "familyOptionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    .line 375
    const-string v0, "Family details"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 378
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 381
    const-string v1, "Family ID"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    const-string v1, "Members Info"

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addMemberSelectionScreen()V
    .locals 6

    .line 450
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v3, "Select a member of the family"

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

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

    .line 458
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    :cond_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;)V

    .line 467
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 255
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 256
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->searchFamilyEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSelectedFamilyDetails()V
    .locals 6

    .line 391
    const-string v0, "familyDetailsScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    .line 392
    const-string v0, "Family details"

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 395
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Family ID"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v4, "Head of the family"

    invoke-static {v3, v3, v2, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    .line 402
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Address Line 1"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 406
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Address Line 2"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 409
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "ASHA Area"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 412
    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationHierarchyByLocationId(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Anganwadi Name"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->getLocationBeanByActualId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/LocationBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Region"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 424
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Caste"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 427
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getValueOfListValuesById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Seasonal Migrant"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 430
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Vulnerable Family"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 433
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "BPL Family"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 436
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "Toilet Available"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 439
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getToiletAvailableFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->returnYesNoNotAvailableFromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "MAA / MAA Vatsalya Card No"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 442
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMaaVatsalyaNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v2, "RSBY Card Number"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 445
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRsbyCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getNotAvailableIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 183
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;)V

    .line 196
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Family Health Survey?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 199
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v1, :cond_c

    .line 126
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

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
    const-string v1, "familyDetailsScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "memberDetailsScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "memberSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "familyOptionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "familySelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addMemberSelectionScreen()V

    goto/16 :goto_3

    .line 164
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_3

    .line 168
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMemberIndex:I

    if-eq p1, v3, :cond_6

    .line 169
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMemberIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 170
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addMemberDetailsScreen()V

    goto/16 :goto_3

    .line 172
    :cond_6
    const-string p1, "Please Select a Member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 156
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addSelectedFamilyDetails()V

    goto :goto_3

    .line 142
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 146
    :cond_7
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamilyIndex:I

    if-eq p1, v3, :cond_8

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 148
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addFamilyOptionSelectionScreen()V

    goto :goto_3

    .line 150
    :cond_8
    const-string p1, "Please Select a Family"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 143
    :cond_9
    :goto_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->navigateToHomeScreen(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->finish()V

    goto :goto_3

    .line 128
    :pswitch_5
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->showProcessDialog()V

    .line 129
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 131
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 132
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 136
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 137
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addSearchTextBox()V

    .line 139
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_5
        -0xa1992ec -> :sswitch_4
        0x2c2a02c5 -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x3eb994d4 -> :sswitch_1
        0x59d6dc4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 100
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 6

    .line 654
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->limit:J

    iget-wide v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->offset:J

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFHSByArea(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    .line 655
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->offset:J

    .line 656
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->onLoadMoreBackground()V

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

    if-eqz p1, :cond_0

    .line 661
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 663
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 664
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 666
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 587
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 588
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 593
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_9

    .line 594
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "familySelectionScreen"

    const-string v4, "ashaAreaSelectionScreen"

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "familyDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "memberDetailsScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "familyOptionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Next"

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 623
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addFamilyOptionSelectionScreen()V

    goto :goto_2

    .line 632
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setSubTitle(Ljava/lang/String;)V

    .line 634
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedMemberIndex:I

    .line 635
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addMemberSelectionScreen()V

    goto :goto_2

    .line 628
    :pswitch_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addSelectedFamilyDetails()V

    goto :goto_2

    .line 614
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 615
    iput v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamilyIndex:I

    .line 616
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 617
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addSearchTextBox()V

    .line 618
    invoke-virtual {p0, v6}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 619
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    goto :goto_2

    .line 600
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 601
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 602
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 603
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->navigateToHomeScreen(Z)V

    goto :goto_2

    .line 605
    :cond_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 606
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addAshaAreaSelectionSpinner()V

    .line 607
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    goto :goto_2

    .line 596
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->navigateToHomeScreen(Z)V

    :goto_2
    return v1

    :cond_9
    return v2

    .line 589
    :cond_a
    :goto_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_5
        -0xa1992ec -> :sswitch_4
        0x2c2a02c5 -> :sswitch_3
        0x2cfd2b1e -> :sswitch_2
        0x3eb994d4 -> :sswitch_1
        0x59d6dc4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setContentView(Landroid/view/View;)V

    .line 112
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->finish()V

    .line 119
    :cond_1
    const-string v0, "Family Health Survey"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setTitle(Ljava/lang/String;)V

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

    .line 306
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->offset:J

    const/4 v0, -0x1

    .line 307
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedFamilyIndex:I

    .line 308
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->searchString:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->offset:J

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFHSByArea(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    .line 311
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->offset:J

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForFHSByArea(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 315
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setFamilySelectionScreen(Ljava/lang/Boolean;)V

    return-void
.end method

.method public retrieveLocationsAssignedToUser()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    .line 215
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->setBodyDetail()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addSearchTextBox()V

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setFamilySelectionScreen(Ljava/lang/Boolean;)V
    .locals 3

    .line 320
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 321
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 322
    const-string p1, "familySelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->screen:Ljava/lang/String;

    .line 324
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    const-string v0, "Select Family"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 326
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 328
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;)V

    .line 334
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_item:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    :cond_0
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->familyTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 339
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FHSAwwActivity;->hideProcessDialog()V

    return-void
.end method
