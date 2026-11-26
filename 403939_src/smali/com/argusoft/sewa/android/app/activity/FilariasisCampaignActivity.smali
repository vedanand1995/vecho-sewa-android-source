.class public Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "FilariasisCampaignActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SCREEN:Ljava/lang/String; = "familyScreen"

.field private static final FILARIASIS_SIDE_EFFECTS_MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "filSideEffectMemberSelectionScreen"

.field private static final FILARIASIS_TYPE_SELECTION_SCREEN:Ljava/lang/String; = "filariasisTypeSelectionScreen"

.field private static final LOCATION_SCREEN:Ljava/lang/String; = "locationScreen"

.field private static final REQUEST_CODE:I = 0xc8


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private familyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headerTitle:Lcom/google/android/material/textview/MaterialTextView;

.field private limit:I

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

.field private memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:I

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectedFamilyIndex:I

.field private selectedFilariasisType:I

.field private selectedMemberToUpdateIndex:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFilariasisType:I

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familyList:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberList:Ljava/util/List;

    .line 93
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFamilyIndex:I

    .line 94
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedMemberToUpdateIndex:I

    const/16 v0, 0x1e

    .line 96
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    .line 99
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)Ljava/util/Timer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->timer:Ljava/util/Timer;

    return-object p1
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

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 391
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    .line 395
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 400
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 402
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 403
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 405
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 407
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 405
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private getMembersList(Ljava/util/List;)Ljava/util/List;
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

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 348
    new-instance v8, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showProcessDialog()V

    .line 120
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->setContentView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->nextButton:Landroid/widget/Button;

    .line 130
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->setLocationSelectionScreen()V

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->hideProcessDialog()V

    return-void
.end method

.method private setLocationSelectionScreen()V
    .locals 3

    .line 135
    const-string v0, "locationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startDynamicFormActivityForFilaria()V
    .locals 8

    .line 465
    :try_start_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFilariasisType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForFilariaCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;ILcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v2, v1, p0, v0, v3}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForFilariaCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;ILcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    const-string v1, "entity"

    const-string v2, "FILARIASIS_CAMPAIGN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc8

    .line 484
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 471
    :catch_0
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v6, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    const/16 v7, -0x69

    const/4 v4, 0x0

    const-string v5, "Some error occurred. Please refresh and try again"

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 478
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addSearchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 219
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addSearchTextBoxForFamily()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 263
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 266
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onBackPressed$5$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 492
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$2$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 370
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFamilyIndex:I

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$3$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 382
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setFilariasisSideEffectsMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 330
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedMemberToUpdateIndex:I

    return-void
.end method

