.class public Lcom/argusoft/sewa/android/app/activity/CFHCActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "CFHCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final LIMIT:I = 0x1e

.field private static final OPTION_SELECTION_SCREEN:Ljava/lang/String; = "optionSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
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

.field private footerLayout:Landroid/widget/LinearLayout;

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

.field private isAshaNotAssigned:Z

.field private isReverification:Z

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

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:I

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private screen:Ljava/lang/String;

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private spinner:Landroid/widget/Spinner;

.field private timer:Ljava/util/Timer;

.field versionBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/VersionBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 107
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->timer:Ljava/util/Timer;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamilyIndex:I

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->offset:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)Ljava/util/Timer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method private addAshaNotAssignedMessage()V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 417
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 419
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 420
    array-length v2, v2

    if-gt v2, v1, :cond_0

    .line 421
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isAshaNotAssigned:Z

    goto :goto_0

    .line 426
    :cond_1
    iput-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isAshaNotAssigned:Z

    .line 428
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isAshaNotAssigned:Z

    if-eqz v0, :cond_3

    .line 429
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private addFamilyList()V
    .locals 1

    .line 281
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addAshaNotAssignedMessage()V

    .line 282
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isAshaNotAssigned:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addOptionForFamily()V
    .locals 3

    .line 1000
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "What do you want to do with this family?"

    .line 1001
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1000
    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    if-eqz v1, :cond_0

    .line 1005
    const-string v1, "Re-verify this family"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1007
    :cond_0
    const-string v1, "Verify this family"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    const-string v1, "Merge this family with another family"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    const-string v1, "Migrate this family to another location"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    const-string v1, "Add new member"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    :goto_0
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)V

    .line 1049
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1051
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    .locals 5

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    const-string v1, "Family details"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setSubTitle(Ljava/lang/String;)V

    .line 442
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 443
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 444
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 451
    const-string v1, "Family ID"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    const-string v1, "Members Info"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    invoke-static {p0, p1, p0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMembersListForDisplay(Landroid/content/Context;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    new-instance p1, Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;)V

    .line 458
    const-string v1, "Click here to see color codes"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$color;->black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$drawable;->ic_info_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x14

    .line 461
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 462
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x10

    .line 463
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 469
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->color_code_alert:I

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 471
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 473
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 11
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

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 359
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    .line 363
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 366
    :try_start_0
    const-string v2, "2026/01/01 00:00:00"

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    .line 371
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 372
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 374
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

    .line 375
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v4

    const-string v6, " null"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 376
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

    .line 377
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 379
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object v9, v3

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastFhsDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastFhsDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 385
    :cond_2
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    return-object v1
.end method

.method private static getReverificationComment(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;
    .locals 5

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    const-string v1, "Family ID"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v3, "Head of the family"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 401
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->showProcessDialog()V

    .line 152
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 153
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 154
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 158
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setBodyDetail()V

    return-void
.end method

.method static synthetic lambda$addSelectedFamilyDetails$5(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 475
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$addSelectedFamilyDetails$6(Landroid/view/View;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 474
    sget p2, Lcom/argusoft/sewa/android/app/R$id;->buttonAlert:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p2, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setSharedPropertiesAndDataMaps(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 572
    const-string v0, "ABDM_HEALTH_ID"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->versionBeanDao:Lcom/j256/ormlite/dao/Dao;

    const-string v6, "key"

    const-string v7, "featuresList"

    invoke-interface {v5, v6, v7}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 573
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 574
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/VersionBean;

    .line 575
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/VersionBean;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 576
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "generateAbdmHealthId"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 580
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    :cond_0
    :goto_0
    const-string v0, "locationId"

    const-string v5, "familyId"

    const-string v6, "familyFound"

    const-string v7, "headOfFamily"

    const-string v8, "Not available"

    const-string v9, "1"

    if-nez v2, :cond_1

    .line 584
    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 585
    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const/4 v2, -0x1

    .line 586
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    .line 587
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 594
    :cond_1
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sput-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v11

    .line 598
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 599
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v14

    const-string v15, "CFHC_MV"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v12

    const-string v14, "CFHC_MN"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 600
    :cond_3
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalVerifiedFamilyMembersCount:Ljava/lang/Integer;

    goto :goto_1

    .line 604
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sput-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    .line 605
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 606
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isMobileVerificationBlocked:Ljava/lang/Boolean;

    .line 607
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isAnyMemberMobileVerificationDone:Ljava/lang/Boolean;

    .line 608
    sget-object v11, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "reverificationComment"

    invoke-static/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->getReverificationComment(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "houseNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHouseNumber()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "address1"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress1()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "address2"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAddress2()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "maaVatsalyaNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMaaVatsalyaNumber()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "rsbyCardNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRsbyCardNumber()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "rationCardNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getRationCardNumber()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v11, "bplCardNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplCardNumber()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLocationId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "state"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "defaultCaste"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getCaste()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "defaultReligion"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getReligion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 623
    const-string v5, "nameForLog"

    if-eqz v0, :cond_5

    .line 624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v0

    const-string v8, " null"

    const-string v11, ""

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 626
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 629
    :cond_5
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v8

    .line 629
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 634
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "areaId"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAreaId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPvtgFlag()Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "pvtgFlag"

    const-string v8, "2"

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPvtgFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 638
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 639
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPvtgFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getPvtgFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 640
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_8
    :goto_3
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "bplFlag"

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getBplFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 645
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_9
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "toiletAvailableFlag"

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getToiletAvailableFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getToiletAvailableFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 650
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "vulnerableFlag"

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 654
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 655
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getVulnerableFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 656
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_c
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "seasonalMigrantFlag"

    if-eqz v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 660
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 661
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getSeasonalMigrantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 662
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_e
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 666
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v5, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 667
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveSubcenterIdFromAnganwadiId(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 666
    const-string v11, "defaultPhc"

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "defaultAnganwadi"

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getAnganwadiId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getUpgradedMaaToPmjay()Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "upgradedMaaToPmjay"

    if-eqz v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getUpgradedMaaToPmjay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 672
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 673
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getUpgradedMaaToPmjay()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getUpgradedMaaToPmjay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 674
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_11
    :goto_6
    iget-boolean v0, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    const-string v5, "3"

    if-eqz v0, :cond_15

    .line 678
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v11, "com.argusoft.imtecho.family.state.archived"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 679
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v11, "com.argusoft.imtecho.family.state.archived.fhsr.reverification"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 680
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v11, "com.argusoft.imtecho.family.state.archived.mo.reverification"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7

    .line 682
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v11, "com.argusoft.imtecho.family.state.new.fhsr.reverification"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v11, "com.argusoft.imtecho.family.state.new.mo.reverification"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 684
    :cond_13
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 681
    :cond_14
    :goto_7
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_15
    :goto_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 691
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "memberId"

    .line 692
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 693
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v15

    .line 691
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "memberFullName"

    .line 695
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 696
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v15

    .line 694
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "firstName"

    .line 698
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 699
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v15

    .line 697
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "middleName"

    .line 701
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 702
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v15

    .line 700
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "lastName"

    .line 704
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 705
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v15

    .line 703
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "nameBasedOnAadhar"

    .line 707
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 708
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameBasedOnAadhar()Ljava/lang/String;

    move-result-object v15

    .line 706
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "mobileNumber"

    .line 710
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 711
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumber()Ljava/lang/String;

    move-result-object v15

    .line 709
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "aadharNumber"

    .line 713
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 714
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAadharNumber()Ljava/lang/String;

    move-result-object v15

    .line 712
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "bankAccountNumber"

    .line 716
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 717
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAccountNumber()Ljava/lang/String;

    move-result-object v15

    .line 715
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "nameAsPerBank"

    .line 719
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 720
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNameAsPerBankAccount()Ljava/lang/String;

    move-result-object v15

    .line 718
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "ifsc"

    .line 722
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 723
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIfsc()Ljava/lang/String;

    move-result-object v15

    .line 721
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "pmjayCardNumber"

    .line 725
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 726
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getPmjayNumber()Ljava/lang/String;

    move-result-object v15

    .line 724
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "uniqueHealthId"

    .line 728
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 729
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v15

    .line 727
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "defaultMaritalStatus"

    .line 731
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 732
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v15

    .line 730
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 734
    const-string v14, "ans12"

    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 733
    invoke-interface {v12, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "memberState"

    .line 737
    invoke-static {v15, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 738
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v3

    .line 736
    invoke-interface {v12, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "brnNumber"

    .line 740
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 741
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getBrnNumber()Ljava/lang/String;

    move-result-object v15

    .line 739
    invoke-interface {v3, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 744
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "dob"

    .line 745
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 746
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    .line 744
    invoke-interface {v3, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "dobDisplay"

    .line 748
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 749
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 747
    invoke-interface {v3, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDob()Ljava/lang/Long;

    move-result-object v3

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDayOnGivenDate(Ljava/lang/Long;Ljava/lang/Long;)[I

    move-result-object v3

    .line 752
    aget v12, v3, v4

    aget v15, v3, v13

    const/16 v16, 0x2

    aget v3, v3, v16

    invoke-static {v12, v15, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getAgeDisplay(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 754
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v15, "ageAsPerDate"

    .line 755
    invoke-static {v15, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 754
    invoke-interface {v12, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :cond_16
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 760
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "gender"

    .line 761
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 762
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderLabelFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 760
    invoke-interface {v3, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 764
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 765
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getGenderValueAs123FromGender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 763
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_17
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyHeadFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 769
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 770
    invoke-static {v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v12

    .line 769
    invoke-interface {v3, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "familyHeadFlag"

    .line 773
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 772
    invoke-interface {v3, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "grandfatherName"

    .line 776
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 777
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v14

    .line 775
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "headCount"

    .line 779
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 780
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 778
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 782
    :cond_18
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "familyHeadFlag"

    .line 783
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 782
    invoke-interface {v3, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "relationWithHOF"

    .line 786
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 787
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getRelationWithHof()Ljava/lang/String;

    move-result-object v14

    .line 785
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :goto_a
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 791
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 793
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "motherId"

    .line 794
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 795
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMotherId()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    .line 793
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "motherName"

    .line 797
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 798
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-interface {v12, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_19
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 803
    iget-object v3, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 805
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "husbandId"

    .line 806
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 807
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHusbandId()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    .line 805
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "husbandName"

    .line 809
    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 810
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/model/MemberBean;)Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-interface {v12, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_1a
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->isAadharUpdated()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 815
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "aadhaarAvailable"

    .line 816
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 815
    invoke-interface {v3, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :cond_1b
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNormalCycleDays()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 821
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "defaultNormalCycleDays"

    .line 822
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 823
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getNormalCycleDays()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 821
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_1c
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 828
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "menopauseArrived"

    .line 829
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 828
    invoke-interface {v3, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 832
    :cond_1d
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "menopauseArrived"

    .line 833
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 832
    invoke-interface {v3, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :goto_b
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 838
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "defaultFamilyPlanningMethod"

    .line 839
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 840
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyPlanningMethod()Ljava/lang/String;

    move-result-object v14

    .line 838
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_1e
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFpInsertOperateDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 844
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "fpInsertOperateDate"

    .line 845
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 846
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFpInsertOperateDate()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    .line 844
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_1f
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGender()Ljava/lang/String;

    move-result-object v3

    const-string v12, "F"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 850
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 851
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "defaultIsPregnant"

    .line 852
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 851
    invoke-interface {v3, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 855
    :cond_20
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "defaultIsPregnant"

    .line 856
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 855
    invoke-interface {v3, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :goto_c
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 860
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "defaultLmp"

    .line 861
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 862
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLmpDate()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    .line 860
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_21
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 865
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "lastDeliveryDate"

    .line 866
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 867
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastDeliveryDate()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    .line 865
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_22
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 872
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "lastMethodOfContraception"

    .line 873
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 874
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v14

    .line 872
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    :cond_23
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMobileNumberVerified()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 877
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isAnyMemberMobileVerificationDone:Ljava/lang/Boolean;

    .line 878
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "mobileNumberVerfied"

    .line 879
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 878
    invoke-interface {v3, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 882
    :cond_24
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "mobileNumberVerfied"

    .line 883
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 882
    invoke-interface {v3, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :goto_d
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 888
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "healthIdNumber"

    .line 889
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 890
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v14

    .line 888
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :cond_25
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 894
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "educationStatus"

    .line 895
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 896
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEducationStatus()Ljava/lang/String;

    move-result-object v14

    .line 894
    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    :cond_26
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    .line 901
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v12, Ljava/util/Date;

    sget-object v14, Lcom/argusoft/sewa/android/app/util/UtilBean;->JSON_DATE_DESERIALIZER:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v3, v12, v14}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 902
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v12

    const-class v14, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    invoke-virtual {v3, v12, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;

    .line 903
    sget-object v12, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v14, "MOVerified"

    invoke-static {v14, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getNsUploaded()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "T"

    goto :goto_e

    :cond_27
    const-string v4, "F"

    :goto_e
    invoke-interface {v12, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v12, "studentId"

    .line 906
    invoke-static {v12, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 907
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberAdditionalInfoDataBean;->getStudentId()Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-interface {v4, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_28
    iget-boolean v3, v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    if-eqz v3, :cond_2f

    .line 911
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_DEAD_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "memberStatus"

    if-eqz v3, :cond_29

    .line 912
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 913
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 912
    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 915
    :cond_29
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_ARCHIVED_CRITERIA_MEMBER_STATES:Ljava/util/List;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getState()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 916
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 917
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 916
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 920
    :cond_2a
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    .line 921
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 920
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :goto_f
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 926
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "congenitalStatus"

    .line 927
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 926
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "congenitalAnomalyIds"

    .line 930
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCongenitalAnomalyIds()Ljava/lang/String;

    move-result-object v12

    .line 929
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 933
    :cond_2b
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "congenitalStatus"

    .line 934
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 933
    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :goto_10
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 939
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "chronicDiseaseStatus"

    .line 940
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 939
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "chronicDiseaseIds"

    .line 943
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 944
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getChronicDiseaseIds()Ljava/lang/String;

    move-result-object v12

    .line 942
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 946
    :cond_2c
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "chronicDiseaseStatus"

    .line 947
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    :goto_11
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 952
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentDiseaseStatus"

    .line 953
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 952
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentDiseaseIds"

    .line 956
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 957
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentDiseaseIds()Ljava/lang/String;

    move-result-object v12

    .line 955
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 959
    :cond_2d
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "currentDiseaseStatus"

    .line 960
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 959
    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :goto_12
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 965
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "eyeIssueStatus"

    .line 966
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 965
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "eyeIssueIds"

    .line 969
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 970
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getEyeIssueIds()Ljava/lang/String;

    move-result-object v12

    .line 968
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 972
    :cond_2e
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "eyeIssueStatus"

    .line 973
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 972
    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :goto_13
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 978
    sget-object v3, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "healthIdNumber"

    .line 979
    invoke-static {v4, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getRelatedPropertyNameWithLoopCounter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 980
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getHealthIdNumber()Ljava/lang/String;

    move-result-object v12

    .line 978
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :cond_2f
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    .line 985
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_9

    .line 991
    :cond_31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 992
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 993
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v3, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_32
    const/4 v5, 0x0

    .line 995
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;

    const-string v3, "Add New"

    invoke-direct {v0, v9, v3, v5}, Lcom/argusoft/sewa/android/app/databean/OptionDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    sput-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->middleNameList:Ljava/util/List;

    return-void
.end method

.method private startFamilyHealthSurvey(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    .locals 2

    .line 482
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->showProcessDialog()V

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 486
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 487
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setSharedPropertiesAndDataMaps(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 490
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const-string v0, "entity"

    const-string v1, "CFHC"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 492
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->showProcessDialog()V

    return-void
.end method

.method private startMemberHealthSurvey(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V
    .locals 2

    .line 496
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->showProcessDialog()V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    .line 498
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 501
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    .line 502
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v1, p1, p2, v0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForMemberUpdateForm(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/SharedPreferences;)V

    .line 505
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const-string p2, "entity"

    const-string v0, "MEMBER_UPDATE"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const/16 p2, 0x3f2

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 507
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->showProcessDialog()V

    return-void
.end method


# virtual methods
.method public addSearchTextBox()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    const-string v1, "ADD NEW FAMILY"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda7;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)V

    invoke-static {v1, v0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 230
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x14

    const/16 v1, 0xa

    .line 233
    const-string v2, "Search Family"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 6

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "Select Village"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

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

    .line 293
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 296
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->spinner:Landroid/widget/Spinner;

    .line 297
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

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

    .line 301
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 302
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->spinner:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$addAshaNotAssignedMessage$3$com-argusoft-sewa-android-app-activity-CFHCActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 432
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$addAshaNotAssignedMessage$4$com-argusoft-sewa-android-app-activity-CFHCActivity()V
    .locals 7

    .line 430
    new-instance v6, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    new-instance v4, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)V

    const/16 v5, -0x69

    const/4 v2, 0x0

    const-string v3, "ASHA worker not assigned for the areas in this village. Please contact Call Center before starting the Survey."

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 434
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$addOptionForFamily$7$com-argusoft-sewa-android-app-activity-CFHCActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    if-nez p3, :cond_1

    .line 1015
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    sget-object p2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1017
    sget-object p2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1018
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1019
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    goto :goto_0

    .line 1021
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 1023
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startFamilyHealthSurvey(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto/16 :goto_2

    .line 1024
    :cond_1
    const-string p1, "locationId"

    const/4 p2, 0x1

    if-ne p3, p2, :cond_2

    .line 1025
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    const-class p4, Lcom/argusoft/sewa/android/app/activity/FamilyMergeActivity_;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    .line 1026
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p3, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "familyToExpand"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const/16 p2, 0x3ea

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_2
    const/4 p4, 0x2

    if-ne p3, p4, :cond_3

    .line 1030
    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    const-class p5, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity_;

    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    .line 1031
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 1032
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    iget-object p5, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p4, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "familyToMigrate"

    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const-string p3, "isFamilyMigration"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1035
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const/16 p2, 0x3ec

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x3

    if-ne p3, p1, :cond_5

    .line 1037
    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->CFHC_FAMILY_STATES:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1039
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1040
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    goto :goto_1

    .line 1042
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    :goto_1
    const/4 p1, 0x0

    .line 1045
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, p1, p2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startMemberHealthSurvey(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    :cond_5
    :goto_2
    return-void
.end method

.method synthetic lambda$addSearchTextBox$0$com-argusoft-sewa-android-app-activity-CFHCActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 228
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startFamilyHealthSurvey(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    return-void
.end method

.method synthetic lambda$onBackPressed$8$com-argusoft-sewa-android-app-activity-CFHCActivity(Landroid/view/View;)V
    .locals 1

    .line 1057
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1058
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1059
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->navigateToHomeScreen(Z)V

    .line 1060
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->finish()V

    goto :goto_0

    .line 1062
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$1$com-argusoft-sewa-android-app-activity-CFHCActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 335
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamilyIndex:I

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$2$com-argusoft-sewa-android-app-activity-CFHCActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 349
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 512
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 513
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, -0x1

    .line 514
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamilyIndex:I

    const/16 v2, 0x3e9

    .line 515
    const-string v3, "familySelectionScreen"

    if-ne p1, v2, :cond_0

    .line 516
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 517
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSearchTextBox()V

    .line 518
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addFamilyList()V

    .line 519
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->hideProcessDialog()V

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0x3f2

    .line 521
    const-string v4, "optionSelectionScreen"

    if-ne p1, v2, :cond_1

    .line 522
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 523
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 524
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 525
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addOptionForFamily()V

    .line 526
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    .line 527
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->hideProcessDialog()V

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_4

    .line 529
    const-string p1, "isMerged"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 531
    const-string p1, "familyToExpand"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 532
    const-string p2, "familyToMerge"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 534
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p3, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object p3

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_VERIFIED_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 537
    sget-object v1, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_NEW_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p3, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 541
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansExceptArchivedAndDeadByFamilyId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p3, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 545
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberDataBeansByFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 548
    :goto_0
    invoke-direct {p0, p3}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startFamilyHealthSurvey(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    goto :goto_1

    .line 550
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 551
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 552
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addOptionForFamily()V

    .line 553
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 p3, 0x3ec

    if-ne p1, p3, :cond_6

    if-ne p2, v0, :cond_5

    .line 557
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 558
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSearchTextBox()V

    .line 559
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addFamilyList()V

    .line 560
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 562
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 563
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 564
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addOptionForFamily()V

    .line 565
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1056
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)V

    .line 1066
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Comprehensive Family Health Census?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 1069
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne v0, v1, :cond_5

    .line 180
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "familySelectionScreen"

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->navigateToHomeScreen(Z)V

    goto/16 :goto_0

    .line 195
    :cond_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamilyIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 196
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 197
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamilyIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 199
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 201
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSelectedFamilyDetails(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    .line 202
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addOptionForFamily()V

    .line 203
    const-string p1, "optionSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    goto/16 :goto_0

    .line 205
    :cond_1
    const-string p1, "Select a family for verification"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 184
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSearchTextBox()V

    .line 191
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addFamilyList()V

    .line 192
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2737

    if-ne v0, v1, :cond_6

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Member "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz p1, :cond_6

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-direct {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startMemberHealthSurvey(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 130
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 1079
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->offset:I

    int-to-long v5, v3

    const-wide/16 v3, 0x1e

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForCFHCByVillage(Ljava/lang/String;ZJJ)Ljava/util/List;

    move-result-object v0

    .line 1080
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->offset:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->offset:I

    .line 1081
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 1074
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->onLoadMoreBackground()V

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

    .line 1086
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1089
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 1091
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1097
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1099
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_5

    .line 1106
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "optionSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "familySelectionScreen"

    if-nez v0, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->finish()V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 1109
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->finish()V

    goto :goto_0

    .line 1110
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1111
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 1113
    :cond_3
    const-string p1, "villageSelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    .line 1114
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1115
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addVillageSelectionSpinner()V

    .line 1116
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1121
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1122
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSearchTextBox()V

    .line 1123
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addFamilyList()V

    .line 1124
    iput-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    :cond_5
    :goto_0
    return v1

    .line 1100
    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 3

    .line 135
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setContentView(Landroid/view/View;)V

    .line 139
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->myIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->finish()V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "reverification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    .line 147
    const-string v0, "Comprehensive Family Health Census"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->offset:I

    const/4 v1, -0x1

    .line 315
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 317
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    const-wide/16 v5, 0x1e

    int-to-long v7, v0

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForCFHCByVillage(Ljava/lang/String;ZJJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    .line 318
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->offset:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->offset:I

    goto :goto_0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->isReverification:Z

    invoke-virtual {v1, p1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForCFHCByVillage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 322
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationId:Ljava/lang/String;

    .line 166
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addSearchTextBox()V

    .line 168
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addFamilyList()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->locationBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addDataNotSyncedMsg(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    .line 172
    :cond_1
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->screen:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->addVillageSelectionSpinner()V

    :goto_0
    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    .line 333
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)V

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p1, v0, v2, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 342
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 346
    :cond_1
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 347
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/CFHCActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/CFHCActivity;->hideProcessDialog()V

    return-void
.end method
