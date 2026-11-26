.class public Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "NPCBScreeningCHO.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final LIMIT:J = 0x1eL

.field private static final MEMBER_LIST_SCREEN:Ljava/lang/String; = "memberListScreen"

.field private static final REQUEST_CODE_FOR_NPCB_CHO_ACTIVITY:I = 0xc8

.field private static final TYPE_FOURTY_PLUS:I = 0x0

.field private static final TYPE_REFERRED_BY_FHW:I = 0x1

.field private static final TYPE_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScreen"


# instance fields
.field private ashaAreaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private beneficiariesSentByAsha:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private fourtyPlusMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private globalPanel:Landroid/widget/LinearLayout;

.field private listTitleView:Lcom/google/android/material/textview/MaterialTextView;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

.field npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

.field private offset:J

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private selectedBeneficiariesSentByAshaIndex:I

.field private selectedFourtyPlusMemberIndex:I

.field private selectedTypeIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->fourtyPlusMembers:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->beneficiariesSentByAsha:Ljava/util/List;

    const/4 v1, -0x1

    .line 80
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    .line 81
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedFourtyPlusMemberIndex:I

    .line 82
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedBeneficiariesSentByAshaIndex:I

    .line 86
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->timer:Ljava/util/Timer;

    .line 87
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->searchString:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->ashaAreaIds:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)Ljava/util/Timer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method private convertMembersToListItems(Ljava/util/List;)Ljava/util/List;
    .locals 10
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

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 312
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 314
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    .line 315
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getImtMemberNpcbStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 314
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->showProcessDialog()V

    .line 115
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->globalPanel:Landroid/widget/LinearLayout;

    .line 116
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 117
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->footerLayout:Landroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    .line 121
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->loadAshaAreasUnderCho()V

    return-void
.end method

