.class public Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LabTestScreeningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final SERVICE_MEMBERS_TO_BE_SCREENED:Ljava/lang/String; = "membersToBeScreened"

.field private static final SERVICE_SCREENING_STATUS:Ljava/lang/String; = "screeningStatus"

.field private static final SERVICE_SELECTION_SCREEN:Ljava/lang/String; = "serviceSelectionScreen"

.field private static final VILLAGE_SELECTION_SCREEN:Ljava/lang/String; = "villageSelectionScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private headerTitle:Lcom/google/android/material/textview/MaterialTextView;

.field private final limit:J

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

.field private locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private myIntent:Landroid/content/Intent;

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:J

.field private paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private preSelectedLocationIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private screen:Ljava/lang/String;

.field private searchString:Ljava/lang/CharSequence;

.field private selectedPeopleIndex:I

.field private selectedService:Ljava/lang/String;

.field private selectedServiceIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const-wide/16 v0, 0x1e

    .line 75
    iput-wide v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->limit:J

    .line 78
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->timer:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedServiceIndex:I

    .line 90
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedPeopleIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)Ljava/util/Timer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedService:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedPeopleIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hasPreSelectedLocation()Z

    move-result p0

    return p0
.end method

.method private getLocationIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hasPreSelectedLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->preSelectedLocationIds:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private hasPreSelectedLocation()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->preSelectedLocationIds:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initView()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showProcessDialog()V

    .line 132
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 133
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 134
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    .line 138
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setBodyDetail()V

    return-void
.end method

.method private setBodyDetail()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hasPreSelectedLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setServiceSelectionScreen()V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setVillageSelectionScreen()V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hideProcessDialog()V

    return-void
.end method

