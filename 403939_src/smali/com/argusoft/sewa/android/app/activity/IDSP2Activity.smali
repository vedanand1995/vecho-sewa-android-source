.class public Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "IDSP2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SELECTION_SCREEN:Ljava/lang/String; = "familySelectionScreen"

.field private static final FINAL_SUBMISSION_SCREEN:Ljava/lang/String; = "finalSubmissionScreen"

.field private static final FORM_SUBMISSION_SCREEN:Ljava/lang/String; = "formSubmissionScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final NEXT_MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "newMemberSelectionScreen"

.field private static final OPTION_SELECTION_SCREEN:Ljava/lang/String; = "optionSelectionScreen"

.field private static final RADIOBUTTON_ID_NO:I = 0x2

.field private static final RADIOBUTTON_ID_YES:I = 0x1

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field private anyIllnessRadioGroup:Landroid/widget/RadioGroup;

.field private anyOneCovidContactRadioGroup:Landroid/widget/RadioGroup;

.field private anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

.field private ashaAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private ashaAreaSpinner:Landroid/widget/Spinner;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private canMoveBack:Z

.field private familyDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private familyHeadText:Ljava/lang/String;

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

.field private isAshaLogin:Z

.field private isAshaNotAssigned:Z

.field private limit:J

.field locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Landroid/widget/Button;

.field private nextMemberGroup:Landroid/widget/RadioGroup;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screenName:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectAshaAreaTextView:Landroid/widget/TextView;

.field private selectedAshaAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

.field private selectedFamilyIndex:I

.field private selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private selectedMemberIndex:I

.field private selectedVillage:Ljava/lang/String;

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

.field private textView:Lcom/google/android/material/textview/MaterialTextView;

.field private timer:Ljava/util/Timer;

.field private verifiedMemberCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private verifiedMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private villageSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->timer:Ljava/util/Timer;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyDataBeans:Ljava/util/List;

    .line 115
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberList:Ljava/util/List;

    .line 116
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberCounters:Ljava/util/List;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaLogin:Z

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamilyIndex:I

    .line 130
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMemberIndex:I

    const-wide/16 v0, 0x1e

    .line 131
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->limit:J

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->canMoveBack:Z

    return-void
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Landroid/widget/RadioGroup;)Landroid/widget/RadioGroup;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextMemberGroup:Landroid/widget/RadioGroup;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Landroid/widget/RadioGroup;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Ljava/util/Timer;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamilyIndex:I

    return p1
.end method

