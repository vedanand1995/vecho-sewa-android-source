.class public Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AbhaNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final ASHA_AREA_SELECTION_SCREEN:Ljava/lang/String; = "ashaAreaSelectionScreen"

.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final LIMIT:I = 0x1e

.field private static final OPTION_SELECTION_SCREEN:Ljava/lang/String; = "optionSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field abhaCreationService:Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;

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

.field familyBeansDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private footerLayout:Landroid/widget/LinearLayout;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private locationBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private locationId:Ljava/lang/String;

.field locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field memberBeansDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:I

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private role:Ljava/lang/String;

.field private screen:Ljava/lang/String;

.field private selectedAshaArea:Ljava/lang/Integer;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private spinner:Landroid/widget/Spinner;

.field storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 100
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->timer:Ljava/util/Timer;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamilyIndex:I

    .line 113
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMemberIndex:I

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)Ljava/util/Timer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->role:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMemberIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMemberIndex:I

    return p1
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    return-object p0
.end method

.method private addFamilyList()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->role:Ljava/lang/String;

    const-string v1, "ASHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveFamilyListFromDBForAsha(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    .locals 4

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    const-string v1, "Family details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setSubTitle(Ljava/lang/String;)V

    .line 536
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 537
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 538
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 545
    const-string v1, "Family ID"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    const-string v0, "Members Info"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 551
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->getMemberList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 553
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)V

    .line 560
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_abha_number:I

    invoke-static {v1, p1, v2, v0, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 561
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 562
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 565
    :cond_1
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 566
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 12
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

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 489
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 493
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 494
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 496
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

    .line 497
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, " null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 501
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 503
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->CFHC_VERIFIED_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPendingAbhaCount()I

    move-result v11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 506
    :cond_2
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPendingAbhaCount()I

    move-result v11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    return-object v1
.end method

.method private getMemberList(Ljava/util/List;)Ljava/util/List;
    .locals 9
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

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 521
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v5, v2

    .line 523
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 524
    :goto_2
    sget-object v2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->CFHC_VERIFIED_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 527
    :cond_2
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private handleBackClick()V
    .locals 3

    .line 713
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "optionSelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "familySelectionScreen"

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->finish()V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 716
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->role:Ljava/lang/String;

    const-string v1, "ASHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addAshaAreaSelectionSpinner()V

    .line 718
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addVillageSelectionSpinner()V

    .line 721
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    goto :goto_0

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 726
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V

    .line 727
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addFamilyList()V

    .line 728
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->showProcessDialog()V

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->role:Ljava/lang/String;

    .line 148
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 149
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 150
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    .line 153
    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->role:Ljava/lang/String;

    const-string v1, "ASHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->retrieveLocationsAssignedToUser()V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setBodyDetail()V

    :goto_0
    return-void
.end method

.method private reFetchMemberList()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 394
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 395
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 396
    const-string v0, "optionSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 186
    const-string v0, "ashaAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->areaSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

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

    .line 192
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 195
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->areaSpinner:Landroid/widget/Spinner;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Asha Area"

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->hideProcessDialog()V

    return-void
.end method

.method public addSearchTextBox()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 331
    const-string v2, "Search Family"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    .line 409
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

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

    .line 413
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 416
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->spinner:Landroid/widget/Spinner;

    .line 417
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 419
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 421
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 422
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 423
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->spinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->hideProcessDialog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 579
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 580
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x3fe

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 582
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamilyIndex:I

    if-ne p2, p1, :cond_0

    .line 584
    const-string p1, "locationId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationId:Ljava/lang/String;

    .line 585
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->showProcessDialog()V

    .line 586
    const-string p1, "familySelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    .line 587
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 588
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V

    .line 589
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addFamilyList()V

    goto/16 :goto_2

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->finish()V

    goto/16 :goto_2

    :cond_1
    const/16 p2, 0x3fc

    .line 593
    const-string v0, "actualID"

    if-ne p1, p2, :cond_6

    .line 594
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-nez p1, :cond_2

    .line 595
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->handleBackClick()V

    return-void

    :cond_2
    if-eqz p3, :cond_5

    .line 598
    const-string p1, "healthIdNumber"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 599
    const-string p2, "isFromOffline"

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 601
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->memberBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 602
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->abhaCreationService:Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;->createMigrationForOfflineAbha(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/MemberBean;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 604
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 608
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->memberBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 609
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->setHealthIdNumber(Ljava/lang/String;)V

    .line 610
    const-string p1, "healthId"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->setHealthId(Ljava/lang/String;)V

    .line 611
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/argusoft/sewa/android/app/model/MemberBean;->setUpdatedOn(Ljava/util/Date;)V

    .line 612
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->memberBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 614
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string p2, "familyId"

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 616
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getPendingAbhaCount()I

    move-result p2

    if-lez p2, :cond_4

    add-int/lit8 p2, p2, -0x1

    .line 618
    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->setPendingAbhaCount(I)V

    .line 620
    :cond_4
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 622
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 626
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->reFetchMemberList()V

    goto :goto_2

    :cond_6
    const/16 p2, 0x3fd

    if-ne p1, p2, :cond_9

    if-eqz p3, :cond_8

    .line 629
    const-class p1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    const-string p1, "OfflineHealthIdBean"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 631
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz p2, :cond_7

    .line 633
    :try_start_2
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->memberBeansDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    invoke-virtual {p2}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/MemberBean;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 635
    invoke-virtual {p2}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_7
    const/4 p2, 0x0

    .line 638
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->abhaCreationService:Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;

    const-class v1, Lcom/argusoft/sewa/android/app/databean/OfflineHealthIdBean;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/AbhaCreationServiceImpl;->createMigrationForOfflineAbha(Ljava/lang/String;Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    .line 640
    :cond_8
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->handleBackClick()V

    :cond_9
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 647
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)V

    .line 660
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close ABHA number creation?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 663
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 234
    const-string v0, "memberId"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v1, :cond_11

    .line 235
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "optionSelectionScreen"

    const/4 v4, 0x0

    const-string v5, "familySelectionScreen"

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "villageSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "ashaAreaSelectionScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 322
    invoke-virtual {p0, v4}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_3

    .line 265
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamilyIndex:I

    if-eq p1, v6, :cond_4

    .line 266
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 267
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamilyIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 268
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 269
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 270
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    goto/16 :goto_3

    .line 272
    :cond_4
    const-string p1, "Please Select a Family"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 237
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 239
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 240
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationId:Ljava/lang/String;

    .line 244
    :cond_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 245
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V

    .line 246
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addFamilyList()V

    .line 247
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    goto/16 :goto_3

    .line 276
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMemberIndex:I

    if-eq p1, v6, :cond_e

    .line 278
    :try_start_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->storeAnswerBeanDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 279
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 280
    const-string p1, "You have already initiated the offline abha creation for this, Please sync your application first."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 286
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-nez p1, :cond_8

    return-void

    .line 287
    :cond_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 288
    const-string p1, "Abha Number is already linked with this member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 294
    :cond_9
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity_;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    const-string v1, "featureName"

    const-string v3, "ABHA_NUMBER"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 299
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 298
    :cond_a
    const-string v1, ""

    .line 301
    :goto_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 302
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 303
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 304
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    :cond_b
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 307
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v2

    const-string v5, "nameOfBeneficiary"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :cond_c
    const-string v2, "dob"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v1, "gender"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "mobileNumber"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 314
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_d
    const/16 v0, 0x3fc

    .line 316
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 318
    :cond_e
    const-string p1, "Please Select a Member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 250
    :pswitch_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->showProcessDialog()V

    .line 251
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->areaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 253
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 254
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 258
    :cond_10
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 259
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V

    .line 261
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addFamilyList()V

    .line 262
    iput-object v5, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    :cond_11
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x308379e0 -> :sswitch_3
        -0x25dba41d -> :sswitch_2
        -0x13a69534 -> :sswitch_1
        -0xa1992ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 126
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 676
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->role:Ljava/lang/String;

    const-string v1, "ASHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1e

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForAbhaNumberByArea(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationId:Ljava/lang/String;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1e

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForAbhaNumberByVillage(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 681
    :goto_0
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    .line 682
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    const-string v1, "familySelectionScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->onLoadMoreBackground()V

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

    .line 687
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 690
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 692
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 698
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_1

    .line 706
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->handleBackClick()V

    :cond_1
    return v1

    .line 701
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setContentView(Landroid/view/View;)V

    .line 135
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->myIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->myIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->finish()V

    .line 142
    :cond_1
    const-string v0, "Create ABHA"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 434
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    const/4 v1, -0x1

    .line 435
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 437
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationId:Ljava/lang/String;

    const-wide/16 v4, 0x1e

    int-to-long v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForAbhaNumberByVillage(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    .line 438
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    goto :goto_0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForCFHCByVillage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 442
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveFamilyListFromDBForAsha(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    const/4 v1, -0x1

    .line 206
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    int-to-long v6, v1

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForAbhaNumberByArea(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    .line 209
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->offset:I

    goto :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedAshaArea:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForFHSByArea(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 213
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveLocationsAssignedToUser()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

    .line 165
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->setBodyDetailForAsha()V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationId:Ljava/lang/String;

    .line 221
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V

    .line 223
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addFamilyList()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 227
    :cond_1
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setBodyDetailForAsha()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->selectedAshaArea:Ljava/lang/Integer;

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->screen:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addSearchTextBox()V

    .line 175
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addFamilyList()V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 451
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 453
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 455
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)V

    if-eqz p1, :cond_0

    .line 463
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_three_item:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 465
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_three_item:I

    invoke-static {p1, v0, v2, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 467
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 471
    :cond_1
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 472
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AbhaNumberActivity;->hideProcessDialog()V

    return-void
.end method
