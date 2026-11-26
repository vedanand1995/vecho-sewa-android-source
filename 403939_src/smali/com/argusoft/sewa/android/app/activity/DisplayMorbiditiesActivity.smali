.class public Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "DisplayMorbiditiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Landroid/content/Context;

.field private beneficiaryMorbidityDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;",
            ">;"
        }
    .end annotation
.end field

.field private beneficiaryWithRed:Ljava/lang/String;

.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field private displayNextScreen:Z

.field private familyUnderstandMorbidity:Ljava/lang/String;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private isMorbidityFound:Z

.field private morbidityType:Ljava/lang/String;

.field private myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

.field private nextButton:Lcom/google/android/material/button/MaterialButton;

.field private noOfChild:I

.field private overAllStatus:Ljava/lang/String;

.field private overAllStatusForPNC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 51
    sget-object v0, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->nextEntity:Ljava/lang/String;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->morbidityType:Ljava/lang/String;

    .line 54
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->noOfChild:I

    .line 66
    sget-object v0, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->morbidities:Ljava/util/List;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->isMorbidityFound:Z

    return p0
.end method

.method static synthetic access$100(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->displayNextScreen:Z

    return p0
.end method

.method static synthetic access$200(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setViewAsDiagnosticScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->familyUnderstandMorbidity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->familyUnderstandMorbidity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->loadDynamicForm()V

    return-void
.end method

.method static synthetic access$500(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    return-object p0
.end method

.method private buildDiseasesExplanationScreen()V
    .locals 10

    .line 302
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x1

    .line 303
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setTitle(Z)V

    .line 304
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    .line 306
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    sget-object v4, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortIdentifiedMorbiditiesByRiskFactor:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 312
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "C"

    const-string v7, "M"

    if-eqz v4, :cond_2

    .line 313
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    const-string v4, "Explain the woman/family that the mother is at high risk due to:"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    const-string v4, "Explain the woman/family that the child is at high risk of complications due to:"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 322
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 323
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryWithRed:Ljava/lang/String;

    const-string v9, "MR"

    if-nez v8, :cond_5

    .line 324
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 325
    iput-object v9, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryWithRed:Ljava/lang/String;

    goto :goto_2

    .line 327
    :cond_4
    const-string v8, "CR"

    iput-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryWithRed:Ljava/lang/String;

    goto :goto_2

    .line 330
    :cond_5
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 331
    const-string v8, "MCR"

    iput-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryWithRed:Ljava/lang/String;

    .line 335
    :cond_6
    :goto_2
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandMorbidityNameAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    .line 337
    invoke-static {v4, v5}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setColor(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 338
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 344
    :cond_7
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v3, "Does the mother/family understand?"

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    new-instance v1, Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 348
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 350
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v4, "Yes"

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 351
    invoke-virtual {v1, v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v3, "No"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getRadioButton(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/material/radiobutton/MaterialRadioButton;

    move-result-object v0

    .line 354
    invoke-virtual {v1, v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$3;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$3;-><init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;

    invoke-direct {v0, p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;-><init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    .line 388
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->hideProcessDialog()V

    return-void
.end method

.method private buildMorbidityScreen()V
    .locals 11

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setTitle(Z)V

    .line 176
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->isMorbidityFound:Z

    .line 177
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    const-string v2, "No morbidity found"

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "We got beneficiary morbidity detail"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    sget-object v3, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortBeneficiaryMorbidityDetailsByBeneficiaryType:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 180
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    .line 181
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v6, "Name of beneficiary:"

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 184
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "M"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v7, "Mother:"

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "C"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->noOfChild:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->noOfChild:I

    .line 188
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v7, "Child:"

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v7, "Overall status:"

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 196
    sget-object v4, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortIdentifiedMorbiditiesByRiskFactor:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    const-string v6, "NMF"

    iput-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    .line 200
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 201
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v6

    const-string v7, "R"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    iput-object v7, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    .line 204
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->displayNextScreen:Z

    const-string v4, "Red"

    goto :goto_2

    .line 205
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Y"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    iput-object v7, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    const-string v4, "Yellow"

    goto :goto_2

    .line 208
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v6

    const-string v7, "G"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    iput-object v7, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    const-string v4, "Green"

    .line 213
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    .line 214
    invoke-static {v6, v4}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setColor(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatusForPNC:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 218
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatusForPNC:Ljava/lang/String;

    goto :goto_3

    .line 220
    :cond_6
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    invoke-static {v4}, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->riskValueOf(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatusForPNC:Ljava/lang/String;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->riskValueOf(Ljava/lang/String;)I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 221
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    iput-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatusForPNC:Ljava/lang/String;

    .line 225
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    iput-boolean v5, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->isMorbidityFound:Z

    .line 227
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v7, "Exhibits signs of:"

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x1

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, ". "

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 230
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v8

    const-string v10, "-"

    invoke-static {v8, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 233
    array-length v10, v8

    if-lez v10, :cond_8

    aget-object v8, v8, v0

    if-eqz v8, :cond_8

    .line 234
    invoke-virtual {v7, v8}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setMorbidityCode(Ljava/lang/String;)V

    .line 236
    :cond_8
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/morbidities/constants/MorbiditiesConstant;->getMorbidityCodeAsKEYandMorbidityNameAsVALUE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v8

    .line 240
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->setColor(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 241
    iget-object v7, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 245
    :cond_9
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    const-string v7, "Main Symptoms:"

    invoke-static {v6, v7}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 251
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getIdentifiedSymptoms()Ljava/util/List;

    move-result-object v7

    .line 252
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 253
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 254
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 262
    :cond_c
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateAnswerView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 267
    :cond_d
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 289
    :cond_e
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateLabelView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "Okay"

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$2;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$2;-><init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    :goto_6
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->hideProcessDialog()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 82
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 83
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setContentView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 85
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->nextButton:Lcom/google/android/material/button/MaterialButton;

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setViewAsMorbidityScreen()V

    return-void
.end method

.method private loadDynamicForm()V
    .locals 6

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v1, "allowForm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->morbidityType:Ljava/lang/String;

    const-string v4, "ANCMORB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "entity"

    if-eqz v3, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->prepareHashTableForANCMorbidity()V

    .line 144
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->finish()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->morbidityType:Ljava/lang/String;

    const-string v4, "CCMORB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->prepareHashTableForCCMorbidity()V

    .line 150
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->finish()V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->morbidityType:Ljava/lang/String;

    const-string v4, "PNCMORB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->prepareHashTableForPNCHVMorbidity()V

    .line 156
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private prepareHashTableForANCMorbidity()V
    .locals 10

    .line 393
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "overallStatus"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "callHospital"

    const-string v2, "108"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    .line 396
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    sget-object v2, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortIdentifiedMorbiditiesByRiskFactor:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 403
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 404
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v6

    .line 405
    const-string v7, "diseaseName"

    if-nez v4, :cond_1

    .line 406
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 408
    :cond_1
    sget-object v8, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :goto_2
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v5

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 415
    :cond_3
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "remainingDisease"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "remainingRedDisease"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private prepareHashTableForCCMorbidity()V
    .locals 11

    .line 423
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "overallStatus"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "callHospital"

    const-string v2, "108"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    .line 426
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    sget-object v2, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortIdentifiedMorbiditiesByRiskFactor:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 433
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 434
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v7

    .line 435
    const-string v8, "diseaseName"

    if-nez v5, :cond_1

    .line 436
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 438
    :cond_1
    sget-object v9, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :goto_2
    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v6

    const-string v7, "R"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 445
    :cond_3
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "remainingDisease"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "remainingRedDisease"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v2, "age"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 453
    :goto_3
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ageFromECR"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 454
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v5, "dob"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    const-string v5, "childCurrentAge"

    const-string v6, "-"

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    .line 456
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    .line 458
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 459
    invoke-static {v8, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateAgeYearMonthDay(J)[I

    move-result-object v2

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v2, v3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget v2, v2, v8

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    sget-object v4, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 465
    invoke-static {v2, v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 466
    array-length v4, v2

    if-le v4, v7, :cond_7

    .line 467
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0xc

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v3, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 473
    :cond_8
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getIronFolicAcidTablet(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 475
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "ironFolicAcidTabletDosage"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_9
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getChloroquineTabletDosage(I)Ljava/lang/String;

    move-result-object v1

    .line 478
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "chloroquineDosage"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getPCMTabletDosage(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 482
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "pcmDosage"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_a
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getVitaminADosage(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 487
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "vitaminADosage"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_b
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageForDiarrhoeaWithoutDehydration(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 492
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v4, "orsnoDosage"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_c
    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDosageForDiarrhoeaWithDehydration(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    sget-object v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v3, "orssomeDosage"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private prepareHashTableForPNCHVMorbidity()V
    .locals 8

    .line 504
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatusForPNC:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "overallStatus"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->overAllStatusForPNC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "callHospital"

    const-string v2, "108"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryMorbidityDetailsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;

    if-eqz v4, :cond_1

    .line 511
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 512
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 514
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getIdentifiedMorbidities()Ljava/util/List;

    move-result-object v5

    .line 515
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/BeneficiaryMorbidityDetails;->getBeneficiaryType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "C"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->noOfChild:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 517
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->setMorbidityCode(Ljava/lang/String;)V

    .line 519
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 522
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 527
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 528
    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$5;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$5;-><init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 534
    sget-object v1, Lcom/argusoft/sewa/android/app/staticform/DisplayMorbiditiesFormUtil;->sortIdentifiedMorbiditiesByRiskFactor:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 537
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;

    .line 538
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getRiskFactorOfIdentifiedMorbidities()Ljava/lang/String;

    move-result-object v5

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 541
    :cond_4
    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/morbidities/beans/IdentifiedMorbidityDetails;->getMorbidityCode()Ljava/lang/String;

    move-result-object v4

    .line 542
    const-string v5, "diseaseName"

    if-nez v3, :cond_5

    .line 543
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 545
    :cond_5
    sget-object v6, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 549
    :cond_6
    sget-object v1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "remainingDisease"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "remainingRedDisease"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryWithRed:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 552
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "beneficiaryWithRed"

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->beneficiaryWithRed:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method private setTitle(Z)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->toolbar_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_0

    .line 103
    const-string v1, "Diagnosis"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->activity:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->ToolbarTitle:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setSubTitle(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 111
    sget p1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_menu_back:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    const/4 p1, 0x1

    .line 112
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 117
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setViewAsDiagnosticScreen()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->showProcessDialog()V

    .line 170
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->buildDiseasesExplanationScreen()V

    return-void
.end method

.method private setViewAsMorbidityScreen()V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->showProcessDialog()V

    .line 165
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->buildMorbidityScreen()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 123
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v1, "Are you sure to close the form?"

    const/16 v2, -0x97

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 124
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 132
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->myDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->setViewAsMorbidityScreen()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->initView()V

    .line 72
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->finish()V

    :cond_0
    return-void
.end method