.method private setVillageSelectionScreen()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 207
    const-string v0, "villageSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->screen:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 8

    .line 430
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showProcessDialog()V

    .line 431
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    const-string v2, "LAB_TEST_MALARIA"

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForRchFormByFormType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->myIntent:Landroid/content/Intent;

    .line 447
    const-string v1, "entity"

    const-string v2, "LAB_TEST_MALARIA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->myIntent:Landroid/content/Intent;

    const-string v1, "isOnlineSearchPropagated"

    sget-boolean v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->myIntent:Landroid/content/Intent;

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 450
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hideProcessDialog()V

    return-void

    .line 435
    :catch_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showProcessDialog()V

    .line 436
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V

    .line 440
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 441
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 442
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$setMemberSelectionScreen$1$com-argusoft-sewa-android-app-activity-LabTestScreeningActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 343
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setServiceSelectionScreen$0$com-argusoft-sewa-android-app-activity-LabTestScreeningActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 229
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedServiceIndex:I

    .line 230
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$startDynamicFormActivity$2$com-argusoft-sewa-android-app-activity-LabTestScreeningActivity(Landroid/view/View;)V
    .locals 0

    .line 437
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 438
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 373
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x402

    if-ne p1, p2, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showProcessDialog()V

    .line 376
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedService:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V

    .line 377
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hideProcessDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 379
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->navigateToHomeScreen(Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 350
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V

    .line 365
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure want to close Lab Test ?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 368
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_8

    .line 156
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "serviceSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 170
    :pswitch_0
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedServiceIndex:I

    if-eq p1, v3, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_2

    .line 176
    :cond_3
    const-string p1, "screeningStatus"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedService:Ljava/lang/String;

    goto :goto_2

    .line 173
    :cond_4
    const-string p1, "membersToBeScreened"

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedService:Ljava/lang/String;

    .line 180
    :goto_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showProcessDialog()V

    .line 181
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->lastUpdateLabelView(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;Landroid/widget/LinearLayout;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->searchTextBox()V

    .line 184
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedService:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V

    goto :goto_3

    .line 186
    :cond_5
    const-string p1, "Please select a type of service"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    :goto_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->footerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 192
    :pswitch_1
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedPeopleIndex:I

    if-eq p1, v3, :cond_6

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 194
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->startDynamicFormActivity()V

    goto :goto_4

    .line 197
    :cond_6
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 158
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 159
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 160
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 161
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setServiceSelectionScreen()V

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setSubTitle(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showProcessDialog()V

    goto :goto_4

    .line 165
    :cond_7
    const-string p1, "Please select location"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x13a69534 -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectedLocationIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->preSelectedLocationIds:Ljava/util/List;

    .line 103
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->initView()V

    return-void
.end method

.method public onLoadMoreBackground()V
    .locals 10

    .line 461
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "screeningStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "membersToBeScreened"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->getLocationIds()Ljava/util/List;

    move-result-object v2

    const-wide/16 v4, 0x1e

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveEligibleMembersForMalariaSlidesCollection(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->getLocationIds()Ljava/util/List;

    move-result-object v2

    iget-wide v6, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v1 .. v9}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMalariaScreenedMembers(Ljava/util/List;Ljava/lang/String;JJZZ)Ljava/util/List;

    move-result-object v0

    .line 471
    :goto_0
    iget-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    .line 472
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->onLoadMoreUi(Ljava/util/List;)V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 455
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->onLoadMoreBackground()V

    return-void
.end method

.method public onLoadMoreUi(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 478
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 480
    new-instance v9, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 483
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_1

    .line 485
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 385
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 387
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 392
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_5

    .line 393
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "serviceSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "villageSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Next"

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 399
    :pswitch_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hasPreSelectedLocation()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 401
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->finish()V

    goto :goto_2

    .line 404
    :cond_4
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setVillageSelectionScreen()V

    .line 405
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 410
    :pswitch_1
    iput v3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedServiceIndex:I

    .line 411
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->showProcessDialog()V

    .line 412
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 413
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 414
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setServiceSelectionScreen()V

    .line 415
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 395
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->navigateToHomeScreen(Z)V

    :goto_2
    return v1

    :cond_5
    return v2

    .line 388
    :cond_6
    :goto_3
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->navigateToHomeScreen(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x13a69534 -> :sswitch_2
        0x2cfd2b1e -> :sswitch_1
        0x7ebed5a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setContentView(Landroid/view/View;)V

    .line 120
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->finish()V

    .line 127
    :cond_1
    const-string v0, "Lab Test"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveMemberListByServiceType(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;)V
    .locals 9

    .line 239
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->searchString:Ljava/lang/CharSequence;

    const-wide/16 p3, 0x0

    .line 240
    iput-wide p3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    const/4 p3, -0x1

    .line 241
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedPeopleIndex:I

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p3, "screeningStatus"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "membersToBeScreened"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->getLocationIds()Ljava/util/List;

    move-result-object v1

    const-wide/16 v3, 0x1e

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveEligibleMembersForMalariaSlidesCollection(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->getLocationIds()Ljava/util/List;

    move-result-object v1

    iget-wide v5, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v3, 0x1e

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMalariaScreenedMembers(Ljava/util/List;Ljava/lang/String;JJZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    .line 252
    :goto_0
    iget-wide p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    const-wide/16 p3, 0x1e

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->offset:J

    .line 253
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->setMemberSelectionScreen()V

    return-void
.end method

.method public searchTextBox()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 257
    const-string v2, "Member Id or Name to Search"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setMemberSelectionScreen()V
    .locals 12

    .line 298
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->screen:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "Okay"

    if-nez v1, :cond_4

    .line 304
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedServiceIndex:I

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 305
    const-string v1, "Select Member"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 306
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 308
    new-instance v11, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 311
    const-string v1, "Member List"

    invoke-static {p0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 312
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->members:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 314
    new-instance v11, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Referral Status: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getLabTestMalariaRefStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_1
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V

    .line 324
    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->selectedServiceIndex:I

    if-nez v4, :cond_2

    .line 325
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {v2, v0, v3, v1, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 326
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    if-ne v4, v3, :cond_3

    .line 329
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->context:Landroid/content/Context;

    sget v3, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, p0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 330
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$3;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->paginatedListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->context:Landroid/content/Context;

    const-string v1, "No members found."

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->noMemberAvailableTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 341
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->nextButton:Landroid/widget/Button;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    :goto_3
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hideProcessDialog()V

    return-void
.end method

.method public setServiceSelectionScreen()V
    .locals 4

    .line 219
    const-string v0, "serviceSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->screen:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    const-string v0, "Select the type of Service"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Malaria Slides Collection"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;

    const-string v2, "Result"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/argusoft/sewa/android/app/databean/ListItemDataBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;)V

    .line 232
    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_type:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity;->hideProcessDialog()V

    return-void
.end method