.method synthetic lambda$showMDAorSideEffectsScreen$0$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 197
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFilariasisType:I

    .line 198
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showProcessDialog()V

    .line 199
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 200
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->addSearchTextBoxForFamily()V

    .line 201
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 203
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFilariasisType:I

    .line 204
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showProcessDialog()V

    .line 205
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 206
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->addSearchTextBox()V

    .line 207
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->retrieveSideEffectsMemberList(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startDynamicFormActivityForFilaria$4$com-argusoft-sewa-android-app-activity-FilariasisCampaignActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 475
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method public loadMoreFamiliesFilaria()V
    .locals 6

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 430
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    int-to-long v2, v2

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    int-to-long v4, v4

    .line 429
    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFilariaByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    .line 431
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    .line 432
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->onLoadMoreUiFamilies(Ljava/util/List;)V

    return-void
.end method

.method public loadMoreMembersFilaria()V
    .locals 8

    .line 436
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 438
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    int-to-long v4, v2

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    int-to-long v6, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 437
    invoke-virtual/range {v0 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForSideEffectsOfFilaria(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v0

    .line 439
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    .line 440
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->onLoadMoreUiMembers(Ljava/util/List;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 529
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showProcessDialog()V

    const/4 p1, -0x1

    .line 532
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFamilyIndex:I

    const/4 p1, 0x0

    .line 533
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const/4 p1, 0x0

    .line 534
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    .line 536
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showMDAorSideEffectsScreen()V

    .line 537
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->hideProcessDialog()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 489
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    const/16 v2, -0x97

    const-string v3, "Are you sure want to close Filariasis Campaign?"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 495
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-eq p1, v0, :cond_0

    return-void

    .line 152
    :cond_0
    const-string p1, "locationScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 154
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showMDAorSideEffectsScreen()V

    return-void

    .line 155
    :cond_2
    :goto_0
    const-string p1, "Please select location"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_3
    const-string p1, "familyScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    .line 166
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFamilyIndex:I

    if-ne p1, v0, :cond_4

    .line 167
    const-string p1, "Please Select a Family"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 171
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->startDynamicFormActivityForFilaria()V

    .line 174
    :cond_5
    const-string p1, "filSideEffectMemberSelectionScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 175
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedMemberToUpdateIndex:I

    if-ne p1, v0, :cond_6

    .line 176
    const-string p1, "Please Select a Member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 180
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->startDynamicFormActivityForFilaria()V

    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 2

    .line 419
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFilariasisType:I

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->loadMoreFamiliesFilaria()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->loadMoreMembersFilaria()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadMoreUiFamilies(Ljava/util/List;)V
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

    .line 445
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onLoadMoreUiMembers(Ljava/util/List;)V
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

    .line 455
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 500
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    .line 502
    const-string v0, "familyScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showProcessDialog()V

    .line 504
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->setLocationSelectionScreen()V

    .line 505
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->hideProcessDialog()V

    return v1

    .line 509
    :cond_0
    const-string v0, "locationScreen"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->navigateToHomeScreen(Z)V

    return v1

    .line 514
    :cond_1
    const-string v0, "filariasisTypeSelectionScreen"

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->navigateToHomeScreen(Z)V

    return v1

    .line 519
    :cond_2
    const-string v0, "filSideEffectMemberSelectionScreen"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->showMDAorSideEffectsScreen()V

    return v1

    .line 524
    :cond_3
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 110
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->finish()V

    .line 115
    :cond_0
    const-string v0, "Filariasis Campaign"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFilariaFamilyListFromDB(Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    const/4 v1, -0x1

    .line 292
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 295
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 296
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v3

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    int-to-long v4, v1

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    int-to-long v6, v1

    .line 295
    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForFilariaByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familyList:Ljava/util/List;

    .line 297
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    goto :goto_0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 300
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {v1, v2, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForFilariaByArea(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familyList:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 302
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public retrieveSideEffectsMemberList(Ljava/lang/CharSequence;)V
    .locals 10

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    const/4 v1, -0x1

    .line 308
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 311
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 312
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v3

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    int-to-long v6, v1

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    int-to-long v8, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 311
    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForSideEffectsOfFilaria(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberList:Ljava/util/List;

    .line 313
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    goto :goto_0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 316
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->limit:I

    int-to-long v6, v1

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->offset:I

    int-to-long v8, v1

    const/4 v4, 0x0

    .line 315
    invoke-virtual/range {v2 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMembersForSideEffectsOfFilaria(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/CharSequence;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberList:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 318
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->setFilariasisSideEffectsMemberSelectionScreen(Z)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 355
    const-string v0, "familyScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familyList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 363
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->familyList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {v1, v0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 378
    :cond_1
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->hideProcessDialog()V

    return-void
.end method

.method public setFilariasisSideEffectsMemberSelectionScreen(Z)V
    .locals 4

    .line 323
    const-string v0, "filSideEffectMemberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->memberList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->getMembersList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p1, v0, v2, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 336
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 338
    :cond_1
    const-string p1, "No members found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 339
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->hideProcessDialog()V

    return-void
.end method

.method public showMDAorSideEffectsScreen()V
    .locals 5

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFilariasisType:I

    .line 187
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedFamilyIndex:I

    .line 188
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->selectedMemberToUpdateIndex:I

    .line 190
    const-string v0, "filariasisTypeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->screen:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Filariasis Mass Drug Administration"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Side Effect Reporting"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;)V

    .line 210
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/FilariasisCampaignActivity;->hideProcessDialog()V

    return-void
.end method