.method static synthetic access$502(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMemberIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$702(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addSearchTextBox()V

    return-void
.end method

.method static synthetic access$902(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->canMoveBack:Z

    return p1
.end method

.method private addAshaNotAssignedMessage()V
    .locals 3

    .line 549
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaLogin:Z

    if-eqz v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->locationService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;->retrieveLocationBeansByLevelAndParent(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 554
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 555
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 556
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 557
    array-length v1, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 558
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaNotAssigned:Z

    .line 563
    :cond_2
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaNotAssigned:Z

    if-eqz v0, :cond_3

    .line 564
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$7;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private addSearchTextBox()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    const-string v1, "ADD NEW FAMILY"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    .line 401
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getButtonList(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    .line 402
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 403
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 405
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 406
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private checkForBasicOptionsAnswer()Ljava/lang/Boolean;
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyIllnessRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

    .line 630
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneCovidContactRadioGroup:Landroid/widget/RadioGroup;

    .line 631
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 632
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyIllnessRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

    .line 633
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneCovidContactRadioGroup:Landroid/widget/RadioGroup;

    .line 634
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 632
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFamilyList(Ljava/util/List;)Ljava/util/List;
    .locals 10
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

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 523
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v2, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 527
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v2, :cond_1

    .line 529
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

    .line 530
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getHeadMemberName()Ljava/lang/String;

    move-result-object v3

    const-string v5, " null"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setHeadMemberName(Ljava/lang/String;)V

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 534
    :cond_1
    const-string v2, "Head name not available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v8, v2

    .line 537
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastIdsp2ScreeningDate()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/Date;

    .line 538
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getLastIdsp2ScreeningDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/16 v4, -0xf

    .line 539
    invoke-static {v3, v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDateAfterNoOfDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 542
    :cond_2
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->showProcessDialog()V

    .line 163
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->globalPanel:Landroid/widget/LinearLayout;

    .line 164
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setContentView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 166
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    .line 169
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->getVillageList()V

    return-void
.end method

.method private initializeRadioGroup()Landroid/widget/RadioGroup;
    .locals 4

    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 593
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 594
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "No"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {p0, v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioGroup(Landroid/content/Context;Ljava/util/Map;Z)Landroid/widget/RadioGroup;

    move-result-object v0

    return-object v0
.end method

.method private setOptionSelectionScreen()V
    .locals 4

    .line 599
    const-string v0, "optionSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 602
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->headMembersMapWithFamilyIdAsKey:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v0, :cond_0

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyHeadText:Ljava/lang/String;

    .line 605
    const-string v1, " null"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyHeadText:Ljava/lang/String;

    goto :goto_0

    .line 607
    :cond_0
    const-string v0, "Head name not available"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyHeadText:Ljava/lang/String;

    .line 610
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Family ID:"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 612
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Family Head:"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyHeadText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Does anyone in the family has any illness or discomfort?"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyIllnessRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 620
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Did anyone from the family travel in the past week?"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Did anyone from the family come in contact with any suspected or positive corona cases in the recent past?"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 625
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneCovidContactRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 8

    .line 766
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->showProcessDialog()V

    .line 767
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 769
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v3, "IDSP_MEMBER_2"

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-11!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyIllnessRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const-string v3, "T"

    const-string v4, "F"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "~-12!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v5, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "~-13!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneCovidContactRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v5, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 783
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v6, "familyQuestions"

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    const-string v2, "anyMemberTravelled"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v1, "entity"

    const-string v2, "IDSP_MEMBER_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3f0

    .line 788
    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 789
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->hideProcessDialog()V

    return-void
.end method


# virtual methods
.method public addAshaAreaSelectionSpinner()V
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectAshaAreaTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "Select Asha Area"

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectAshaAreaTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 239
    const-string v2, "All"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 241
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 242
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 245
    invoke-static {p0, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaSpinner:Landroid/widget/Spinner;

    .line 246
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectAshaAreaTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->hideProcessDialog()V

    return-void
.end method

.method public addDataNotSyncedScreen()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Data not synced properly. Please refresh."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    .line 260
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v2, "Okay"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->hideProcessDialog()V

    return-void
.end method

.method public addFamilyList()V
    .locals 1

    .line 458
    const-string v0, "familySelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 459
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addAshaNotAssignedMessage()V

    .line 460
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaNotAssigned:Z

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->showProcessDialog()V

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addNewFamily()V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->showProcessDialog()V

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->myIntent:Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 365
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->currentFamilyDataBean:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 366
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->familyDataBeanToBeMerged:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const/4 v0, -0x1

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->totalFamilyMembersCount:Ljava/lang/Integer;

    .line 369
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyId"

    const-string v2, "Not available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "headOfFamily"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "familyFound"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "locationId"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 377
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "areaId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->myIntent:Landroid/content/Intent;

    const-string v1, "entity"

    const-string v2, "IDSP_NEW_FAMILY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->myIntent:Landroid/content/Intent;

    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 383
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->hideProcessDialog()V

    return-void
.end method

.method public addOptionSelectionScreenForFamily()V
    .locals 1

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberList:Ljava/util/List;

    .line 585
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyIllnessRadioGroup:Landroid/widget/RadioGroup;

    .line 586
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

    .line 587
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->initializeRadioGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneCovidContactRadioGroup:Landroid/widget/RadioGroup;

    .line 588
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setOptionSelectionScreen()V

    return-void
.end method

.method public addSelectedFamilyDetails()V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveActiveMemberByFamilyIdForIdsp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->setMembers(Ljava/util/List;)V

    .line 643
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->memberSelectionScreen()V

    return-void
.end method

.method public addVillageSelectionSpinner()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const-string v2, "Select Village"

    invoke-static {v1, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageList:Ljava/util/List;

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

    .line 205
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 209
    invoke-static {p0, v0, v2, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageSpinner:Landroid/widget/Spinner;

    .line 210
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 222
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addAshaAreaSelectionSpinner()V

    return-void
.end method

.method public getVillageList()V
    .locals 2

    .line 174
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 175
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaLogin:Z

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->techoAshaService:Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/TechoAshaServiceImpl;->retrieveAshaAreasAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addAshaAreaSelectionSpinner()V

    return-void

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addDataNotSyncedScreen()V

    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->getDistinctLocationsAssignedToUser()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveAshaAreaAssignedToUser(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addVillageSelectionSpinner()V

    return-void

    .line 187
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addDataNotSyncedScreen()V

    return-void
.end method

.method public memberSelectionScreen()V
    .locals 15

    .line 648
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 651
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getDetailsLayout(Landroid/content/Context;III)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Family ID:"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 653
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateBoldAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 654
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Family Head:"

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 655
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyHeadText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 656
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Search Member"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberCounters:Ljava/util/List;

    .line 666
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getMiddleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getGrandfatherName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 668
    const-string v6, " null"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 669
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberList:Ljava/util/List;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 670
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberCounters:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 673
    :cond_0
    new-instance v5, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$8;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$8;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    .line 684
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v4, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "No members found."

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->hideProcessDialog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 794
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3f0

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 797
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberList:Ljava/util/List;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 799
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$10;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$10;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 808
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$11;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$11;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->memberSelectionScreen()V

    goto :goto_0

    :cond_2
    const/16 p2, 0x3f1

    if-ne p1, p2, :cond_3

    .line 820
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 821
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addSearchTextBox()V

    .line 822
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addFamilyList()V

    .line 823
    const-string p1, "familySelectionScreen"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 825
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 831
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    .line 844
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Surveillance?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 847
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_12

    .line 268
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "finalSubmissionScreen"

    const-string v2, "familySelectionScreen"

    const/4 v3, 0x0

    const-string v4, "formSubmissionScreen"

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "optionSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "newMemberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 351
    invoke-virtual {p0, v3}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->navigateToHomeScreen(Z)V

    goto/16 :goto_3

    .line 319
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMemberIndex:I

    if-eq p1, v6, :cond_8

    .line 320
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->verifiedMemberCounters:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 321
    const-string p1, "The selected member has already been screened. Please select another member"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 323
    :cond_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getMembers()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMemberIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMember:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 324
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->startDynamicFormActivity()V

    .line 325
    iput v6, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedMemberIndex:I

    goto/16 :goto_3

    .line 328
    :cond_8
    const-string p1, "Please select a member for screening"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 345
    :pswitch_1
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 346
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 347
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addSearchTextBox()V

    .line 348
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addFamilyList()V

    goto/16 :goto_3

    .line 297
    :pswitch_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamilyIndex:I

    if-eq p1, v6, :cond_9

    .line 298
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 299
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyDataBeans:Ljava/util/List;

    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamilyIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeanByFamilyId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 301
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addOptionSelectionScreenForFamily()V

    goto/16 :goto_3

    .line 303
    :cond_9
    const-string p1, "Select a family for Surveillance"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 270
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 271
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaLogin:Z

    if-nez p1, :cond_b

    .line 272
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->villageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 274
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 275
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    .line 280
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 281
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_c

    .line 283
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 284
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 287
    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->ashaAreaList:Ljava/util/List;

    sub-int/2addr p1, v5

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/LocationBean;

    .line 288
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LocationBean;->getActualID()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_d
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->showProcessDialog()V

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 293
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addSearchTextBox()V

    .line 294
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addFamilyList()V

    goto :goto_3

    .line 307
    :pswitch_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->checkForBasicOptionsAnswer()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_e

    .line 309
    const-string p1, "Please answer all the questions to continue"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 310
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 311
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->showProcessDialog()V

    .line 312
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addSelectedFamilyDetails()V

    goto :goto_3

    .line 314
    :cond_f
    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setFormSubmissionScreen()V

    goto :goto_3

    .line 332
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextMemberGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v6, :cond_10

    .line 333
    const-string p1, "Please Select an option"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 334
    :cond_10
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextMemberGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    if-ne p1, v5, :cond_11

    .line 335
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->memberSelectionScreen()V

    goto :goto_3

    .line 337
    :cond_11
    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setFormSubmissionScreen()V

    goto :goto_3

    .line 342
    :pswitch_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->storeIDSPForm()V

    :cond_12
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e937844 -> :sswitch_6
        -0x4fbaeaa2 -> :sswitch_5
        -0x25dba41d -> :sswitch_4
        -0x13a69534 -> :sswitch_3
        -0xa1992ec -> :sswitch_2
        0x113f986e -> :sswitch_1
        0x2cfd2b1e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 138
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    .line 140
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserRole()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Asha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->isAshaLogin:Z

    .line 141
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 142
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 7

    .line 909
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->limit:J

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->offset:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForIDSPByVillage(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    .line 910
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->offset:J

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->limit:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->offset:J

    .line 911
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 2

    .line 902
    const-string v0, "familySelectionScreen"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->onLoadMoreBackground()V

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

    .line 916
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyDataBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 919
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 921
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 852
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 853
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 858
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 859
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setSubTitle(Ljava/lang/String;)V

    .line 860
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "finalSubmissionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "familySelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "optionSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "newMemberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "formSubmissionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 894
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->finish()V

    goto :goto_2

    .line 872
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextMemberGroup:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_7

    .line 873
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setScreenTOAskForNextMemberVerfication()V

    goto :goto_2

    .line 875
    :cond_7
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setOptionSelectionScreen()V

    goto :goto_2

    .line 886
    :pswitch_1
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->canMoveBack:Z

    if-nez p1, :cond_8

    .line 887
    const-string p1, "Form for all members has been filled. Please press \"Okay\" to continue."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 890
    :cond_8
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setScreenTOAskForNextMemberVerfication()V

    .line 891
    iput-boolean v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->canMoveBack:Z

    goto :goto_2

    .line 862
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 863
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->getVillageList()V

    goto :goto_2

    .line 866
    :pswitch_3
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamilyIndex:I

    .line 867
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 868
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addSearchTextBox()V

    .line 869
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->addFamilyList()V

    goto :goto_2

    .line 883
    :pswitch_4
    const-string p1, "Form for a member is already stored. Please move ahead."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 879
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 880
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setOptionSelectionScreen()V

    :cond_9
    :goto_2
    return v2

    .line 854
    :cond_a
    :goto_3
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->navigateToHomeScreen(Z)V

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7e937844 -> :sswitch_5
        -0x4fbaeaa2 -> :sswitch_4
        -0x25dba41d -> :sswitch_3
        -0xa1992ec -> :sswitch_2
        0x113f986e -> :sswitch_1
        0x2cfd2b1e -> :sswitch_0
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

    .line 147
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 148
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->myIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->myIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->finish()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setContentView(Landroid/view/View;)V

    .line 158
    :cond_1
    const-string v0, "Surveillance"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveFamilyListFromDB(Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x0

    .line 468
    iput-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->offset:J

    const/4 v0, -0x1

    .line 469
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    iget-wide v3, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->limit:J

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForIDSPByVillage(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyDataBeans:Ljava/util/List;

    .line 472
    iget-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->offset:J

    iget-wide v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->limit:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->offset:J

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedVillage:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedAshaAreas:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForIDSPByVillage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyDataBeans:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 476
    :goto_1
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextMemberGroup:Landroid/widget/RadioGroup;

    .line 482
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 483
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 484
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 485
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyDataBeans:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Select Family"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->textView:Lcom/google/android/material/textview/MaterialTextView;

    .line 487
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyDataBeans:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 489
    new-instance v2, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$5;

    invoke-direct {v2, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    if-eqz p1, :cond_0

    .line 497
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p1, v1, v3, v2, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    goto :goto_0

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p1, v1, v0, v2, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 501
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 505
    :cond_1
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 506
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$6;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$6;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->hideProcessDialog()V

    return-void
.end method

.method public setFormSubmissionScreen()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextButton:Landroid/widget/Button;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 698
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Your form is complete."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateSubTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 699
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "You have successfully completed Surveillance form for the family."

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setScreenTOAskForNextMemberVerfication()V
    .locals 4

    .line 759
    const-string v0, "newMemberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->screenName:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 761
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->context:Landroid/content/Context;

    const-string v2, "Proceed for next member?"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->nextMemberGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public storeIDSPForm()V
    .locals 8

    .line 704
    new-instance v0, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;-><init>()V

    .line 705
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->setFamilyId(Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyIllnessRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->setAnyIllness(Z)V

    .line 707
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneTravelFromFamilyRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->setAnyOneTravelFromFamily(Z)V

    .line 708
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->anyOneCovidContactRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->setAnyOneCovidContact(Z)V

    .line 709
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->setServiceDate(Ljava/lang/Long;)V

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 714
    new-instance v3, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 715
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 716
    sget-object v4, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 717
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 718
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v4, 0x0

    .line 719
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 720
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    .line 721
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 722
    sget-object v5, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 724
    const-string v4, "IDSP_FAMILY_2"

    invoke-virtual {v3, v4}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 726
    new-instance v5, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v5}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 727
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->familyHeadText:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 730
    const-string v1, "P"

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 731
    sget-object v1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v5, v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 733
    const-string v1, "Surveillance"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v5, v4}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 736
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 737
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 738
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v1, v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    .line 741
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->selectedFamily:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/FamilyBean;

    move-result-object v1

    .line 742
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/IDSP2FamilyDataBean;->getServiceDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->setLastIdsp2ScreeningDate(Ljava/lang/Long;)V

    .line 743
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->updateFamily(Lcom/argusoft/sewa/android/app/model/FamilyBean;)V

    .line 744
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$9;-><init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
