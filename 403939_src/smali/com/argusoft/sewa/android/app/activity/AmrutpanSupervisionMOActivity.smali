.class public Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "AmrutpanSupervisionMOActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOCATION_SELECTION_SCREEN:Ljava/lang/String; = "locationSelectionScreen"

.field private static final MEMBER_SELECTION_SCREEN:Ljava/lang/String; = "memberSelectionScreen"

.field private static final MO_AREA_SELECTION_SCREEN:Ljava/lang/String; = "moAreaSelectionScreen"

.field private static final REQUEST_CODE_FOR_AMRUTPAN_SUPERVISION_ACTIVITY:I = 0x258


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private footerLayout:Landroid/widget/LinearLayout;

.field formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private locationComponent:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

.field locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

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

.field private moAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationBean;",
            ">;"
        }
    .end annotation
.end field

.field private nextButton:Landroid/widget/Button;

.field private noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

.field private pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

.field private pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

.field private screen:Ljava/lang/String;

.field private selectedPeopleIndex:I

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberList:Ljava/util/List;

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->selectedPeopleIndex:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->moAreaList:Ljava/util/List;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->showProcessDialog()V

    .line 110
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setContentView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 113
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->nextButton:Landroid/widget/Button;

    .line 116
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setBodyDetail()V

    return-void
.end method

.method private startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V
    .locals 6

    .line 266
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMemberFullName(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setSubTitle(Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->formMetaDataUtil:Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;

    invoke-virtual {v1, p2, v0}, Lcom/argusoft/sewa/android/app/util/FormMetaDataUtil;->setMetaDataForAmrutpanSupervisionForm(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const-string v0, "entity"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x258

    .line 285
    invoke-virtual {p0, p2, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->hideProcessDialog()V

    return-void

    .line 271
    :catch_0
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;)V

    .line 278
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string p2, "Some error occurred. Please refresh and try again"

    .line 279
    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 280
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addMoLocationSelectionSpinner()V
    .locals 3

    .line 133
    const-string v0, "moAreaSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->screen:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->locationMasterService:Lcom/argusoft/sewa/android/app/core/impl/LocationMasterServiceImpl;

    invoke-direct {v0, v1, v2}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;-><init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/core/LocationMasterService;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    .line 138
    :cond_0
    const-string v0, "Select Location"

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->hideProcessDialog()V

    return-void
.end method

.method synthetic lambda$updateMemberSelectionScreen$0$com-argusoft-sewa-android-app-activity-AmrutpanSupervisionMOActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 168
    iput p3, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->selectedPeopleIndex:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->screen:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "memberSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "moAreaSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->showProcessDialog()V

    .line 207
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->context:Landroid/content/Context;

    const-string v0, "Please select location"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->hideProcessDialog()V

    return-void

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->locationComponent:Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/LocationBeanAllAreaSelectionComponent;->getSelectedLocationIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setMemberSelectionScreen(Ljava/util/List;)V

    goto :goto_0

    .line 253
    :cond_2
    iget p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->selectedPeopleIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 256
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->showProcessDialog()V

    .line 257
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberSelected:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    const-string v0, "AMRUTPAN_SUPERVISION"

    invoke-direct {p0, v0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->startDynamicFormActivity(Ljava/lang/String;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)V

    goto :goto_0

    .line 259
    :cond_3
    const-string p1, "Please Select a Member"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 291
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->navigateToHomeScreen(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->globalPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setContentView(Landroid/view/View;)V

    .line 98
    :cond_0
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->finish()V

    .line 105
    :cond_1
    const-string v0, "Work Status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBodyDetail()V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->showProcessDialog()V

    .line 127
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->addMoLocationSelectionSpinner()V

    return-void
.end method

.method setMemberSelectionScreen(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->showProcessDialog()V

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->getRbskMoScreeningMembers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberList:Ljava/util/List;
    :try_end_0
    .catch Lcom/argusoft/sewa/android/app/restclient/RestHttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->memberList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->updateMemberSelectionScreen(Ljava/util/List;)V

    return-void
.end method

.method updateMemberSelectionScreen(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;)V"
        }
    .end annotation

    .line 152
    const-string v0, "memberSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->screen:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v2, "Select a member from list"

    .line 157
    invoke-static {p0, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getListTitleView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 164
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

    .line 167
    :cond_0
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;)V

    .line 170
    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->listview_row_with_two_item:I

    invoke-static {p0, v0, v2, p1, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getPaginatedListViewWithItem(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;Lcom/argusoft/sewa/android/app/component/PagingListView$PagingListener;)Lcom/argusoft/sewa/android/app/component/PagingListView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->pagingListView:Lcom/argusoft/sewa/android/app/component/PagingListView;

    .line 177
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->pagingHeaderView:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 181
    const-string p1, "No member found in your area"

    invoke-static {v1, v1, p0, p1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->noMemberAvailableView:Lcom/google/android/material/textview/MaterialTextView;

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    :goto_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/AmrutpanSupervisionMOActivity;->hideProcessDialog()V

    return-void
.end method
