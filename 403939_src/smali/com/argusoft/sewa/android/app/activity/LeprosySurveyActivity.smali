.class public Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "LeprosySurveyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;


# static fields
.field private static final DELAY:J = 0x1f4L

.field private static final FAMILY_SCREEN:Ljava/lang/String; = "familyScreen"

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

.field private memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field private noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private offset:I

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private searchText:Lcom/google/android/material/textfield/TextInputLayout;

.field private selectedFamilyIndex:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familyList:Ljava/util/List;

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->selectedFamilyIndex:I

    const/16 v0, 0x1e

    .line 83
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->limit:I

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    .line 86
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;)Ljava/util/Timer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->timer:Ljava/util/Timer;

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

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 242
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveHeadMemberDataBeansByFamilyId(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 249
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;->getFamilyId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    if-eqz v3, :cond_1

    .line 251
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 252
    :cond_1
    const-string v3, "Head name not available"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v9, v3

    .line 254
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

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->showProcessDialog()V

    .line 107
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->setContentView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_FOOTER:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->footerLayout:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->nextButton:Landroid/widget/Button;

    .line 117
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->setLocationSelectionScreen()V

    .line 118
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->hideProcessDialog()V

    return-void
.end method

.method private setLocationSelectionScreen()V
    .locals 3

    .line 122
    const-string v0, "locationScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->screen:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent$LocationSelectionInterface;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startDynamicFormActivityForLCDC()V
    .locals 8

    .line 283
    const-string v0, "LCDC_CAMPAIGN"

    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    invoke-virtual {v1, v2, p0, v0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForLcdcCampaign(Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    const-string v2, "entity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 299
    invoke-virtual {p0, v1, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->hideProcessDialog()V

    return-void

    .line 285
    :catch_0
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$2;

    invoke-direct {v6, p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;)V

    .line 292
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Some error occurred. Please refresh and try again"

    .line 293
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, -0x69

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addSearchTextBoxForFamily()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 166
    const-string v2, "Search Family"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getEditText(Landroid/content/Context;Ljava/lang/String;III)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 169
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->searchText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getOrTextView(Landroid/content/Context;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onBackPressed$2$com-argusoft-sewa-android-app-activity-LeprosySurveyActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 308
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$0$com-argusoft-sewa-android-app-activity-LeprosySurveyActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 222
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->selectedFamilyIndex:I

    return-void
.end method

.method synthetic lambda$setFamilySelectionScreen$1$com-argusoft-sewa-android-app-activity-LeprosySurveyActivity(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method public loadMoreFamiliesLeprosy()V
    .locals 6

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->limit:I

    int-to-long v2, v2

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDCByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    .line 267
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    .line 268
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->onLoadMoreUiFamilies(Ljava/util/List;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 336
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->showProcessDialog()V

    .line 339
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 p1, -0x1

    .line 340
    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->selectedFamilyIndex:I

    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    const/4 p2, 0x0

    .line 342
    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    .line 343
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->addSearchTextBoxForFamily()V

    .line 344
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->hideProcessDialog()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 305
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;)V

    const/16 v2, -0x97

    const-string v3, "Are you sure want to close Leprosy survey?"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 311
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-eq p1, v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "familyScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "locationScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 141
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->showProcessDialog()V

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->addSearchTextBoxForFamily()V

    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_3
    :goto_0
    const-string p1, "Please select location"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_4
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->selectedFamilyIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 153
    const-string p1, "Please Select a Family"

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familySelected:Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;

    .line 157
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->startDynamicFormActivityForLCDC()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->initView()V

    return-void
.end method

.method public onLoadMoreItems()V
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->loadMoreFamiliesLeprosy()V

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

    .line 273
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/argusoft/sewa/android/app/component/PagingListView;->onFinishLoadingWithItem(ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->screen:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "familyScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "locationScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->showProcessDialog()V

    .line 320
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->setLocationSelectionScreen()V

    .line 321
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->hideProcessDialog()V

    .line 331
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 97
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->finish()V

    .line 102
    :cond_0
    const-string v0, "Leprosy Routine Survey"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic performActionOnClick(ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener$-CC;->$default$performActionOnClick(Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;ILjava/util/List;)V

    return-void
.end method

.method public retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    const/4 v1, -0x1

    .line 198
    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->selectedFamilyIndex:I

    if-nez p1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v3

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->limit:I

    int-to-long v4, v1

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveFamilyDataBeansForLCDCByArea(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familyList:Ljava/util/List;

    .line 201
    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->offset:I

    goto :goto_0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->locationSelection:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->searchFamilyDataBeansForLCDCByArea(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familyList:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 205
    :cond_1
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->setFamilySelectionScreen(Z)V

    return-void
.end method

.method public setFamilySelectionScreen(Z)V
    .locals 4

    .line 210
    const-string v0, "familyScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->screen:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familyList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    const-string v0, "Select Family"

    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->headerTitle:Lcom/google/android/material/textview/MaterialTextView;

    .line 218
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->familyList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->getFamilyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    new-instance v3, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-static {v1, v0, v2, v3, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 224
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Next"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 229
    :cond_1
    const-string p1, "No families found."

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->noFamilyAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->nextButton:Landroid/widget/Button;

    const-string v0, "Okay"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->nextButton:Landroid/widget/Button;

    new-instance v0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$$ExternalSyntheticLambda2;-><init>(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :goto_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->footerLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->hideProcessDialog()V

    return-void
.end method