.method private searchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 211
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private startDynamicFormActivity(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSubTitle(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForNPCBForms(Ljava/lang/Long;)V

    .line 330
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    const-string v0, "entity"

    const-string v1, "CHO_NPCB"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBackPressed$6$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO(Landroid/view/View;)V
    .locals 1

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 339
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 340
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->finish()V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$2$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 267
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$3$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 273
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedFourtyPlusMemberIndex:I

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$4$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 289
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setMemberSelectionScreen$5$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 295
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedBeneficiariesSentByAshaIndex:I

    return-void
.end method

.method synthetic lambda$setSelectionType$1$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->showProcessDialog()V

    .line 181
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    const/4 p1, 0x0

    .line 182
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSubTitle(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 184
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->searchTextBox()V

    .line 185
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->retrieveMembersAsPerCohort(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showNoAshaAreaScreen$0$com-argusoft-sewa-android-app-activity-NPCBScreeningCHO(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    return-void
.end method

.method loadAshaAreasUnderCho()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveAllAshaAreaIdsUnderAssignedLocation()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->ashaAreaIds:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSelectionType()V

    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->showNoAshaAreaScreen()V

    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xc8

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 357
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->doUpdate(Ljava/lang/Boolean;)V

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->showProcessDialog()V

    .line 361
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSelectionType()V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, p3}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 337
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    .line 347
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close National Program for Blindness Control Screening?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 350
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_2

    .line 151
    const-string p1, "memberListScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 152
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedFourtyPlusMemberIndex:I

    if-eq v2, v1, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSubTitle(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->fourtyPlusMembers:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedFourtyPlusMemberIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 155
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->startDynamicFormActivity(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 156
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedBeneficiariesSentByAshaIndex:I

    if-eq p1, v1, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSubTitle(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->beneficiariesSentByAsha:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedBeneficiariesSentByAshaIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 159
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->startDynamicFormActivity(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->context:Landroid/content/Context;

    const-string v0, "Please Select a Member"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->initView()V

    return-void
.end method

.method onLoadMoreBackground()V
    .locals 10

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    if-nez v1, :cond_0

    .line 403
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->ashaAreaIds:Ljava/util/List;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->searchString:Ljava/lang/String;

    const-wide/16 v5, 0x1e

    iget-wide v7, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->offset:J

    invoke-virtual/range {v2 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->choRetrievingMembersForNPCBScreening(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 406
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->ashaAreaIds:Ljava/util/List;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->searchString:Ljava/lang/String;

    const-wide/16 v6, 0x1e

    iget-wide v8, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->offset:J

    invoke-virtual/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->retrieveMembersSentByFieldHealthWorkers(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 409
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->offset:J

    .line 410
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->onLoadMoreBackground()V

    return-void
.end method

.method onLoadMoreUi(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 415
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->fourtyPlusMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 422
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->beneficiariesSentByAsha:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->convertMembersToListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    return-void

    .line 416
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 369
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 376
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_3

    .line 377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->showProcessDialog()V

    .line 379
    const-string p1, "typeSelectionScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 380
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 381
    :cond_1
    const-string p1, "memberListScreen"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 382
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setSelectionType()V

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    :goto_0
    return v1

    :cond_3
    return v2

    .line 372
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setContentView(Landroid/view/View;)V

    .line 104
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->finish()V

    .line 110
    :cond_1
    const-string v0, "National Program for Blindness Control Screening"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method retrieveMembersAsPerCohort(Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x0

    .line 197
    iput-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->offset:J

    .line 198
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->searchString:Ljava/lang/String;

    .line 199
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->ashaAreaIds:Ljava/util/List;

    const-wide/16 v3, 0x1e

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->choRetrievingMembersForNPCBScreening(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->fourtyPlusMembers:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->npcbService:Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->ashaAreaIds:Ljava/util/List;

    const-wide/16 v3, 0x1e

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/NPCBServiceImpl;->retrieveMembersSentByFieldHealthWorkers(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->beneficiariesSentByAsha:Ljava/util/List;

    .line 206
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->offset:J

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->offset:J

    .line 207
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->setMemberSelectionScreen()V

    return-void
.end method

.method setMemberSelectionScreen()V
    .locals 4

    .line 247
    const-string v0, "memberListScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->screen:Ljava/lang/String;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedFourtyPlusMemberIndex:I

    .line 249
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedBeneficiariesSentByAshaIndex:I

    .line 250
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    if-eqz v0, :cond_1

    .line 254
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_2

    .line 257
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 260
    :cond_2
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    const-string v1, "Okay"

    const-string v2, "Next"

    if-nez v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->fourtyPlusMembers:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->convertMembersToListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    const-string v0, "No 40 + members found in this area"

    .line 264
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 265
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda3;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 269
    :cond_3
    const-string v1, "Select from list"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 270
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda4;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    .line 275
    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item_npcb:I

    invoke-static {p0, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 277
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 283
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->beneficiariesSentByAsha:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->convertMembersToListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 285
    const-string v0, "No beneficiaries found in this area"

    .line 286
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 287
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda5;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 291
    :cond_5
    const-string v1, "Beneficiaries sent by field workers"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->listTitleView:Lcom/google/android/material/textview/MaterialTextView;

    .line 292
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda6;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    .line 297
    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p0, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->memberListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 299
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->hideProcessDialog()V

    return-void
.end method

.method setSelectionType()V
    .locals 5

    .line 169
    const-string v0, "typeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->screen:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedTypeIndex:I

    .line 172
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedFourtyPlusMemberIndex:I

    .line 173
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->selectedBeneficiariesSentByAshaIndex:I

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Walk-In Members"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Beneficiaries sent by field workers"

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    .line 188
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->hideProcessDialog()V

    return-void
.end method

.method showNoAshaAreaScreen()V
    .locals 2

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->screen:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No asha area found under your assigned location"

    .line 141
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningCHO;->hideProcessDialog()V

    return-void
.end method
