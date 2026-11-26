.class public Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "IFASupplementationToSchoolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CODE_FOR_IFA_TO_SCHOOL_ACTIVITY:Ljava/lang/Integer;

.field private static final SCHOOL_SELECTION_SCREEN:Ljava/lang/String; = "typeSelectionScreen"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Landroid/widget/Button;

.field schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

.field private screen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->REQUEST_CODE_FOR_IFA_TO_SCHOOL_ACTIVITY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->showProcessDialog()V

    .line 80
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->setContentView(Landroid/view/View;)V

    .line 83
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 84
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 87
    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->nextButton:Landroid/widget/Button;

    .line 90
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->setBodyDetail()V

    return-void
.end method

.method private setBodyDetail()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->showProcessDialog()V

    .line 95
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->setSchoolSelectionScreen()V

    return-void
.end method

.method private startDynamicFormActivity()V
    .locals 4

    .line 125
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "serviceDate"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "schoolName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nameForLog"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nameOfBeneficiary"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/SchoolBean;->getActualId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "schoolActualId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const-string v1, "entity"

    const-string v2, "IFA_TO_SCHOOL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v1, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->REQUEST_CODE_FOR_IFA_TO_SCHOOL_ACTIVITY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBackPressed$0$com-argusoft-sewa-android-app-activity-IFASupplementationToSchoolActivity(Landroid/view/View;)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->navigateToHomeScreen(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->finish()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 142
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;)V

    .line 152
    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v2, "Are you sure to close the registration?"

    const/16 v3, -0x97

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->myAlertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 155
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->screen:Ljava/lang/String;

    const-string v0, "typeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->startDynamicFormActivity()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->context:Landroid/content/Context;

    const-string v0, "Please select school"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 166
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->screen:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_2

    .line 174
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->screen:Ljava/lang/String;

    const-string v0, "typeSelectionScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->navigateToHomeScreen(Z)V

    :cond_1
    return v1

    :cond_2
    return v2

    .line 169
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->navigateToHomeScreen(Z)V

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 64
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->finish()V

    return-void

    .line 73
    :cond_0
    const-string v0, "IFA Supplementation"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setSchoolSelectionScreen()V
    .locals 2

    .line 113
    const-string v0, "typeSelectionScreen"

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->screen:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedSchoolForIFA:Lcom/argusoft/sewa/android/app/model/SchoolBean;

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->schoolService:Lcom/argusoft/sewa/android/app/core/impl/SchoolServiceImpl;

    sput-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->schoolService:Lcom/argusoft/sewa/android/app/core/SchoolService;

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;-><init>()V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/MyDynamicComponents;->getSchoolComponent(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->nextButton:Landroid/widget/Button;

    const-string v1, "Next"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/IFASupplementationToSchoolActivity;->hideProcessDialog()V

    return-void
.end method
